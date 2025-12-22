<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Designation;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class CommitteeController extends Controller
{
    //show committee list
    public function index(){
        $committees = User::with('designation')->where('role','committee')->get();
        $committee  = null;
        $designations = Designation::all();
        $items = $designations->pluck('name','id')->toArray();
        return view(backend('pages.committee'), compact('committees','committee','designations'));
    }

    // Store a new committee
    public function store(Request $request)
    {
        $validate = $request->validate([
            'name'     => 'required|',
            'email' => 'nullable|email',
            'serial' => 'required|numeric',
            'password' => 'required|max:20',
            'login_permit' => 'required|in:allowed,blocked',
            'designation_id' => 'required|exists:designations,id',
        ]);


        User::create([
            'role' => 'committee',
            'name' => $validate['name'],
            'email' => $validate['email'],
            'serial' => $validate['serial'],
            'password' => Hash::make($validate['password']),
            'login_permit' => $validate['login_permit'],
            'designation_id' => $validate['designation_id']
        ]);
        return back()->with('success', 'Committee successfully created');
    }

    // Show a single committee
    public function show($id)
    {
        $committees = User::with('designation')->where('role','committee')->get();
        $committee  = User::with('designation')->findOrFail($id);
        $designations = Designation::all();
        return view(backend('pages.committee'), compact('committees','committee','designations'));

    }

    // Update a committee
    public function update(Request $request, $id)
    {
        $validate = $request->validate([
            'name'     => 'required|',
            'email' => 'nullable|email',
            'serial' => 'required|numeric',
            'password' => 'required',
            'login_permit' => 'required|in:allowed,blocked',
            'designation_id' => 'required|exists:designations,id',
        ]);

        $committee = User::where('role','committee')->find($id);
        $committee->update([
            'role' => 'committee',
            'name' => $validate['name'],
            'email' => $validate['email'],
            'serial' => $validate['serial'],
            'password' => (strlen($request->password) < 20) ? Hash::make($validate['password']) : $committee->password,
            'login_permit' => $validate['login_permit'],
            'designation_id' => $validate['designation_id']
        ]);
        return back()->with('success', 'Committee data successfully updated');
    }

    // Delete a committee
    public function destroy($id)
    {
        $committee = User::where('role','committee')->find($id);
        if(!$committee){
            return back()->withErrors(['error' => 'Committee ID couldn\'t found']);
        }
        $committee->delete();
        return back()->with('success', 'Committee successfully deleted');
    }
}
