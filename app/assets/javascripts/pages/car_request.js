$(document).ready(function() {
  var additionalItems = $('#additionalItems');
  var showMoreFiltersBtn = $('#showMoreFiltersBtn')
  var show = false;
  additionalItems.hide();
  showMoreFiltersBtn.click(function(e) {
    e.preventDefault();
    if (show = !show) {
      additionalItems.show();
      $(this).html("Hide additional Filters")
    } else {
      additionalItems.hide();
      $(this).html("Show more filters")
    }
  });
});
