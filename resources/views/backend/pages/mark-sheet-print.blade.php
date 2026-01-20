@extends('layouts.download')

@section('title','Mark sheet download')

@section('content')
    <x-mark-sheet
    :marksheet="$marksheet"
    />
@endsection
