@extends(backend('layouts.app'))

@section('title', 'Admission Requests')

@section('content')
    @include(backend('components.modal.content-preview'));
    <div class="w-full flex items-start flex-col lg:flex-row gap-3">
        @include(backend('components.tables.admission'))
    </div>
@endsection
