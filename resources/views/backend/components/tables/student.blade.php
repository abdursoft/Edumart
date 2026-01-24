@section('styles')
	{{tableStyle()}}
@endSection

<!--Container-->
<div class="w-full text-slate-800">
    <x-fieldset title="Student list">
        <!--Card-->
            <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
            <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
                <thead>
                    <tr>
                        <th data-priority="1">ID</th>
                        <th data-priority="2">Student</th>
                        <th data-priority="4">Class</th>
                        <th data-priority="4">Section</th>
                        <th data-priority="4">Group</th>
                        <th data-priority="2">Age</th>
                        <th data-priority="4">Parent</th>
                        <th data-priority="3">Reg. Number</th>
                        <th data-priority="4">Permit</th>
                        <th data-priority="6" class="no-export">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($students as $key=>$student)
                        <tr>
                            <td>{{$student->id}}</td>
                            <td>{{$student->name}}</td>
                            <td>{{$student->eduClass->name ?? ''}}</td>
                            <td>{{$student->eduSection->name ?? ''}}</td>
                            <td>{{$student->eduGroup->name ?? ''}}</td>
                            <td>{{$student->age}}</td>
                            <td>{{$student->parent->name ?? 'N/A'}}</td>
                            <td>{{$student->reg_number}}</td>
                            <td>{{ucfirst($student?->user?->login_permit)}}</td>
                            <td>
                                <div class="flex items-center gap-1">
                                    <a href="{{ route('admin.academic.people.students.edit',$student->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                    <a href="{{ route('admin.academic.people.students.delete',$student->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this student')">{!! icons('delete') !!}</a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!--/Card-->
    </x-fieldset>
</div>
<!--/container-->


@section('scripts')
	<!--Datatables -->
	{{ tableScript() }}
	{{ loadDataTable('example')}}
@endsection
