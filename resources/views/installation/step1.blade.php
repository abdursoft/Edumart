@extends('layouts.app')

@section('title','Checking system requirements and permission')

@section('content')
    <div class="card text-slate-600">
        <div class="p-4 mb-md-3 mx-xl-4 px-md-5">

            <div class="d-flex align-items-center column-gap-3 flex-wrap mb-4">
                <h5 class="fw-normal">{{ 'Files & Server Permissions' }}</h5>
            </div>

            <div class="bg-slate-100 rounded-md p-2 mb-3">
                <h6 class="fw-bold text-uppercase fs m-0 letter-spacing  mb-4 pb-sm-3 --fs-14px">
                    {{ 'Required Server Information' }}
                </h6>

                <div class="px-xl-2 pb-sm-3">
                    <div class="flex flex-col md:flex-row w-full flex-wrap">
                        <div class="w-full md:w-1/2 my-3">
                            <div class="flex gap-2 items-center text-base md:text-xl">
                                <iconify-icon icon="simple-icons:php" width="34" height="34"></iconify-icon>
                                <div class="flex items-center gap-2 justify-between flex-grow-1">
                                    {{ 'PHP Version 8.1 +' }}
                                    @php($phpVersion = number_format((float) phpversion(), 2, '.', ''))
                                    @if ($phpVersion >= 8.1)
                                        <iconify-icon icon="ix:success" width="24" height="24"
                                            class="text-green-500"></iconify-icon>
                                    @else
                                        <iconify-icon icon="codicon:error" width="24" height="24"
                                            class="text-red-600"></iconify-icon>
                                    @endif

                                </div>
                            </div>
                        </div>
                        <div class="w-full md:w-1/2 my-3">
                            <div class="flex gap-2 items-center text-base md:text-xl">
                                <iconify-icon icon="ph:git-pull-request-thin" width="25" height="25"></iconify-icon>
                                <div class="flex items-center gap-2 justify-between flex-grow-1">
                                    {{ 'Curl Enabled' }}
                                    @if ($permission['curl_enabled'])
                                        <iconify-icon icon="ix:success" width="24" height="24"
                                            class="text-green-500"></iconify-icon>
                                    @else
                                        <iconify-icon icon="codicon:error" width="24" height="24"
                                            class="text-red-600"></iconify-icon>
                                    @endif

                                </div>
                            </div>
                        </div>
                        <div class="w-full flex items-center justify-center my-3">
                            <div class="flex gap-2 items-center text-base md:text-xl">
                                <iconify-icon icon="mage:file-plus" width="24" height="24"></iconify-icon>
                                <div class="flex items-center gap-2 justify-between flex-grow-1">
                                    {{ '.env File Permission' }}
                                    @if ($permission['db_file_write_perm'])
                                        <iconify-icon icon="ix:success" width="24" height="24"
                                            class="text-green-500"></iconify-icon>
                                    @else
                                        <iconify-icon icon="codicon:error" width="24" height="24"
                                            class="text-red-600"></iconify-icon>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="flex gap-2 items-center flex-col w-full my-2">
                <p>{{ "All the permissions are provided successfully ?" }}</p>
                @if ($permission['curl_enabled'] == 1 && $permission['db_file_write_perm'] == 1 && $phpVersion >= 8.1)
                    <a href="{{ route('install.step2') }}" class="bg-[#F85D24] p-3 rounded-md text-white w-full text-center">
                        {{ 'Proceed Next' }}
                    </a>
                @endif
            </div>
        </div>
    </div>
@endsection
