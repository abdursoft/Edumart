@extends(theme('layouts.profile'))

@section('title', 'Student Dashboard | invoices')

@section('content')

    {{-- @include(theme('components.cards.profile_details')) --}}

    <div class="min-h-screen bg-gray-100 p-6">

        <!-- Header -->
        <div class="flex items-center justify-between mb-6">
            <h1 class="text-2xl font-bold text-gray-800">Student Admit cards</h1>
            <button class="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700">
                Signout
            </button>
        </div>

        <!-- Attendance -->
        <div class="bg-white p-6 rounded-xl shadow mt-6">
            <div class="overflow-x-auto">
                @forelse($fees as $key => $fee)
                    <x-accordion key="fee_{{$key}}" :title="$fee->feeHead->name.' ('.$fee->status.')'">
                        <p>Due amount: {{$fee->feeHead->amount - $fee->feeCollection->sum('paid_amount')}}</p>
                        <p>Paid amount: {{$fee->feeCollection->sum('paid_amount')}}</p>
                        <p>Total amount: {{$fee->feeHead->amount}}</p>
                        <p>Invoice Status: {{$fee->status}}</p>

                        <x-accordion key="summery_{{$key}}" title="Collections">
                            @foreach($fee->feeCollection as $collection)
                                <div class="w-full grid grid-cols-1 md:grid-cols-3 lg:grid-cols-6 bg-gray-100 py-2 px-2 my-2 rounded-md">
                                    <p>Date: {{$collection->created_at->format('d M, Y')}}</p>
                                    <p>Due amount: {{$collection->due_amount}}</p>
                                    <p>Paid amount: {{$collection->paid_amount}}</p>
                                    <p>Collected By: <span class="bg-yellow-500 text-slate-700 px-1">{{$collection->collectedBy->name}}</span></p>
                                    <p>Payment Method: {{$collection->payment_method}}</p>
                                    <p>Invoice Status: <span class="bg-yellow-500 text-slate-700 px-1">{{$fee->status}}</span></p>
                                </div>
                            @endforeach
                        </x-accordion>
                    </x-accordion>
                @empty
                    <tr>
                        <td colspan="4" class="text-center py-4 text-gray-500">
                            No fee records found
                        </td>
                    </tr>
                @endforelse
            </div>
        </div>
    </div>
@endsection
