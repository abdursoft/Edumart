var absent = $(".absent").attr('data-value');
var present = $(".present").attr('data-value');
let opt = {
    chart: {
        type: 'pie'
    },
    title: {
        text: 'Student Attendence'
    },
    tooltip: {
        valueSuffix: '%'
    },
    subtitle: {
        text:
            ''
    },
    plotOptions: {
        series: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: [{
                enabled: true,
                distance: 20
            }, {
                enabled: true,
                distance: -40,
                format: '{point.percentage:.1f}%',
                style: {
                    fontSize: '1.2em',
                    textOutline: 'none',
                    opacity: 0.7
                },
                filter: {
                    operator: '>',
                    property: 'percentage',
                    value: 10
                }
            }]
        }
    },
    series: [
        {
            name: 'Percentage',
            colorByPoint: true,
            data: [
                {
                    name: 'Absent',
                    y: parseInt(absent)
                },
                {
                    name: 'Present',
                    sliced: true,
                    selected: true,
                    y: parseInt(present)
                },
            ]
        }
    ]
}
Highcharts.chart('schart7', opt);