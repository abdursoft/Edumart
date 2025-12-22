@extends('backend.layouts.app')

@section('title', 'Routine management')


@section('content')
    @include(backend('components.forms.routine'))
    @include(backend('components.tables.routine'))
@endsection
