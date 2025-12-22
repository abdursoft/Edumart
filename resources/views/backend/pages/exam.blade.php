@extends('backend.layouts.app')

@section('title', 'Exam management')


@section('content')
    @include(backend('components.forms.exam'))
    @include(backend('components.tables.exam'))
@endsection
