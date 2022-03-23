new Chart(document.getElementById("bar-chart"), {
    type: 'bar',
    data: {
      labels: ["F", "D", "C", "B", "A"],
      datasets: [
        {
          label: "Population (millions)",
          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
          data: [1000,2000,4000,3000,1000,0]
        }
      ]
    },
    options: {
      legend: { display: false },
      title: {
        display: true,
        text: '득점자별 점수상황 - 영어 - 본인 : F'
      }
    }
});