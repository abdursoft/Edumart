@extends('layouts.app')

@section('title','Congratulations, Your project is running.')

@section('content')
    <div class="w-full">
        <h4 class="text-base text-semibold md:text-xl text-green-500">Great job, {{session('admin')}}.</h4>
    </div>

    <div class="card my-5">
        <div class="w-full">
             @if (isset($error) || session()->has('error'))
                <div class="mt-[20px] w-full p-3 bg-red-600 rounded-md shadow-md text-white">
                    {{ $error ?? session('error') }}
                </div>
            @endif
            <div class="">
                <h3 class="text-base md:text-xl">Configure the following setting to run the system properly</h3>

                <ul class="px-4 mt-3 w-full flex items-center gap-2 flex-wrap justify-center">
                    <li class="rounded-md p-2 bg-slate-200 text-center mr-2">Business/Application Settings</li>
                    <li class="rounded-md p-2 bg-slate-200 text-center mr-2">MAIL Server Configuration</li>
                    <li class="rounded-md p-2 bg-slate-200 text-center mr-2">Payment Gateway Configuration</li>
                    <li class="rounded-md p-2 bg-slate-200 text-center mr-2">SMS Gateway Configuration</li>
                    <li class="rounded-md p-2 bg-slate-200 text-center mr-2">Video Player Configuration</li>
                </ul>
            </div>

            <div class="w-full mt-[50px] px-4 text-center">
                <a href="{{ config('app.url') }}" class="bg-[#F85D24] p-3 rounded-md text-white w-full text-center">
                    Go To HomePage
                </a>
            </div>
        </div>
    </div>
@endsection
