@extends('backend.layouts.app')

@section('title', 'Exam Result management')


@section('content')
    @include(backend('components.forms.result'))
    @include(backend('components.tables.result'))
@endsection
