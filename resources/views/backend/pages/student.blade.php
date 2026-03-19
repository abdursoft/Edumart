@extends('backend.layouts.app')

@section('title', 'Student management')


@section('content')
    <div class="flex items-center justify-end mb-2">
        <a href="{{route('admin.academic.people.students.new')}}" class="bg-teal-500 hover:bg-teal-700 text-white font-bold py-2 px-4 rounded">
            Add New Student
        </a>
    </div>
    @include(backend('components.tables.student'))
@endsection
