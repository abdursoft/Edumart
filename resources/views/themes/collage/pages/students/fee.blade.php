@extends(theme('layouts.profile'))

@section('title', 'Student Dashboard | invoices')

@section('content')

    {{-- @include(theme('components.cards.profile_details')) --}}

    <div class="min-h-screen bg-gray-100 p-6">

        <!-- Header -->
        <div class="flex items-center justify-between mb-6">
            <h1 class="text-2xl font-bold text-gray-800">Student invoices</h1>
            <a href="{{ route('logout') }}" class="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700">
                Signout
            </a>
        </div>

        <!-- Attendance -->
        <div class="bg-white p-6 rounded-xl shadow mt-6">
            <div class="overflow-x-auto">
                @forelse($fees as $key => $fee)
                    <x-accordion key="fee_{{ $key }}" :title="$fee->feeHead->name . ' (' . $fee->status . ')'">
                        <div
                            class="w-full flex flex-col gap-2 md:flex-row items-center justify-between mb-3 bg-gray-100 py-2 px-2 rounded-md">
                            <p>Due amount: {{ $fee->feeHead->amount - $fee->feeCollection->sum('paid_amount') }}</p>
                            <p>Paid amount: {{ $fee->feeCollection->sum('paid_amount') }}</p>
                            <p>Total amount: {{ $fee->feeHead->amount }}</p>
                            <p>Invoice Status: {{ $fee->status }}</p>
                        </div>

                        <x-accordion key="summery_{{ $key }}" title="Collections">
                            @foreach ($fee->feeCollection as $collection)
                                <div
                                    class="w-full grid grid-cols-1 md:grid-cols-3 lg:grid-cols-6 bg-gray-100 py-2 px-2 my-2 rounded-md">
                                    <div>
                                        <p>Date: </p>
                                        <p class="font-semibold">{{ $collection->created_at->format('d M, Y') }}</p>
                                    </div>
                                    <div>
                                        <p>Due amount: </p>
                                        <p class="font-semibold">{{ $collection->due_amount }}</p>
                                    </div>
                                    <div>
                                        <p>Paid amount: </p>
                                        <p class="font-semibold">{{ $collection->paid_amount }}</p>
                                    </div>
                                    <div>
                                        <p>Collected By: </p>
                                        <p class="font-semibold">{{ $collection->collectedBy->name }}</p>
                                    </div>
                                    <div>
                                        <p>Payment Method: </p>
                                        <p class="font-semibold">{{ $collection->payment_method }}</p>
                                    </div>
                                    <div>
                                        <p>Invoice Status: </p>
                                        <p
                                            class="font-semibold {{ $fee->status == 'Due' ? 'bg-red-500' : 'text-green-500' }}">
                                            {{ $fee->status }}</p>
                                    </div>
                                </div>
                            @endforeach
                        </x-accordion>
                        @if ($fee->status == 'Due')
                            <a href="{{ route('student.invoice.payment', $fee->invoice_id) }}"
                                class="hidden px-4 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700 float-right my-1">
                                Pay Now
                            </a>
                        @endif
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
