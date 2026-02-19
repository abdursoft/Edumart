@extends('backend.layouts.app')

@section('title', 'Manage student attendance')


@section('content')
    @include(backend('components.tables.attendance-student'))
@endsection
