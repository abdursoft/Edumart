@extends('backend.layouts.app')

@section('title', 'MarkSheet item management')


@section('content')
    @include(backend('components.forms.mark-sheet-item'))
    @include(backend('components.tables.mark-sheet-item'))

@endsection
