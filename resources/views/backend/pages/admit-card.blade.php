@extends('backend.layouts.app')

@section('title', 'Admit Card management')


@section('content')
    @include(backend('components.forms.admit-card'))
    @include(backend('components.tables.admit-card'))
@endsection
