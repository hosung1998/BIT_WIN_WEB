/* globals Chart:false, feather:false */

function dayclick_7(){
	chartadd(7);
}

function dayclick_15(){
	
	chartadd(15);
	
}


function dayclick_30(){
	chartadd(30);
}

function chartadd(day){
  feather.replace({ 'aria-hidden': 'true' })
  var xarr = new Array(7); 
  var dataarr = new Array(7);
  var lowarr = new Array(7);
  var higharr = new Array(7);
  // Graphs
  const ctx = document.getElementById('myChart')
  	$.ajax({
	        type : "GET",            
	        url :  "https://api.upbit.com/v1/candles/days?market=KRW-BTC&count="+ day +"&convertingPriceUnit=KRW",    
	        datatype : "json",
	        async: false,
	        success : function(data){ 
				$.each(data, function(index, item) { // 데이터 =item
				    var data = item.candle_date_time_utc;
					xarr[index] = data.substr(0,10);
					dataarr[index] = item.trade_price;
					lowarr[index] = item.low_price;
					higharr[index] = item.high_price;
				});
	        }
	 }); 
     
  
  // eslint-disable-next-line no-unused-vars
  const myChart = new Chart(ctx, {
    type: 'line', 
    data: {
      labels: xarr,
      datasets: [{
        data: dataarr,
        label: '종가', // this is your dataset label
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: '#F79400',
        borderWidth: 2,
        lineTension :  0.6, //1과 가까울수록 직선 0과 가까울수록 곡선
        pointBackgroundColor: '#F79400'
      },{
        data: lowarr,
        label: '저가', // this is your dataset label
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: '#007bff',
        borderWidth: 2,
        lineTension :  0.6, //1과 가까울수록 직선 0과 가까울수록 곡선
        pointBackgroundColor: '#007bff'
      },{
        data: higharr,
        label: '고가', // this is your dataset label
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: '#F22000',
        borderWidth: 2,
        lineTension :  0.6, //1과 가까울수록 직선 0과 가까울수록 곡선
        pointBackgroundColor: '#F22000'
      }]
    },
    options: {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: false
          }
        }]
      },
      legend: {
        display: true
      }
    }
  })	
}


(() => {
	chartadd(30);
})()
