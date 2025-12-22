@extends('backend.layouts.app')

@section('title', 'Subject management')


@section('content')
    @include(backend('components.forms.subject'))
    @include(backend('components.tables.subject'))
@endsection
