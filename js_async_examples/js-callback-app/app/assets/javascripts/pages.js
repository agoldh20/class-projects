function getData() {
  let employeesDiv = document.getElementById('employees');
  $.get('https://data.cityofchicago.org/resource/xzkq-xp2w.json', function(employees) {
    let htmlString = "";
    for (let employee of employees) {
      htmlString += `<h2>${employee.name}</h2>`;
    }
    employeesDiv.innerHTML = htmlString;
  });
}
