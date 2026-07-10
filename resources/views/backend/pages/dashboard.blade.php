@extends('backend.layouts.app')

@section('title', 'Admin Dashboard')


@section('content')
    <!-- Stats -->
    @include(backend('components.cards.stats'))

    {{-- chart  --}}
    <div id="wrapper" class="min-h-[60vh]">
        <div class="content-area w-full">
            <div class="w-full">

                <div class="main">

                    <!-- Spark Boxes -->
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mt-4 mb-4">
                        <div class="bg-slate-700 text-white rounded-xl shadow p-4">
                            <div id="spark1" class="!text-white"></div>
                        </div>

                        <div class="bg-slate-700 text-white rounded-xl shadow p-4">
                            <div id="spark2" class="!text-white"></div>
                        </div>

                        <div class="bg-slate-700 text-white rounded-xl shadow p-4">
                            <div id="spark3" class="!text-white"></div>
                        </div>
                    </div>

                    <!-- Bar & Donut -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-5 mb-4">
                        <div class="bg-white rounded-xl shadow p-4">
                            <div id="bar"></div>
                        </div>

                        <div class="bg-white rounded-xl shadow p-4">
                            <div id="donut"></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- event calender -->
    {{-- <x-calender eventRoute='/api/events' container='adminCalender' ></x-calender> --}}
@endsection


@push('scripts')
    <script src="{{ asset('ui/apexchart/apex.js') }}"></script>
    <script>
        window.onload = () => {
            var expenseData = @json($expenseChart);
            var earningData = @json($earningChart);

            const examReportData = @json($examReportData);
            const expenseSpark = @json($expenseSparkData);
            const earningSpark = @json($earningSparkData);
            const profitSparkData = @json($profitSparkData);
            const monthlyExpenseData = @json($monthlyExpenseData);


            var spark1 = {
                chart: {
                    id: 'sparkline-expense',
                    group: 'sparklines',
                    type: 'area',
                    height: 160,
                    sparkline: {
                        enabled: true
                    }
                },
                stroke: {
                    curve: 'straight'
                },
                fill: {
                    opacity: 1
                },
                series: [{
                    name: 'Expense',
                    data: expenseSpark.data,
                    style: 'color:#000'
                }],
                tooltip: {
                    theme: 'dark'
                },
                labels: expenseSpark.labels,
                xaxis: {
                    type: 'datetime'
                },
                yaxis: {
                    min: 0
                },
                colors: ['#000'],
                title: {
                    text: '৳' + expenseSpark.total.toLocaleString(),
                    offsetX: 30,
                    style: {
                        fontSize: '24px',
                        color: '#fff'
                    }
                },
                subtitle: {
                    text: 'Expenses',
                    offsetX: 30,
                    style: {
                        fontSize: '14px',
                        color: '#fff'
                    }
                }
            };

            var spark2 = {
                ...spark1,
                chart: {
                    ...spark1.chart,
                    id: 'sparkline-earning',
                    style: {
                        color: '#000'
                    }
                },
                series: [{
                    name: 'Earnings',
                    data: earningSpark.data,
                    style: {
                        color: '#000'
                    }
                }],
                tooltip: {
                    theme: 'dark'
                },
                labels: earningSpark.labels,
                title: {
                    text: '৳' + earningSpark.total.toLocaleString(),
                    offsetX: 30,
                    style: {
                        fontSize: '24px',
                        color: '#fff'
                    }
                },
                subtitle: {
                    text: 'Earnings',
                    offsetX: 30,
                    style: {
                        fontSize: '14px',
                        color: '#fff'
                    }
                }
            };

            var spark3 = {
                ...spark1,
                chart: {
                    ...spark1.chart,
                    id: 'sparkline-earning'
                },
                series: [{
                    name: 'Profits',
                    data: profitSparkData.data
                }],
                tooltip: {
                    theme: 'dark'
                },
                labels: profitSparkData.labels,
                title: {
                    text: '৳' + profitSparkData.total.toLocaleString(),
                    offsetX: 30,
                    style: {
                        fontSize: '24px',
                        color: '#fff'
                    }
                },
                subtitle: {
                    text: 'Profit',
                    offsetX: 30,
                    style: {
                        fontSize: '14px',
                        color: '#fff'
                    }
                }
            };

            var options = {
                chart: {
                    type: 'bar',
                    stacked: true,
                    height: 350
                },
                series: monthlyExpenseData.series,
                xaxis: {
                    categories: monthlyExpenseData.categories
                },
                legend: {
                    position: 'bottom'
                }
            };




            var examData = {
                chart: {
                    type: 'pie',
                    height: 350
                },
                labels: examReportData.labels,
                series: examReportData.series,
                legend: {
                    position: 'bottom'
                },
                title: {
                    text: "Exam reports",
                    offsetX: 30,
                    style: {
                        fontSize: '24px'
                    }
                },
                dataLabels: {
                    formatter: function(val, opts) {
                        return examReportData.series[opts.seriesIndex] + '%';
                    }
                },
                tooltip: {
                    y: {
                        formatter: function(val) {
                            return val + '%';
                        }
                    }
                }
            };

            new ApexCharts(document.querySelector("#bar"), options).render();
            new ApexCharts(document.querySelector("#spark1"), spark1).render();
            new ApexCharts(document.querySelector("#spark2"), spark2).render();
            new ApexCharts(document.querySelector("#spark3"), spark3).render();
            new ApexCharts(document.querySelector("#donut"), examData).render();
        }
    </script>
@endpush
