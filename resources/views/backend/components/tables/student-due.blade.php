<!--student due-->
<div class="w-full text-slate-800">
    <x-fieldset title="Student due list">
        <!--Card-->
            <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
            <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
                <thead>
                    <tr>
                        <th data-priority="1">Invoice</th>
                        <th data-priority="1">Fee Head</th>
                        <th data-priority="2">Amount</th>
                        <th data-priority="2">Due date</th>
                        <th data-priority="3">Class</th>
                        <th data-priority="4">Section</th>
                        <th data-priority="5">Group</th>
                        <th data-priority="6">Status</th>
                        <th data-priority="7" class="no-export">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($fees as $key=>$fee)
                        <tr>
                            <td>{{$fee->invoice_id}}</td>
                            <td>{{$fee->feeHead->name}}</td>
                            <td>{{$fee->feeHead->amount}}</td>
                            <td>{{date('d M, Y', strtotime($fee->due_date))}}</td>
                            <td>{{ucfirst($fee->eduClass->name)}}</td>
                            <td>{{$fee->eduSection->name ?? ''}}</td>
                            <td>{{$fee->eduGroup->name ?? ''}}</td>
                            <td><p class="@if($fee->status == 'Paid') bg-green-100 text-green-6 @elseif($fee->status == 'Partial') text-orange-600 bg-orange-100 @else text-red-600 bg-red-100 @endif px-2 py-1 text-center text-sm w-[70px] rounded-[15px] ">{{$fee->status ?? ''}}</p></td>
                            <td>
                                <div class="flex items-center gap-1">
                                    <a href="{{ route('admin.finance.fees.student_due.delete',$fee->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this due')">{!! icons('delete') !!}</a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!--/Card-->
    </x-fieldset>
</div>
<!--/container-->


@push('scripts')
	{{ loadDataTable('example', 'Student due list')}}
@endpush
