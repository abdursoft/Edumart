@extends('backend.layouts.app')

@section('title', 'Admin Dashboard')


@section('content')
    <h2>Hello admin! {{app()->getLocale()}}</h2>
@endsection
