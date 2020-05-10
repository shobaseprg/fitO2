$(function() {
  $("#input_tab").click(function(){   // #教えるをクリックした場合
    $("#second_tabs_for_output").addClass("active");
    $("#second_tabs_for_input").removeClass("active");
  });

  $("#input_tab").click(function(){   // 質問するをクリックした場合
    $("#second_tabs_for_intput").addClass("active");
    $("#second_tabs_for_output").removeClass("active");
  });

});