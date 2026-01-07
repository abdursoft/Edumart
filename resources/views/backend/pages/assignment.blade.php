@extends('backend.layouts.app')

@section('title', 'Manage assignment')


@section('content')
    @include(backend('components.forms.assignment'))
    @include(backend('components.tables.assignment'))
@endsection
