@extends('backend.layouts.app')

@section('title', 'MarkSheet management')


@section('content')
    @include(backend('components.forms.mark-sheet'))
    @include(backend('components.tables.mark-sheet'))

@endsection
