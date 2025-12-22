@extends('backend.layouts.app')

@section('title', 'Committee management')


@section('content')
    @include(backend('components.forms.committee'))
    @include(backend('components.tables.committee'))
@endsection
