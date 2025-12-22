@extends('backend.layouts.app')

@section('title', 'Manage page')


@section('content')
    @include(backend('components.tables.page-manage'))
@endsection
