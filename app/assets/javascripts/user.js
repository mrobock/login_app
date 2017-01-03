$(document).ready(function() {
  $(document).on("click", "tr", function() {
    $(this).addClass("red");
  });

  $(document).on("click", "td", function(){
    if($(this).attr("contentEditable") == true){
      $(this).attr("contentEditable","false");
    } else {
      $(this).attr("contentEditable","true");
    }

  });


})
