function getData() {
  let carsDiv = document.getElementById('cars');
  $.get('https://data.cityofchicago.org/resource/rp42-fxjt.json', function(cars) {
    let htmlString = "";
    for (let car of cars) {
      htmlString += `
        <h2>Make: ${car.make}</h2>
        <h3>Color: ${car.color}</h3>
        <h3>Plate: ${car.plate}</h3>
        <br />`;
    }
    carsDiv.innerHTML = htmlString;
  });
  
}
function changeCar(divCars) {
  divCars.classList.toggle('grey-out');
}


// function showAll() {
//   let cars = document.querySelectorAll('.car');
//   for ( let car of cars) {
//     document.classList.remove('hidden');
//   }
// }

// function showWhite() {
//   let cars = document.querySelectorAll('.car');
//   for ( let car of cars) {
//     if (car.innerHTML.indexOf('WHI') !== -1) {
//       document.classList.remove('hidden');
//     } else {
//       document.classList.add('hidden');
//     }
//   }
// }