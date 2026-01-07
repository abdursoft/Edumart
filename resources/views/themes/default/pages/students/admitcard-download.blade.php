@extends('layouts.download')

@section('title', $exam->name.' Admit card download')

@section('content')
    <x-admit-card
    :exam="$exam"
    :student="$profile->student"
    :subjects="$exam->examSubject"
    />
@endsection
