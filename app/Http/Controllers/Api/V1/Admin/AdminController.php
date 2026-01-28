<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admission;
use App\Models\Department;
use App\Models\EduClass;
use App\Models\Exam;
use App\Models\ExamResult;
use App\Models\Expense;
use App\Models\FeeCollection;
use App\Models\Invoice;
use App\Models\Language;
use App\Models\Subject;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class AdminController extends Controller
{
    // Admin dashboard overview
    public function dashboard()
    {
        $users       = User::all();
        $departments = Department::count();
        $students    = $users->where('role', 'student')->count();
        $teachers    = $users->where('role', 'teacher')->count();
        $committee   = $users->where('role', 'committee')->count();
        $staffs      = $users->where('role', 'staff')->count();
        $subjects    = Subject::count();
        $exams       = Exam::count();
        $invoices    = Invoice::count();
        $classes     = EduClass::count();
        $admissions  = Admission::where('status', 'pending')->get()->count();


        // Expenses grouped by date
        $expenses = Expense::select(
            DB::raw('DATE(expense_date) as date'),
            DB::raw('SUM(amount) as total')
        )
            ->groupBy(DB::raw('DATE(expense_date)'))
            ->orderBy('date')
            ->get();

        // Earnings grouped by date
        $earnings = FeeCollection::select(
            DB::raw('DATE(payment_date) as date'),
            DB::raw('SUM(paid_amount) as total')
        )
            ->groupBy(DB::raw('DATE(payment_date)'))
            ->orderBy('date')
            ->get();

        // Format for charts
        $expenseChart = [
            'prices' => $expenses->pluck('total'),
            'dates'  => $expenses->pluck('date')
                ->map(fn($d) => \Carbon\Carbon::parse($d)->format('d M Y')),
        ];

        $earningChart = [
            'prices' => $earnings->pluck('total'),
            'dates'  => $earnings->pluck('date')
                ->map(fn($d) => \Carbon\Carbon::parse($d)->format('d M Y')),
        ];

        // Expense sparkline
        $expenseSpark = Expense::select(
            DB::raw('DATE(expense_date) as date'),
            DB::raw('SUM(amount) as total')
        )
            ->groupBy(DB::raw('DATE(expense_date)'))
            ->orderBy('date')
            ->get();

        // Earning sparkline
        $earningSpark = FeeCollection::select(
            DB::raw('DATE(payment_date) as date'),
            DB::raw('SUM(paid_amount) as total')
        )
            ->groupBy(DB::raw('DATE(payment_date)'))
            ->orderBy('date')
            ->get();


        $expenseSparkData = [
            'data'   => $expenseSpark->pluck('total'),
            'labels' => $expenseSpark->pluck('date'),
            'total'  => $expenseSpark->sum('total'),
        ];
        $earningSparkData = [
            'data'   => $earningSpark->pluck('total'),
            'labels' => $earningSpark->pluck('date'),
            'total'  => $earningSpark->sum('total'),
        ];

        $profitSparkData = $this->netProfits();

        $monthlyExpenseData = $this->monthlyExpense();
        $examReportData = $this->getExamReports();

        return view(backend('pages.dashboard'), compact('students', 'staffs', 'teachers', 'committee', 'subjects', 'exams', 'invoices', 'admissions', 'departments', 'classes', 'expenses', 'earnings', 'expenseChart', 'earningChart', 'earningSparkData', 'expenseSparkData', 'profitSparkData','monthlyExpenseData', 'examReportData'));
    }

    /**
     * Add new language
     */
    public function addLanguage(Request $request)
    {
        $request->validate([
            'code' => 'required|string|unique:languages,code',
            'name' => 'required|string',
        ]);

        $language = Language::create([
            'code'      => $request->code,
            'name'      => $request->name,
            'is_active' => true,
        ]);

        $filePath = resource_path("lang/{$request->code}/messages.php");

        if (! file_exists($filePath)) {
            File::makeDirectory(dirname($filePath), 0755, true);
            File::put($filePath, "<?php\n\nreturn [\n    // Add translated strings here\n];");
        }

        return response()->json(['message' => 'Language added successfully', 'language' => $language], 201);
    }

    /**
     * Get net profits
     */
    public function netProfits()
    {
        // Expenses by date
        $expenses = Expense::select(
            DB::raw('DATE(expense_date) as date'),
            DB::raw('SUM(amount) as expense')
        )
            ->groupBy(DB::raw('DATE(expense_date)'))
            ->get()
            ->keyBy('date');

        // Earnings by date
        $earnings = FeeCollection::select(
            DB::raw('DATE(payment_date) as date'),
            DB::raw('SUM(paid_amount) as earning')
        )
            ->groupBy(DB::raw('DATE(payment_date)'))
            ->get()
            ->keyBy('date');

        // Merge dates
        $dates = $expenses->keys()
            ->merge($earnings->keys())
            ->unique()
            ->sort()
            ->values();

        // Net profit per date
        $profitData = $dates->map(function ($date) use ($expenses, $earnings) {
            $expense = $expenses[$date]->expense ?? 0;
            $earning = $earnings[$date]->earning ?? 0;

            return [
                'date'   => $date,
                'profit' => $earning - $expense,
            ];
        });

        // Sparkline format
        return [
            'data'   => $profitData->pluck('profit'),
            'labels' => $profitData->pluck('date'),
            'total'  => $profitData->sum('profit'),
        ];
    }

    /**
     * Get monthly expenses
     */
    public function monthlyExpense()
    {
        $monthlyExpenses = Expense::select(
            DB::raw('MONTH(expenses.expense_date) as month'),
            DB::raw('expense_heads.name as head'),
            DB::raw('SUM(expenses.amount) as total')
        )
        ->join('expense_heads', 'expenses.expense_head_id', '=', 'expense_heads.id')
        ->whereYear('expenses.expense_date', now()->year)
        ->groupBy('month', 'head')
        ->orderBy('month')
        ->get();

        $months = collect(range(1, 12))->map(
            fn($m) =>
            Carbon::create()->month($m)->format('M')
        );

        $heads = $monthlyExpenses->pluck('head')->unique();

        $series = $heads->map(function ($head) use ($monthlyExpenses) {
            return [
                'name' => $head,
                'data' => collect(range(1, 12))->map(function ($month) use ($monthlyExpenses, $head) {
                    return $monthlyExpenses
                        ->where('month', $month)
                        ->where('head', $head)
                        ->sum('total');
                })->values()
            ];
        });

        return [
            'categories' => $months,
            'series'     => $series->values(),
        ];
    }

    /**
     * Get exam reports
     */
    public function getExamReports(){
        $exams = ExamResult::with('exam')->latest()->limit(5)->get();
        return [
            'labels' => $exams->pluck('exam.name')->toArray(),
            'series' => $exams->pluck('percentage')->map(fn ($p) => (float) $p)->toArray(),
        ];
    }
}
