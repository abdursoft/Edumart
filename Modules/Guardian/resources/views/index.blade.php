@extends('guardian::components.layouts.master')
@section('title', 'Guardian Dashboard')
@section('description', 'Welcome to the Guardian Dashboard, where you can manage your profile, view the latest news, and
    stay updated with important announcements. Explore your dashboard to access all the features and resources available to
    you as a guardian.')
@section('keywords', 'Guardian Dashboard, Profile Management, Latest News, Announcements, Guardian Resources')
@section('author', 'EduMart Team')

@section('content')
    <div class="w-full flex items-center justify-center">
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 w-full px-6">

            <!-- Class Schedule -->
            <div class="lg:col-span-2 bg-white rounded-xl shadow p-6">
                <h3 class="text-xl font-semibold mb-4">Your childrens</h3>
                <table class="w-full text-left stripe hover" id="childrenTable">
                    <thead>
                        <tr class="text-gray-500 border-b">
                            <th>Name</th>
                            <th>Class</th>
                            <th>Role</th>
                            <th>Attendance</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($profile->children ?? [] as $student)
                            <tr>
                                <td class="py-2">{{ $student->name }}</td>
                                <td>{{ $student->eduClass->name }}</td>
                                <td>{{ $student->class_roll }}</td>
                                <td>{{ studentMonthlyAttendance($student->student_id, now()->month, now()->year) }}</td>
                                <td>
                                    <a href="{{ route('guardian.student.stats', $student->id) }}"
                                            class="bg-orange-400 text-sm text-white rounded-md shadow-md py-1 px-2">Statistics</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    {{loadDataTable('childrenTable', $profile?->profile->first_name.' '.$profile?->profile->last_name.', Children list')}}
@endpush

@push('styles')
    {{ tableStyle() }}
@endpush