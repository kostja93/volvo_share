$(document).ready(function(){
  var map = $('#map')

  if (map.length == 0) return

  center = [map.data('lat'), map.data('lng')];

  the_map = L.map('map').setView(center, 15);
  L.tileLayer('https://cartodb-basemaps-{s}.global.ssl.fastly.net/light_all/{z}/{x}/{y}.png').addTo(the_map);
  L.circle(center, {
    color: 'green',
    fillColor: '#0f0',
    fillOpacity: 0.5,
    radius: map.data('radius')
  }).addTo(the_map);
});
