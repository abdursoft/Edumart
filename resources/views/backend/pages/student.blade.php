@extends('backend.layouts.app')

@section('title', 'Student management')


@section('content')
    @include(backend('components.forms.student'))
    @include(backend('components.tables.student'))
@endsection
