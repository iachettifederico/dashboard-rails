$(function () {
  $('#tracked-hours').highcharts({
    chart: {
      type: 'line'
    },
    title: {
      text: $('#tracked-hours').data('title')
    },
    xAxis: {
      title: {
        text: "Date"
      },
      categories: $('#tracked-hours').data('dates')
    },
    yAxis: {
      title: {
        text: ""
      },
    },
    plotOptions: {
      line: {
        dataLabels: {
          enabled: false
        },
        enableMouseTracking: true
      }
    },
    series: [
      {
        name: "Hours",
        data: $('#tracked-hours').data('hours')
      },
      {
        name: "Dollars",
        data: $('#tracked-hours').data('dollars')
      }
    ]
  });
});
