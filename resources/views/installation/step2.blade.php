@extends('layouts.app')

@section('title','Purchase code verification')

@section('content')
    <div class="card text-slate-600">
        <div class="p-4 mb-md-3 mx-xl-4 px-md-5">
            <div class="flex justify-between mb-2">
                <h5 class="text-base md:text-xl">{{ "Product Purchase Information" }}</h5>
                <a href="https://help.market.envato.com/hc/en-us/articles/202822600-Where-Is-My-Purchase-Code-"
                   class="flex items-center gap-1" target="_blank">
                    {{ "HOW can I get this information ?" }}
                    <iconify-icon icon="cuida:info-outline" width="24" height="24"></iconify-icon>
                </a>
            </div>

            <p class="mb-4">
                Provide your product credentials from <strong/>evanto.abdursoft.com</strong>.
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

            <form method="POST" action="{{ route('install.purchase.code') }}" autocomplete="off">
                @csrf
                <div class="bg-slate-100 p-4 rounded-md mb-4 mt-5">
                    <div class="px-xl-2 pb-sm-3">
                        <div class="w-full flex flex-col md:flex-row flex-wrap">
                            <div class="w-full md:w-1/2 my-3 p-2">
                                <div class="flex flex-col gap-1 w-full">
                                    <label for="username" class="d-flex align-items-center gap-2 mb-2">
                                        <span class="fw-medium">{{ "Username" }}</span>
                                    </label>
                                    <input type="text" id="username" class="w-full rounded-md py-2 px-3 border-1 border-orange-400" name="username"
                                           placeholder="Ex: john doe" required>
                                </div>
                            </div>
                            <div class="w-full md:w-1/2 my-3 p-2">
                                <div class="flex flex-col gap-1 w-full">
                                    <label for="product_id" class="mb-2">{{ "Product ID" }}</label>
                                    <input type="text" id="product_id" class="w-full rounded-md py-2 px-3 border-1 border-orange-400" name="product_id"
                                           placeholder="Ex: pr_ksk392l39ds3" required>
                                </div>
                            </div>
                        </div>
                        <div class="w-full flex flex-col md:flex-row flex-wrap">
                            <div class="w-full my-1 p-2">
                                <div class="flex flex-col gap-1 w-full">
                                    <label for="purchase_key" class="mb-2">{{ "Purchase Code" }}</label>
                                    <input type="text" id="purchase_key" class="w-full rounded-md py-2 px-3 border-1 border-orange-400" name="purchase_code"
                                           placeholder="Ex: 13xxxxxx-cx3k-9x32-61c3-939339383932" required>
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
