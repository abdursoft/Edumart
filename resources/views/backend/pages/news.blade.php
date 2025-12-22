@extends('backend.layouts.app')

@section('title', 'News management')


@section('content')
    @include(backend('components.forms.news'))
    @include(backend('components.tables.news'))

@endsection
