@extends(backend('layouts.app'))

@section('title', 'Staff attendance')

@section('content')
    @include(backend('components.forms.attendance'))
@endsection
