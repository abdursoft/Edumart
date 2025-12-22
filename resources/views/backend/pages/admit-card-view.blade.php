@extends('layouts.download')

@section('title', $exam->name.' Admit card download')

@section('content')
    <x-admit-card
    :exam="$exam"
    :student="$student"
    :subjects="$subjects"
    />
@endsection
