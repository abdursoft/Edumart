function chart1() {
    new ApexCharts(document.querySelector("#chart1"), {
        chart: {
            height: 400,
            type: "line",
            shadow: {
                enabled: !0,
                color: "#000",
                top: 18,
                left: 7,
                blur: 10,
                opacity: 1
            },
            toolbar: {
                show: !1
            }
        },
        colors: ["#786BED", "#999b9c"],
        dataLabels: {
            enabled: !0
        },
        stroke: {
            curve: "smooth"
        },
        series: [{
            name: "High - 2019",
            data: [19, 15, 14, 24, 25, 19, 22, 24, 25]
        }, {
            name: "Low - 2019",
            data: [7, 11, 22, 18, 31, 13, 26, 16, 31]
        }],
        grid: {
            borderColor: "#e7e7e7",
            row: {
                colors: ["#f3f3f3", "transparent"],
                opacity: 0
            }
        },
        markers: {
            size: 6
        },
        xaxis: {
            categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "july", "aug", "sep"],
            labels: {
                style: {
                    colors: "#9aa0ac"
                }
            }
        },
        yaxis: {
            title: {
                text: "Income"
            },
            labels: {
                style: {
                    colors: "#9aa0ac"
                }
            },
            min: 5,
            max: 40
        },
        legend: {
            position: "top",
            horizontalAlign: "right",
            floating: !0,
            offsetY: -25,
            offsetX: -5
        },
        tooltip: {
            theme: "dark",
            marker: {
                show: !0
            },
            x: {
                show: !0
            }
        }
    }).render()
}

function chart2() {
    new ApexCharts(document.querySelector("#chart2"), {
        chart: {
            height: 400,
            type: "area",
            toolbar: {
                show: !1
            }
        },
        colors: ["#999b9c", "#4CC2B0"],
        fill: {
            colors: ["#999b9c", "#4CC2B0"]
        },
        dataLabels: {
            enabled: !1
        },
        stroke: {
            curve: "smooth"
        },
        markers: {
            colors: ["#999b9c", "#4CC2B0"]
        },
        series: [{
            name: "series1",
            data: [31, 40, 28, 51, 22, 64, 80]
        }, {
            name: "series2",
            data: [11, 32, 67, 32, 44, 52, 41]
        }],
        legend: {
            show: !1
        },
        xaxis: {
            categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "July"],
            labels: {
                style: {
                    colors: "#9aa0ac"
                }
            }
        },
        yaxis: {
            labels: {
                style: {
                    colors: "#9aa0ac"
                }
            }
        },
        tooltip: {
            theme: "dark",
            marker: {
                show: !0
            },
            x: {
                show: !0
            }
        }
    }).render()
}

function chart3() {
    var e = {
        series: [{
            data: [344, 345, 333, 323, 322, 342, 383, 353, 343, 376]
        }],
        annotations: {
            points: [{
                x: 5,
                y: 322,
                label: {
                    text: "Lowest: 322",
                    offsetY: 2
                },
                image: {
                    path: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flat_tick_icon.svg/512px-Flat_tick_icon.svg.png",
                    width: void 0,
                    height: void 0,
                    offsetX: 0,
                    offsetY: -18
                }
            }, {
                x: 7,
                y: 383,
                label: {
                    text: "Highest: 383",
                    offsetY: 2
                }
            }]
        },
        chart: {
            height: 340,
            type: "area",
            zoom: {
                enabled: !1
            },
            toolbar: {
                show: !1
            }
        },
        xaxis: {
            labels: {
                style: {
                    colors: "#9aa0ac"
                }
            }
        },
        yaxis: {
            labels: {
                style: {
                    colors: "#9aa0ac"
                }
            }
        },
        tooltip: {
            theme: "dark",
            marker: {
                show: !0
            },
            x: {
                show: !0
            }
        },
        dataLabels: {
            enabled: !1
        },
        stroke: {
            curve: "straight"
        }
    };
    new ApexCharts(document.querySelector("#schart1"), e).render()
}

function chart4() {
    new ApexCharts(document.querySelector("#schart2"), {
        chart: {
            type: "bar",
            height: 250,
            stacked: !0,
            toolbar: {
                show: !1
            },
            zoom: {
                enabled: !1
            }
        },
        responsive: [{
            breakpoint: 480,
            options: {
                legend: {
                    position: "bottom",
                    offsetX: -10,
                    offsetY: 0
                }
            }
        }],
        plotOptions: {
            bar: {
                horizontal: !1,
                columnWidth: "55%"
            }
        },
        tooltip: {
            theme: "dark",
            marker: {
                show: !0
            },
            x: {
                show: !0
            }
        },
        xaxis: {
            categories: ["jan", "feb", "mar", "apr", "may", "jun"],
            labels: {
                style: {
                    colors: "#9aa0ac"
                }
            }
        },
        yaxis: {
            labels: {
                style: {
                    colors: "#9aa0ac"
                }
            }
        },
        legend: {
            show: !1
        },
        fill: {
            opacity: 1
        },
        series: [{
            name: "Class A",
            data: [44, 55, 41, 67, 22, 43]
        }, {
            name: "Class B",
            data: [13, 23, 20, 8, 13, 27]
        }, {
            name: "Class C",
            data: [11, 17, 15, 15, 21, 14]
        }, {
            name: "Class D",
            data: [21, 7, 25, 13, 22, 8]
        }]
    }).render()
}

function chart5() {
    var e = {
        series: [$('.fail').attr('data-value'), $('.pass').attr('data-value'),$(".absent").attr('data-value')],
        chart: {
            height: 350,
            type: "radialBar",
            offsetY: -10
        },
        colors: ["#F59F4A", "#7ECB78","#0000FF"],
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
        labels: ["Faild", "Passed","Absent"]
    };
    new ApexCharts(document.querySelector("#schart3"), e).render()
}

function chart6() {
    var e = {
        series: [$('.absent').attr('data-value'), $('.present').attr('data-value')],
        chart: {
            width: '100%',
            type: 'pie',
        },
        labels: ["Absent", "Present"],
        theme: {
            monochrome: {
                enabled: true
            }
        },
        plotOptions: {
            pie: {
                dataLabels: {
                    offset: -5
                }
            }
        },
        title: {
            text: "Student Attendence"
        },
        dataLabels: {
            formatter(val, opts) {
                const name = opts.w.globals.labels[opts.seriesIndex]
                return [name, val.toFixed(1) + '%']
            }
        },
        legend: {
            show: false
        }
    }
    new ApexCharts(document.querySelector("#schart6"), e).render();
};

$((function () {
    chart5();
}));