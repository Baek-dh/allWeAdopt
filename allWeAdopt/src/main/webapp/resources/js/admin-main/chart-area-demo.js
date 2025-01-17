// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';


// --------------- 정석 ---------------------------------------------------------------------
const cArr = [];
const mArr = [];

(function adopter(){

  $.ajax({
    url : contextPath + "/admin/mainAdopter",
    type : "GET",
    dataType : "JSON",
    success : function(cList){
        // cArr[num] = c.count;
        console.log(cList[0]);
        console.log(cList[0].count);
        
        // 카운트for문 
        for(let i = 0; i < 12; i++){
          if(i == 6){
            cArr[i] = cList[0].count;
            mArr[i] = cList[0].month;
          } else if(i==7){
            cArr[i] = cList[1].count;
            mArr[i] = cList[1].month;
            
          } else {
            cArr[i] = 0;
            mArr[i] = 0;
            
          }
      }

    
      console.log(cArr[0]);


// Area Chart Example
var ctx = document.getElementById("myAreaChart");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: mArr,
    datasets: [{
      label: "Sessions",
      lineTension: 0.3,
      backgroundColor: "rgba(251,151,107,0.2)",
      borderColor: "rgba(251,131,107,1)",
      pointRadius: 5,
      pointBackgroundColor: "rgba(251,251,251,1)",
      pointBorderColor: "rgba(251,131,107,1)",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "rgba(251,131,107,1)",
      pointHitRadius: 50,
      pointBorderWidth: 2,
      data: cArr
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 8
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 10,
          maxTicksLimit: 5
        },
        gridLines: {
          color: "rgba(0, 0, 0, .125)",
        }
      }],
    },
    legend: {
      display: false
    }
  }
});

    },
    error : function(){
      console.log("어답터 그래프 에러 발생");
    }

  });

}) ();
  
