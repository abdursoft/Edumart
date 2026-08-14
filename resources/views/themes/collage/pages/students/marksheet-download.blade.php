@extends('layouts.download')

@section('title', $marksheet->exam->name.' Mark sheet download')

@section('content')
    <x-marksheet
    :marksheet="$marksheet"
    />
@endsection
