@extends('layouts.error')

@section('title', '429 Too Many Requests')

@section('code', '429')

@section('message', 'Too Many Requests')

@section('description')
    You have sent too many requests in a short time.
    Please wait a moment and try again.
@endsection
