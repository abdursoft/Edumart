<!--Student attendance-->
<div class="w-full text-slate-800">
    <x-fieldset title="Student attendance list">
        <!--Card-->
        @foreach ($attendances as $key => $attendance)
            <h2 class="text-base md:text-xl font-semibold mt-5">{{date('d M, Y', strtotime($key))}}</h2>
            <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
                <table id="{{md5($key)}}" class="stripe hover w-full"
                    style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
                    <thead>
                        <tr>
                            <th data-priority="1">Name</th>
                            <th data-priority="2">Class</th>
                            <th data-priority="2">Roll</th>
                            <th data-priority="2">Subject</th>
                            <th data-priority="4">Teacher</th>
                            <th data-priority="5">Status</th>
                            <th data-priority="4">Date</th>
                            <th data-priority="5" class="no-export">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($attendance as $item)
                        <tr>
                            <td>{{$item->student?->name}}</td>
                            <td>{{$item->eduClass?->name}}</td>
                            <td>{{$item->student?->class_roll}}</td>
                            <td>{{$item->subject?->name}}</td>
                            <td>{{$item->teacher?->name}}</td>
                            <td>{{$item->status}}</td>
                            <td>{{ date('d M l, Y', strtotime($item->attendance_date)) }}</td>
                            <td>
                                <div class="flex items-center gap-1">
                                    <a href="{{ route('admin.academic.activities.attendance.manage',['present', $item->id]) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition @if($item->status == 'Present') hidden @endif">Present</a>
                                    <a href="{{ route('admin.academic.activities.attendance.manage',['absent', $item->id]) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-teal-600 text-gray-600 hover:text-white transition @if($item->status != 'Present') hidden @endif">Absent</a>
                                    <a href="{{ route('admin.academic.activities.attendance.delete',$item->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this attendance')">Delete</a>
                                </div>
                            </td>
                        </tr>
                        @empty

                        @endforelse

                    </tbody>
                </table>
            </div>
            @push('scripts')
                {{ loadDataTable(md5($key), 'Student attendance list')}}
            @endpush
        @endforeach
        <!--/Card-->
    </x-fieldset>
</div>
<!--/container-->
