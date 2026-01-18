@extends(backend('layouts.app'))
@section('title', 'Leave Management')

@section('content')
    @include(backend('components.forms.leave'))
    @include(backend('components.tables.leave'))
@endsection
