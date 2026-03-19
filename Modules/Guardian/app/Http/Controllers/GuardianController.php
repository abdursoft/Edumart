<?php

namespace Modules\Guardian\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\StudentProfile;
use Illuminate\Http\Request;

class GuardianController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $profile = $this->profile;
        return view('guardian::index', compact('profile'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('guardian::create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request) {}

    /**
     * Show the specified resource.
     */
    public function show($id)
    {
        return view('guardian::show');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        return view('guardian::edit');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id) {}

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id) {}

    /**
     * Display the specified student's stats.
     */
    public function stats($id = null)
    {
        // Fetch student stats based on $id 
        $profile = $this->profile;
        $student = StudentProfile::find($id);
        $attendance = $student->user->attendance()->whereMonth('attendance_date', now()->month)->whereYear('attendance_date', now()->year)->latest()->get();
        $results = $student->eduClass()->with(['exam.marksheet' => function ($query) use ($student) {
            $query->where('student_id', $student->id)->latest()->first();
        }])->get();
        return view('guardian::stats', compact('profile', 'student', 'attendance', 'results'));
    }
}
