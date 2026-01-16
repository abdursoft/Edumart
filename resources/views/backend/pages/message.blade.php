@extends('backend.layouts.app')

@section('title', 'Staff management')


@section('content')
    @include(backend('components.forms.default-sms-gateway'), ['methods' => $methods, 'default' => $default])
    @include(backend('components.forms.message'))
@endsection
