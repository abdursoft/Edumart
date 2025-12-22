@extends('backend.layouts.app')

@section('title', 'Exam Subject management')


@section('content')
    @include(backend('components.forms.exam-subject'))
    @include(backend('components.tables.exam-subject'))
@endsection
