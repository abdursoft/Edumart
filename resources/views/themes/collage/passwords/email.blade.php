@extends(theme('layouts.auth'))
@section('title', __('Send Password Reset Link'))

@section('content')
    <div class="min-h-screen w-full flex items-center justify-center">
        <div class="w-full shadow-md rounded-lg">

            <div class="w-full bg-white dark:bg-gray-900 rounded-lg shadow-md">
                <div class="text-center">
                    <h2 class="text-lg font-semibold pt-3">{{ site('site_name') ?? 'EduCraft' }}</h2>
                </div>
                <div class="w-full px-2">
                    <div class="relative sm:py-5">
                        <div class="absolute inset-0 flex items-center">
                            <div class="w-full border-t border-gray-300 dark:border-yellow-700"></div>
                        </div>
                        <div class="relative flex justify-center text-sm">
                            <span
                                class="p-2 text-gray-400 bg-white dark:bg-gray-900 sm:px-5 sm:py-2">{{ __('Reset Password') }}</span>
                        </div>
                    </div>
                </div>

                <div class="px-6 py-3">

                    @if (session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif

                    @if (session('error'))
                        <div class="alert alert-danger">
                            {{ session('error') }}
                        </div>
                    @endif

                    <form method="POST" action="{{ route('password.email') }}">
                        @csrf

                        <div class="mb-4">
                            <label for="email" class="block mb-1 text-sm font-medium text-gray-700">
                                {{ __('Email Address') }}
                            </label>

                            <input id="email" type="email" name="email" value="{{ old('email') }}" required autofocus
                                autocomplete="email" placeholder="jhon@gmail.com"
                                class="w-full px-3 py-2 border rounded-lg shadow-sm focus:outline-none focus:ring focus:ring-teall-200 @error('email') border-red-500 @enderror">

                            @error('email')
                                <p class="mt-1 text-sm text-red-600">
                                    {{ $message }}
                                </p>
                            @enderror
                        </div>

                        <div>
                            <button type="submit"
                                class="w-full px-4 py-2 text-white bg-teal-600 rounded-lg hover:bg-teal-700 transition">
                                {{ __('Send Password Reset Link') }}
                            </button>
                        </div>

                        <div class="mt-5 flex items-center justify-center gap-2 w-full">
                            <p class="text-sm font-normal text-center text-gray-700 dark:text-gray-400 sm:text-start">
                                Already have an account?
                                <a href="{{ route('login') }}" class="text-teal-500 hover:text-teal-600 dark:text-teal-400">Sign
                                    In</a>
                            </p>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection