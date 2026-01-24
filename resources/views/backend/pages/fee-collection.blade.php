@extends(backend('layouts.app'))

@section('title', 'Fee Collection')

@section('content')
    <div class="w-full flex items-start flex-col lg:flex-row gap-3">
        <div class="w-full lg:w-1/4">
            @include(backend('components.forms.fee-collection'))
        </div>
        <div class="w-full lg:w-3/4">
            <h2 class="text-lg md:text-xl font-bold border-b-1 border-gray-200">Fee Details</h2>
            <div class="student_details">
                <div class="flex items-center justify-center w-full h-full text-slate-400 text-xl font-bold min-h-[50vh]">Select an invoice to collect payment!</div>
            </div>
        </div>
    </div>
@endsection
