@extends('backend.layouts.app')

@section('title', 'Parent management')


@section('content')
    @include(backend('components.forms.parent'))
    @include(backend('components.tables.parent'))
@endsection
