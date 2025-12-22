@extends('layouts.app')

@section('title','Create admin account')

@section('content')
    <div class="card text-slate-600">
        <div class="p-4 mb-md-3 mx-xl-4 px-md-5">
            <p class="text-base md:text-semibold mb-4">
                {{ 'These information will be used to create' }}
                <strong>{{ 'super admin credential' }}</strong>
                {{ 'for your admin panel.' }}
            </p>

            @if (isset($error) || session()->has('error'))
                <div class="mt-[20px] w-full p-3 bg-red-600 rounded-md shadow-md text-white">
                    {{ $error ?? session('error') }}
                </div>
            @elseif(session()->has('success'))
                <div class="mt-[20px] w-full p-3 bg-green-600 rounded-md shadow-md text-white">
                    {{ session('success') }}
                </div>
            @endif

            {{ csrf_token() }}

            <form method="POST" action="{{ route('install.system_settings') }}">
                @csrf
                <input type="hidden" name="role" value="admin">
                <div class="bg-slate-100 p-4 rounded-md mb-4 mt-10">
                    <div class="w-full flex flex-col md:flex-row flex-wrap">
                        <div class="w-full md:w-1/2 my-3">
                            <div class="w-full p-3 flex flex-col gap-1">
                                <label for="name">
                                    {{ 'Admin Name' }}
                                </label>
                                <input type="text" id="name" class="w-full rounded-md py-2 px-3 border-1 border-orange-400" name="name" required
                                    placeholder="Ex: John Doe">
                            </div>
                        </div>
                        <div class="w-full md:w-1/2 my-3">
                            <div class="w-full p-3 flex flex-col gap-1">
                                <label for="phone">
                                    {{ 'Admin Phone' }}
                                </label>

                                <div class="number-input-wrap">
                                    <input type="tel" id="phone" class="w-full rounded-md py-2 px-3 border-1 border-orange-400" name="phone" required
                                        placeholder="Ex: +8801892xxxxxx">
                                </div>
                            </div>
                        </div>
                        <div class="w-full md:w-1/2 my-3">
                            <div class="w-full p-3 flex flex-col gap-1">
                                <label for="email">
                                    {{ 'Admin Email' }}
                                </label>

                                <input type="email" id="email" class="w-full rounded-md py-2 px-3 border-1 border-orange-400" name="email" required
                                    placeholder="Ex: jhone@doe.com">
                            </div>
                        </div>

                        <div class="w-full md:w-1/2 my-3">
                            <div class="w-full p-3 flex flex-col gap1">
                                <label for="password">
                                    {{ 'Password (At least 6 characters)' }}
                                </label>
                                <div class="input-inner-end-ele position-relative">
                                    <input type="password" id="password"
                                        name="password" required class="w-full rounded-md py-2 px-3 border-1 border-orange-400" placeholder="Ex: 6+ character"
                                        minlength="6">
                                    <div class="togglePassword">
                                        <img alt="" class="svg eye" src="">
                                        <img alt="" class="svg eye-off" src="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <p class="text-base"><strong>[NB]: </strong> This email will be use to send verification code and other attachments in future </p>
                </div>

                <div class="w-full flex items-center justify-center mt-[30px]">
                    <button type="submit" class="bg-[#F85D24] p-3 rounded-md text-white w-full text-center cursor-pointer">
                        {{ 'Complete Installation' }}
                    </button>
                </div>
            </form>
        </div>
    </div>
@endsection
