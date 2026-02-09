@extends(backend('layouts.app'))

@section('title', 'Student Details')

@section('content')
<div class="max-w-7xl mx-auto p-6 space-y-8">

    {{-- ================= Student Information ================= --}}
    <div class="bg-white shadow rounded-lg p-6">
        <h2 class="text-xl font-semibold border-b border-gray-200 pb-2 mb-4">Student Information</h2>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-4 text-sm">
            <x-info label="Admission Token" :value="$student->token" />

            <x-info label="Name (Bangla)" :value="$student->name_bangla" />
            <x-info label="Name (English)" :value="$student->name_english" />
            <x-info label="Gender" :value="ucfirst($student->gender)" />
            <x-info label="Birth Certificate No" :value="$student->birth_certificate_number" />

            <x-info label="Birth Date" :value="$student->birth_date" />
            <x-info label="Status" :value="ucfirst($student->status)" />
            <x-info label="Payment Status" :value="$student->is_paid ? 'Paid' : 'Unpaid'" />
        </div>
    </div>

    {{-- ================= Father Information ================= --}}
    <div class="bg-white shadow rounded-lg p-6">
        <h2 class="text-xl font-semibold border-b border-gray-200 pb-2 mb-4">Father Information</h2>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-4 text-sm">
            <x-info label="Name (Bangla)" :value="$student->father_bangla" />
            <x-info label="Name (English)" :value="$student->father_english" />
            <x-info label="NID" :value="$student->father_nid" />

            <x-info label="Birth Date" :value="$student->father_birth_date" />
            <x-info label="Mobile" :value="$student->father_mobile" />
        </div>
    </div>

    {{-- ================= Mother Information ================= --}}
    <div class="bg-white shadow rounded-lg p-6">
        <h2 class="text-xl font-semibold border-b border-gray-200 pb-2 mb-4">Mother Information</h2>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-4 text-sm">
            <x-info label="Name (Bangla)" :value="$student->mother_bangla" />
            <x-info label="Name (English)" :value="$student->mother_english" />
            <x-info label="NID" :value="$student->mother_nid" />

            <x-info label="Birth Date" :value="$student->mother_birth_date" />
            <x-info label="Mobile" :value="$student->mother_mobile" />
        </div>
    </div>

    {{-- ================= Address ================= --}}
    <div class="bg-white shadow rounded-lg p-6">
        <h2 class="text-xl font-semibold border-b border-gray-200 pb-2 mb-4">Address</h2>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-4 text-sm">
            <x-info label="Permanent Address"
                :value="$student->permanent_address" />

            <x-info label="Current Address"
                :value="$student->current_address" />
        </div>
    </div>

    {{-- ================= Previous Education ================= --}}
    <div class="bg-white shadow rounded-lg p-6">
        <h2 class="text-xl font-semibold border-b border-gray-200 pb-2 mb-4">Previous Education</h2>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-4 text-sm">
            <x-info label="Institute" :value="$student->previous_institute" />
            <x-info label="Board" :value="$student->previous_board" />
            <x-info label="Passing Year" :value="$student->previous_passing_year" />

            <x-info label="Exam" :value="$student->previous_exam" />
            <x-info label="Roll" :value="$student->previous_roll" />
            <x-info label="Result" :value="$student->previous_result" />
        </div>
    </div>

    {{-- ================= Guardian ================= --}}
    <div class="bg-white shadow rounded-lg p-6">
        <h2 class="text-xl font-semibold border-b border-gray-200 pb-2 mb-4">Guardian Information</h2>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-4 text-sm">
            <x-info label="Relation" :value="$student->guardian_relation" />
            <x-info label="Name (Bangla)" :value="$student->guardian_bangla" />
            <x-info label="Name (English)" :value="$student->guardian_english" />

            <x-info label="Mobile" :value="$student->guardian_mobile" />
            <x-info label="NID" :value="$student->guardian_nid" />
            <x-info label="Birth Date" :value="$student->guardian_birth_date" />
        </div>
    </div>

    {{-- ================= Documents ================= --}}
    <div class="bg-white shadow rounded-lg p-6">
        <h2 class="text-xl font-semibold border-b border-gray-200 pb-2 mb-4">Documents</h2>

        <div class="flex flex-col md:flex-row justify-between items-center gap-6 text-sm">
            @if($student->photo)
                <div>
                    <p class="font-medium mb-1">Photo</p>
                    <img src="{{ asset($student->photo) }}"
                         class="h-32 w-32 rounded border object-cover">
                </div>
            @endif

            @if($student->documents)
                <div>
                    <p class="font-medium mb-1">Documents</p>
                    <a href="{{ asset('storage/'.$student->documents) }}"
                        target="_blank"
                        class="block text-blue-600 hover:underline">
                        View Document
                    </a>
                </div>
            @endif
            <div class="div">
                <div class="flex items-center gap-1">
                    <a data-title="Approve" href="{{ route('admin.admission.request.action',['id' => $student->id,'type' => 'approve'])}}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('approve') !!}</a>
                    <a data-title="Reject" href="{{ route('admin.admission.request.action',['id' => $student->id,'type' => 'reject']) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm(`Are you sure you want to delete this application`)">{!! icons('reject') !!}</a>
                </div>
            </div>
        </div>
    </div>

</div>
@endsection
