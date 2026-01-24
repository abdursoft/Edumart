@extends(backend('layouts.app'))

@section('title', 'Student due')

@section('content')
    @include(backend('components.forms.student-due'))
    @include(backend('components.tables.student-due'))
@endsection

