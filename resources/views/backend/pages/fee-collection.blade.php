@extends(backend('layouts.app'))

@section('title', 'Fee Collection')

@section('content')
    @include(backend('components.forms.fee-collection'))
@endsection
