$(document).ready(function() {

$('body').on("click", ".destination_name", function() {
   $(this).next('.to_do_items').slideToggle();

});

$('.destinations').sortable({
  // handle: '.handle',
  // cursor: 'move',
  update: function(){
    var destinations = $('div.destination_sort');
    var results = [];

    _.each(destinations, function (destination, iterator) {
      $(destination).val(iterator);
      var id = $(destination).data("ar-id");
      results.push([id,iterator]);
      console.log(results);
    });

    $.ajax({
      url: '/destinations/update_position',
      type: 'POST',
      data: {results : results}
    });

  }
});


});

