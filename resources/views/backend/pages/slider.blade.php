@extends('backend.layouts.app')

@section('title', 'Slider management')


@section('content')
    @include(backend('components.forms.slider'))
    @include(backend('components.tables.slider'))
@endsection
