$(document).ready(function() {
  function update_location_circle(radius) {
    circle.setRadius(radius)
  }

  function load_cars() {
    $.ajax({
      url: "/cars"
    }).done(function(cars) {
      for (var i = 0; i < cars.length; i++) {
        car = cars[i];
        L.marker([car.lat, car.lng]).addTo(mymap).bindPopup(car.model);
      }
    });
  }

  function load_map() {
    mymap = L.map('mapid').setView(user_position, 15);
    L.tileLayer('https://cartodb-basemaps-{s}.global.ssl.fastly.net/light_all/{z}/{x}/{y}.png').addTo(mymap);
  }

  function load_circle() {
    circle = L.circle(user_position, {
      color: 'green',
      fillColor: '#0f0',
      fillOpacity: 0.5,
      radius: 100
    }).addTo(mymap);
  }

  function setPosition(position) {
    user_position = [position.coords.latitude, position.coords.longitude ]
    mymap.panTo(user_position);
    circle.setLatLng(user_position);
    update_location_circle(100);
  }

  var user_position = [47.417928, 9.364397];
  var mymap = {};
  var position_marker = {};
  var circle = {};
  var request_car_distance = $('#request_car_distance');

  load_map();
  load_cars();
  load_circle();

  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(setPosition);
  }

  request_car_distance.keyup(function() {
    distance = parseInt($(this).val())
    update_location_circle(distance)
  })
});

