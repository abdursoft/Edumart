@extends('layouts.app')

@section('title','Enter database information')

@section('content')
    <div class="card text-slate-600">
        <div class="w-full relative md:px-3">
            <div class="flex items-center flex-col md:flex-row md:justify-between flex-wrap">
                <h5 class="text-base md:text-xl">{{ 'Update Database Information' }}</h5>
                <a href="https://youtu.be/xSS88E6oGEk" title="create a database and user in cpanel server" target="_blank">
                    {{ 'How can I get this information ?' }}
                </a>
            </div>

            @if (isset($error) || session()->has('error'))
                <div class="mt-[20px] w-full p-3 bg-red-600 rounded-md shadow-md text-white">
                    {{ $error ?? session('error') }}
                </div>
            @elseif(session()->has('success'))
                <div class="mt-[20px] w-full p-3 bg-green-600 rounded-md shadow-md text-white">
                    {{ session('success') }}
                </div>
            @endif

            <form method="POST" action="{{ route('install.install.db') }}" autocomplete="off">
                @csrf
                <div class="bg-slate-100 p-4 rounded-md mb-4 mt-5">
                    <div class="w-full flex flex-col md:flex-row flex-wrap">
                        <div class="w-full md:w-1/2 my-2">
                            <div class="w-full flex flex-col gap-1 p-3">
                                <label for="host" class="d-flex align-items-center gap-2 mb-2">
                                    {{ 'Database Host' }}
                                </label>
                                <input type="text" id="host" class="w-full rounded-md py-2 px-3 border-1 border-orange-400" name="host" required
                                    placeholder="Ex: localhost">
                            </div>
                        </div>
                        <div class="w-full md:w-1/2 my-2">
                            <div class="w-full flex flex-col gap-1 p-3">
                                <label for="database" class="d-flex align-items-center gap-2 mb-2">
                                    {{ 'Database Name' }}
                                </label>
                                <input type="text" id="database" class="w-full rounded-md py-2 px-3 border-1 border-orange-400" name="database" required
                                    placeholder="Ex: project-name-db">
                            </div>
                        </div>
                        <div class="w-full md:w-1/2 my-2">
                            <div class="w-full flex flex-col gap-1 p-3">
                                <label for="username" class="d-flex align-items-center gap-2 mb-2">
                                    {{ 'Database Username' }}
                                </label>
                                <input type="text" id="username" class="w-full rounded-md py-2 px-3 border-1 border-orange-400" name="username" required
                                    placeholder="Ex: root">
                            </div>
                        </div>
                        <div class="w-full md:w-1/2 my-2">
                            <div class="w-full flex flex-col gap-1 p-3">
                                <label for="password" class="d-flex align-items-center gap-2 mb-2">
                                    {{ 'Database Password' }}
                                </label>
                                <div class="input-inner-end-ele position-relative">
                                    <input type="password" id="password" min="8" class="w-full rounded-md py-2 px-3 border-1 border-orange-400"
                                        name="password" placeholder="Ex: password">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="text-center w-full">
                    <button type="submit" class="bg-[#F85D24] p-3 rounded-md text-white w-full text-center cursor-pointer">{{ "Continue" }}</button>
                </div>
            </form>
        </div>
    </div>
@endsection
