@extends('backend.layouts.app')

@section('title', 'Class management')


@section('content')
    @include(backend('components.forms.class'))
    @include(backend('components.tables.class'))
@endsection
