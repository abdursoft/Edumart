@extends(theme('layouts.teacher'))

@section('title', 'Teacher Dashboard')

@section('content')

    <div class="min-h-screen bg-gray-100 p-6">

        <!-- see your subject list -->
        <div class="bg-white rounded-xl shadow p-4">
            <h3 class="text-xl font-semibold mb-4">Your subject list</h3>
            <table class="w-full text-left stripe hover" id="subjectLIST">
                <thead>
                    <tr class="text-gray-500 border-b">
                        <th class="py-2">Class</th>
                        <th>Subject</th>
                        <th>Code</th>
                        <th>Type</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($profile->subject as $subject)
                        <tr>
                            <td class="py-2">{{ $subject->eduClass->name }}</td>
                            <td>{{ $subject->name }}</td>
                            <td>{{ $subject->code }}</td>
                            <td>{{ ucfirst($subject->type) }}</td>
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

            var table = $('#subjectLIST').DataTable({
                    responsive: true
                })
                .columns.adjust()
                .responsive.recalc();
        });
    </script>
@endsection
