@extends('backend.layouts.app')

@section('title', 'Slider content management')

@section('content')
    @include(backend('components.forms.slider-content'))
    @include(backend('components.tables.slider-content'))
@endsection
