@extends(theme('layouts.teacher'))

@section('title', 'Teacher Dashboard')

@section('content')

    <div class="min-h-screen bg-gray-100 p-6">

        <!-- see your assignment list -->
        <div class="bg-white rounded-xl shadow p-4">
            <div class="w-full flex items-center justify-between mb-4">
                <h3 class="text-xl font-semibold mb-4">Your assignment list</h3>
                <a href="{{route('teacher.assignments.new')}}" class="p-2 rounded-md bg-green-500 hover:bg-green-700 text-white shadow-md">New Assignment</a>
            </div>
            <table id="assignmentList" class="w-full stripe hover">
                <thead>
                    <tr class="text-gray-500 border-b">
                        <th class="py-2">Title</th>
                        <th>Class</th>
                        <th>Due Date</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($profile->assignments as $assignment)
                        <tr>
                            <td class="py-2">{{$assignment->title}}</td>
                            <td>{{$assignment->eduClass->name}}</td>
                            <td>{{date('d M, y', strtotime($assignment->assigned_date))}}</td>
                            <td class="text-green-600 font-medium">{{$assignment->status == 'pending' ? "Ongoing" : 'Completed'}}</td>
                            <td>
                                <div class="flex items-center gap-3">
                                    <a href="{{route('teacher.assignments.new', $assignment->id)}}" class="p-2 text-sm rounded-md shadow-md bg-green-500 hover:bg-green-700 text-white">Edit</a>
                                    <a href="" class="p-2 text-sm rounded-md shadow-md bg-red-500 hover:bg-red-700 text-white">Delete</a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection


@section('styles')
    {{ tableStyle() }}
@endsection

@section('scripts')
    <!--Datatables -->
    {{ tableScript() }}
    <script>
        $(document).ready(function() {

            var table = $('#assignmentList').DataTable({
                    responsive: true
                })
                .columns.adjust()
                .responsive.recalc();
        });
    </script>
@endsection
