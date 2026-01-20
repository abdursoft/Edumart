@extends('backend.layouts.app')

@section('title', 'Parent management')

@section('content')
    <div class="w-full flex items-start flex-col lg:flex-row gap-3">
        <div class="w-full lg:w-1/4">
            @include(backend('components.forms.parent'))
        </div>
        <div class="w-full lg:w-3/4">
            @include(backend('components.tables.parent'))
        </div>
    </div>
@endsection
