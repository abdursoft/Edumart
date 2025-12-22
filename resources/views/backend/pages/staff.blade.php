@extends('backend.layouts.app')

@section('title', 'Staff management')


@section('content')
    @include(backend('components.forms.staff'))
    @include(backend('components.tables.staff'))
@endsection
