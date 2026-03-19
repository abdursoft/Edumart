@extends('layouts.error')

@section('title', '401 Unauthorized')

@section('code', '401')

@section('message', 'Unauthorized Access')

@section('description')
    You are not authorized to access this page.
    Please login with the correct credentials.
@endsection
