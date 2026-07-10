<!-- student stats view -->
@extends('guardian::components.layouts.master')
@section('title', 'Student Statistics')
@section('description', 'View detailed statistics and performance metrics for your student. Analyze their progress, attendance, and overall performance to stay informed and support their educational journey effectively.')
@section('keywords', 'Student Statistics, Performance Metrics, Attendance, Progress Analysis, Educational Support')
@section('author', 'EduCraft Team')

@section('content')
    <div class="w-full grid grid-cols-1 lg:grid-cols-2 gap-6 w-full px-6">
        <div>
            <h2 class="text-lg font-semibold border-gray-200 border-b-[0.5px]">Attendance statistics this month</h2>
            <table class="w-full text-left stripe hover" id="attendanceTable">
                <thead>
                    <tr class="text-gray-500 border-b">
                        <th>Date</th>
                        <th>Status</th>
                        <th>Note</th>
                        <th>Teacher</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($attendance as $record)
                        <tr>
                            <td class="py-2">{{ $record->attendance_date->format('d M Y') }}</td>
                            <td>{{ ucfirst($record->status) }}</td>
                            <td>{{ $record->remarks ?? 'N/A' }}</td>
                            <td>{{ $record->teacher->name ?? 'N/A' }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div>
            <h2 class="text-lg font-semibold border-gray-200 border-b-[0.5px]">Class exam statistics</h2>
            <div class="mt-3 w-full grid grid-cols-1 gap-4">
                @forelse ($results as $class)
                    <h3 class="text-md font-medium border-b-[.5px] border-gray-200">{{ $class->name ?? 'N/A' }}</h3>
                    @foreach($class->exam as $exam)
                        <div class="p-4 bg-white rounded-md shadow">
                            <h4 class="text-sm font-medium">{{ $exam->name ?? 'N/A' }}</h4>
                            <p class="text-sm text-gray-500">Marks Obtained: {{ $exam->marksheet->first()->marks_obtained ?? 'N/A' }} / {{ $exam->total_marks ?? 'N/A' }}</p>
                            <p class="text-sm text-gray-500">Grade: {{ $exam->marksheet->first()->grade ?? 'N/A' }}</p>
                        </div>
                    @endforeach
                @empty
                    <h2 class="text-gray-400 text-lg text-center">There are no results!</h2>
                @endforelse
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    {{loadDataTable('attendanceTable', $student->name.', Attendance statistics this month')}}
@endpush

@push('styles')
    {{ tableStyle() }}
@endpush