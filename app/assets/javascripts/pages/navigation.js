$(document).ready(function() {
  function show_menu() {
    prepare_ride.hide();
    request_position.hide();
    choose_form.show();
  }

  var prepare_ride = $('#prepare_ride');
  var request_position = $('#request_position')
  var choose_form = $('#choose_form')

  var show_prepare_ride_btn = $('#show_prepare_ride')
  var show_request_car = $('#show_request_car')
  var hide_form_button = $('#hide_forms')

  prepare_ride.hide();
  request_position.hide();

  show_prepare_ride_btn.click(function() {
    prepare_ride.show();
    request_position.hide();
    choose_form.hide();
  });

  show_request_car.click(function(){
    prepare_ride.hide();
    request_position.show();
    choose_form.hide();
  })

  hide_form_button.click(show_menu)
  $('#request_btn').click(show_menu)
})
