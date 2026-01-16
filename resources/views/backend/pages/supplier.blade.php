@extends(backend('layouts.app'))

@section('title','Manage supplier')


@section('content')
    @include(backend('components.forms.supplier'))
    @include(backend('components.tables.supplier'))
@endsection
