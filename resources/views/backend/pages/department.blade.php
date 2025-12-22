@extends('backend.layouts.app')

@section('title', 'Department management')


@section('content')
    @include(backend('components.forms.department'))
    @include(backend('components.tables.departments'))
@endsection
