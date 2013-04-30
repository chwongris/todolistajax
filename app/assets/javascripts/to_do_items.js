// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {

  $('body').bind('ajax:success', function(e, data) {

    var itemId = $('<div>').append(data).children().first().data("item-id");
    if(itemId == undefined){
     $('.new-item').append(data);
   } else{

   };
    
  });

});