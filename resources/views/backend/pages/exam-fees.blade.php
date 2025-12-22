@extends('backend.layouts.app')

@section('title', 'Exam Fee management')


@section('content')
    @include(backend('components.forms.exam-fee'))
    @include(backend('components.tables.exam-fees'))
@endsection
