@extends('backend.layouts.app')

@section('title', 'News and Notice management')


@section('content')
    @include(backend('components.forms.news-notice'))
    @include(backend('components.tables.news-notice'))

@endsection
