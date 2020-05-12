$(function() {
  $(".hint").click(function(){ 
  $(".hint-box").addClass("active");
  });
  $(".cancel").click(function(){ 
    $(".hint-box").removeClass("active");
  });
});