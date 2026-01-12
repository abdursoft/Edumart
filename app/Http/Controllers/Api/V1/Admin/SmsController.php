<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Constants\SmsConfig;
use App\Http\Controllers\Controller;
use App\Models\SmsActiveMethod;
use App\Models\SmsMethod;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SmsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $sms = null;
        $default = SmsActiveMethod::find(1);
        $methods = SmsMethod::pluck('name','id')->toArray();
        $smsMethods = SmsMethod::get();
        return view(backend('pages.sms'), compact('methods', 'smsMethods', 'default'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = Validator::make($request->all(),[
            'name' => 'required|string|max:90',
            'keyword' => "required|string|max:90",
            'attributes' => 'nullable|array',
        ]);


        if($validated->fails()){
            return response()->json([
                'code' => 'INVALID_DATA',
                'message' => 'Sms method couldn\'t create',
                'errors' => $validated->errors()
            ],400);
        }

        $condition = [];

        if($request->id){
            $condition = ['id' => $request->id];
        }else{
            $condition = ['keyword' => $request->keyword];
        }
        $method = SmsMethod::where('keyword',$request->keyword)->first();
        $modArray = [];
        foreach($method?->attributes ?? [] as $attribute){
            foreach($attribute as $reqKey => $reqAttr){
                if(isset($request->input('attributes')[$reqAttr])){
                    $attribute['value'] = $request->input('attributes')[$reqAttr];
                    $modArray[] = $attribute;
                }
            }
        }
        $method->attributes = $modArray;
        $method->save();
        return back()->with('success','SMS Method updated successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show($id= null)
    {
        if($id === null){
            $smsMethod = SmsMethod::all();
        }else{
            $smsMethod = SmsMethod::find($id);
        }

        return response()->json([
            'code' => 'SMS_METHOD_RETRIEVED',
            'message' => 'Sms method successfully retrieved',
            'smsMethod' => $smsMethod,
        ],200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, SmsMethod $smsMethod)
    {
        $validated = Validator::make($request->all(),[
            'name' => 'required|string|max:90',
            'keyword' => 'required|string|max:90',
            'attributes' => 'nullable|array',
        ]);


        if($validated->fails()){
            return response()->json([
                'code' => 'INVALID_DATA',
                'message' => 'Sms method couldn\'t create',
                'errors' => $validated->errors()
            ],400);
        }

        try {
            $smsMethod->update($validated->validate());
        } catch (\Throwable $th) {
            return response()->json([
                'code' => 'SERVER_ERROR',
                'message' => 'Internal server error',
                'error' => $th->getMessage()
            ],500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        try {
            SmsMethod::find($id)->delete();
            return response([
                'code' => 'SMS_METHOD_DELETED',
                'message' => 'Sms method successfully deleted'
            ],200);
        } catch (\Throwable $th) {
            return response()->json([
                'code' => 'SERVER_ERROR',
                'message' => 'Internal server error'
            ],500);
        }
    }


    /**
     * Set active sms
     */
    public function activeSMS(Request $request){
        $validated = $request->validate([
            'sms_method_id' => 'required|exists:sms_methods,id',
        ]);

        try {
            $validated['sms_type'] = $request->sms_method_id == '1' ? 'email' : 'sms';
            SmsActiveMethod::updateOrCreate([
                "id" => 1
            ],$validated);
            return back()->with('success', 'SMS default gateway updated successfully');
        } catch (\Throwable $th) {
            return back()->with('error', 'Something went wrong!');
        }
    }

    /**
     * Get active sms methods
     */
    public function getActiveSMS(){
        return response()->json([
                'code' => 'SMS_ACTIVE_METHOD_RETRIEVED',
                'message' => 'SMS active method successfully retrieved',
                'method' => SmsActiveMethod::find(1)
            ],200);
    }

    /**
     * Get SMS Methods
     */
    public function smsMethods(){
        return response()->json([
            "methods" => SmsConfig::$smsMethods
        ],200);
    }
}
