@extends('backend.layouts.app')

@section('title', 'Teachers management')


@section('content')
    @include(backend('components.forms.teachers'))
    @include(backend('components.tables.teachers'))
@endsection
