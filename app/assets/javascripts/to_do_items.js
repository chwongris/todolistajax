$(document).ready(function() {

$('body').on("click", ".to_do_item", function() {
   $(this).toggleClass('expandedItem', 400)
   $(this).children('.comments').toggle("fade");
   console.log("hi");
});

});

