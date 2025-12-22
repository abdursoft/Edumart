@extends('backend.layouts.app')

@section('title', 'Class Promotion')


@section('content')
    @include(backend('components.forms.class-promotion'))
    @include(backend('components.tables.class-promotion'))
@endsection
