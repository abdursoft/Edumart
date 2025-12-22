@extends('backend.layouts.app')

@section('title', 'Institute Information')


@section('content')
    @include(backend('components.forms.site-info'))
    {{-- @include(backend('components.tables.site-info')) --}}
@endsection
