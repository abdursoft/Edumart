<div class="max-w-4xl mx-auto bg-white p-6 rounded-lg shadow-md text-sm mt-5">

    <!-- Student Info -->
    <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
        <div class="flex items-center gap-2">
            <img src="{{asset($student->avatar)}}"
                 class="w-24 h-24 rounded border"
                 alt="{{$student->name}}">
            <div>
                <p><span class="font-semibold">Student Name:</span> {{$student->name}}</p>
                <p><span class="font-semibold">Student ID:</span> {{$student->student_id}}</p>
                <p><span class="font-semibold">Class:</span> {{$student->eduClass->name}}</p>
                <p><span class="font-semibold">Section:</span> {{$student->eduSection->name}}</p>
                <p><span class="font-semibold">Roll No:</span> {{$student->class_roll}}</p>
            </div>
        </div>

        <div class="text-right">
            <p><span class="font-semibold"></span> {{site()->site_name}}</p>
            <p><span class="font-semibold">INV-</span> {{$fee->invoice_id}}</p>
            <p>{{date('d M, Y', strtotime($fee->due_date))}}</p>
            <p><span class="font-semibold @if($fee->status == 'Paid') text-green-500 @elseif($fee->status == 'Partial') text-orange-500 @else text-red-600 @endif">{{$fee->status}}</span></p>
        </div>
    </div>

    <!-- Fee Table -->
    <div class="overflow-x-auto">
        <table class="w-full border border-gray-300 text-left">
            <thead class="bg-gray-100">
                <tr>
                    <th class="border px-3 py-2">Fee Type</th>
                    <th class="border px-3 py-2 text-right">Amount</th>
                    <th class="border px-3 py-2 text-right">Paid</th>
                    <th class="border px-3 py-2 text-right">Due</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="border px-3 py-2">{{$fee->feeHead->name}}</td>
                    <td class="border px-3 py-2 text-right">{{$fee->feeHead->amount}}</td>
                    <td class="border px-3 py-2 text-right paidAmount">@if($fee->status == 'Paid') {{$fee->feeHead->amount}} @elseif($fee->status == 'Partial') {{$fee->amount}} @else 0 @endif</td>
                    <td class="border px-3 py-2 text-right">{{$fee->feeHead->amount}}</td>
                </tr>
            </tbody>
            <tfoot class="bg-gray-50 font-semibold">
                <tr>
                    <td class="border px-3 py-2 text-right">Total</td>
                    <td class="border px-3 py-2 text-right">{{$fee->feeHead->amount}}</td>
                    <td class="border px-3 py-2 text-right totalPaid">@if($fee->status == 'Paid') {{$fee->feeHead->amount}} @elseif($fee->status == 'Partial') {{$fee->amount}} @else 0 @endif</td>
                    <td class="border px-3 py-2 text-right">@if($fee->status == 'Due') {{$fee->feeHead->amount}} @elseif($fee->status == 'Partial') {{$fee->feeHead->amount - $fee->amount}} @else 0 @endif</td>
                </tr>
            </tfoot>
        </table>
        <p class="italic mt-1"><span class="text-green-600">[Note]</span> <span class="font-semibold">Due date is {{date('d M, Y', strtotime($fee->due_date))}}</span></p>
    </div>
</div>
