@section('styles')
	{{ tableStyle()}}
@endSection

<!-- Container -->
<div class="w-full text-slate-800">
    <x-fieldset title="Expense List">
        <!-- Card -->
        <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
            <table id="menuTable" class="stripe hover w-full" style="width:100%; padding-top: 1em; padding-bottom: 1em;">
                <thead>
                    <tr>
                        <th data-priority="1">Name</th>
                        <th data-priority="2">Head Amount</th>
                        <th data-priority="3">Paid Amount</th>
                        <th data-priority="4">Description</th>
                        <th data-priority="5">Created by</th>
                        <th data-priority="6">Expense at</th>
                        <th data-priority="7" class="no-export">Action</th>
                    </tr>
                </thead>

                <tbody>
                    @foreach($expenses as $key => $expense)
                        <tr>
                            <td>{{ $expense->expenseHead->name }}</td>
                            <td>{{ $expense->expenseHead->amount }}</td>
                            <td>{{ $expense->amount }}</td>
                            <td>{!! $expense->description !!}</td>
                            <td>{{ $expense->addedBy->name }}</td>
                            <td>{{ date('d M, Y', strtotime($expense->expense_date ?? time())) }}</td>
                            <td>
                                <div class="flex items-center gap-1">
                                    <a href="{{ route('admin.finance.expenses.cost.edit', $expense->id) }}"
                                    class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition-all delay-10">
                                        {!! icons('edit') !!}
                                    </a>
                                    <a href="{{ route('admin.finance.expenses.cost.delete', $expense->id) }}"
                                    class="py-1 px-2 hover:bg-red-600 text-red-600 rounded-[15px] shadow-md hover:text-white transition-all delay"
                                    onclick="return confirm('Are you sure you want to delete this expense?');">
                                        {!! icons('delete') !!}
                                    </a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- /Card -->
    </x-fieldset>
</div>
<!-- /Container -->

@section('scripts')
    <!-- Datatables -->
    {{ tableScript() }}
    {{ loadDataTable('menuTable')}}
@endsection
