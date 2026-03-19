@extends('backend.layouts.app')

@section('title', 'Student management')


@section('content')
    @include(backend('components.forms.student'))
@endsection
