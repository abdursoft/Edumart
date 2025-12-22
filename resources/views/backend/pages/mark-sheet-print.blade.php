@extends('layouts.download')

@section('title','Mark sheet download')

@section('content')
    <x-mark-sheet
    :exam="$exam"
    :student="$student"
    :marksheet="$marksheet"
    :subjects="$subjects"
    />
@endsection
