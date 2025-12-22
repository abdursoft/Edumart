@extends('backend.layouts.app')

@section('title', 'News and Notice management')


@section('content')
    @include(backend('components.forms.event'))
    @include(backend('components.tables.event'))

@endsection
