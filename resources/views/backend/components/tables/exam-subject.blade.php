<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5">Exam Subjects</h2>
    <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
        <table id="examSubjectsTable" class="stripe hover w-full" style="width:100%; padding-top:1em; padding-bottom:1em;">
            <thead>
                <tr>
                    <th data-priority="1">ID</th>
                    <th data-priority="2">Exam</th>
                    <th data-priority="3">Subject</th>
                    <th data-priority="4">Room</th>
                    <th data-priority="5">Exam Date</th>
                    <th data-priority="6">Start Time</th>
                    <th data-priority="6">End Time</th>
                    <th data-priority="7">Marks (MCQ/Writing/Practical/Attendance)</th>
                    <th data-priority="8">Pass / Total</th>
                    <th data-priority="9" class="no-export">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($examSubjects as $examSubject)
                    <tr>
                        <td>{{ $examSubject->id }}</td>
                        <td>{{ $examSubject->exam->name ?? 'N/A' }} ({{ $examSubject->exam->eduClass->name ?? '' }})</td>
                        <td>{{ $examSubject->subject->name ?? 'N/A' }}</td>
                        <td>{{ $examSubject->classRoom->name ?? '-' }}</td>
                        <td>{{ $examSubject->exam_date->format('Y-m-d') }}</td>
                        <td>{{ date('H:i A', strtotime($examSubject->start_time)) ?? '-' }}</td>
                        <td>{{ date('H:i A', strtotime($examSubject->end_time)) ?? '-' }}</td>
                        <td>
                            {{ $examSubject->mcq_marks }}/{{ $examSubject->writing_marks }}/{{ $examSubject->practical_marks }}/{{ $examSubject->attendance_marks }}
                        </td>
                        <td>{{ $examSubject->pass_marks }}/{{ $examSubject->total_marks }}</td>
                        <td>
                            <div class="flex items-center gap-1">
                                <a href="{{ route('admin.academic.evaluation.exam_subject.edit',$examSubject->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                <a href="{{ route('admin.academic.evaluation.exam_subject.delete',$examSubject->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this exam-subject')">{!! icons('delete') !!}</a>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

@push('scripts')
    {{ loadDataTable('examSubjectsTable', 'Exam Subjects')}}
@endpush
