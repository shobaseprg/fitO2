$(function() {
  $("#outputer_first_tab").click(function(){   // #教えるをクリックした場合
    $(".second_tabs").removeClass("none");
    $("#inputer_second_tabs").addClass("none");
    $(".first_tab").removeClass("red");
    $("#outputer_first_tab").addClass("red");
    $(".second_tab").removeClass("red");
    $(".lists").addClass("none"); 
    $(".number_tabs").addClass("none");
  });

  $("#intputer_first_tab").click(function(){   // 質問するをクリックした場合
    $(".second_tabs").removeClass("none");
    $("#outputer_second_tabs").addClass("none");
    $(".first_tab").removeClass("red");
    $("#intputer_first_tab").addClass("red");
    $(".second_tab").removeClass("red");
    $(".lists").addClass("none"); 
    $(".number_tabs").addClass("none");
  });

  $(".second_tab").click(function(){   // 質問するをクリックした場合
    var target = $(this).data("target");    // クリックされたセカンドタブのカスタムデーター属性を取得

    $(".second_tab").removeClass("red");
    $(this).addClass("red");

    $(".number_tabs").addClass("none"); // いったんすべて非表示に
    $(`.number_tabs[data-target=${target}]`).removeClass("none");
    
    $(".lists").addClass("none");    // いったんすべて非表示に
    $(`.lists[data-target=${target}]`).removeClass("none");
})

});