@extends('backend.layouts.app')

@section('title', 'Room management')


@section('content')
    @include(backend('components.forms.room'))
    @include(backend('components.tables.room'))
@endsection
