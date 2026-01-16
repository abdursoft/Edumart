@extends(backend('layouts.app'))

@section('title', 'Assets management')

@section('content')
    @include(backend('components.forms.asset'))
    @include(backend('components.tables.asset'))
@endsection
