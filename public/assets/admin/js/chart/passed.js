var e = {
    series: [$('.fail').attr('data-value'), $('.pass').attr('data-value')],
    chart: {
        height: 350,
        type: "radialBar",
        offsetY: -10
    },
    colors: ["#F59F4A", "#7ECB78"],
    plotOptions: {
        radialBar: {
            startAngle: -135,
            endAngle: 135,
            inverseOrder: !0,
            dataLabels: {
                name: {
                    fontSize: '22px',
                },
                value: {
                    fontSize: '16px',
                },
                total: {
                    show: true,
                    label: 'Total',
                    formatter: function (w) {
                        // By default this function returns the average of all series. The below is just an example to show the use of custom formatter function
                        return "100%"
                    }
                }
            }
        }
    },
    labels: ["Faild", "Passed"]
};
new ApexCharts(document.querySelector("#schart3"), e).render()