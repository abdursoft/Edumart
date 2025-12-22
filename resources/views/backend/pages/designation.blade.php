@extends('backend.layouts.app')

@section('title', 'Designation management')


@section('content')
    @include(backend('components.forms.designation'))
    @include(backend('components.tables.designation'))
@endsection
