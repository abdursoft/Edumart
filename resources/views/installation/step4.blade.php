@extends('layouts.app')

@section('title','Database Installation')

@section('content')
    <div class="card text-slate-600">
        <div class="p-4 mb-md-3 mx-xl-4 px-md-5">
            <div class="d-flex align-items-center column-gap-3 flex-wrap">
                <h5 class="text-base md:text-xl">{{ "Your Database has been connected !" }}</h5>
            </div>
            <p class="mb-3 text-green-500 text-semibold">
                {{ "Just click on the button to automatically migrate tables in your database" }}
            </p>

            @if(session('error'))
                <div class="text-center  mt-[150px]">
                    <h1 class="mb-5 font-semibold text-red-500">Your database isn't empty, would you want to wipe database?</h1>
                    <a href="{{ route('install.force-import-sql') }}" class="bg-[#F85D24] p-3 rounded-md text-white w-full text-center mt-5">
                        {{ "Yes, Wipe & Import Database" }}
                    </a>
                </div>
            @else
                <div class="text-center mt-[150px]">
                    <a href="{{ route('install.import_sql') }}" class="bg-[#155A92] p-3 rounded-md text-white w-full text-center">
                        {{ "Import Database" }}
                    </a>
                </div>
            @endif

        </div>
    </div>
@endsection
