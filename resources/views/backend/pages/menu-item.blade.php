@extends('backend.layouts.app')

@section('title', 'Menu items management')

@section('styles')
<link rel="stylesheet" href="{{asset('ui/nested.css')}}">
@endsection

@section('content')
    @include(backend('components.forms.menu-item'))
    @include(backend('components.tables.menu-item'))

@endsection
