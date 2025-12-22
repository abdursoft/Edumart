@extends('layouts.app')

@section('title','Welcome to eduCraft installation wizard')

@section('content')
    <div class="card text-slate-600">
        <div class="p-4 my-md-3 mx-xl-4 px-md-5">
            <p class="text-justify text-semibold mb-4">
                {{ "Before starting the installation process, please collect the below
                information. Without this information, you won’t be able to complete the installation process..." }}
            </p>

            <div class="bg-slate-100 p-4 rounded-md mb-4">
                <div class="flex justify-between gap-1 items-center flex-wrap mb-4">
                    <h6 class="text-bold capitalize text-base md:text-xl">
                        {{ "Required Database Information" }}

                    </h6>
                    <a href="https://youtu.be/xSS88E6oGEk"
                       target="_blank">{{ "Where to get this information ?" }}</a>
                </div>

                <div class="px-md-4 pb-sm-3">
                    <div class="w-full flex flex-wrap flex-col md:flex-row">
                        <div class="w-1/2 my-3">
                            <div class="flex gap-2 items-center flex-wrap">
                                <iconify-icon icon="eos-icons:database-migration" width="24" height="24"></iconify-icon>
                                <div class="text-base md:text-xl md:text-semibold">{{ "Database Name" }}</div>
                            </div>
                        </div>
                        <div class="w-1/2 my-3">
                            <div class="flex gap-2 items-center flex-wrap">
                                <iconify-icon icon="mdi:database-lock-outline" width="24" height="24"></iconify-icon>
                                <div class="text-base md:text-xl md:text-semibold">{{ "Database Password" }}</div>
                            </div>
                        </div>
                        <div class="w-1/2 my-3">
                            <div class="flex gap-2 items-center flex-wrap">
                                <iconify-icon icon="fluent:database-person-24-regular" width="24" height="24"></iconify-icon>
                                <div class="text-base md:text-xl md:text-semibold">{{ "Database Username" }}</div>
                            </div>
                        </div>
                        <div class="w-1/2 my-3">
                            <div class="flex gap-2 items-center flex-wrap">
                                <iconify-icon icon="jam:database" width="24" height="24"></iconify-icon>
                                <div class="text-base md:text-xl md:text-semibold">{{ "Database Host Name" }}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="text-center flex flex-col gap-3">
                <p>{{ "Are you ready to start installation process ?" }}</p>
                <a href="{{ route('install.step1') }}" class="bg-[#F85D24] p-3 rounded-md text-white">
                    {{ "Get Started" }}
                </a>
            </div>
        </div>
    </div>
@endsection
