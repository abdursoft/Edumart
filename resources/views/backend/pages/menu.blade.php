@extends('backend.layouts.app')

@section('title', 'Menu management')


@section('content')
    @include(backend('components.forms.menu'))
    @include(backend('components.tables.menu'))

@endsection
