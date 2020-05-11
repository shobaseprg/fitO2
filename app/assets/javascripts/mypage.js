$(function() {
  $(".mypage__inner__tabs__tab").click(function(){   // 質問するをクリックした場合
    var target = $(this).data("target");    // クリックされたセカンドタブのカスタムデーター属性を取得
    console.log("il")
    $(".post_all_inner").addClass("none"); // いったんすべて非表示に
    $(`.post_all_inner[data-target=${target}]`).removeClass("none");

});
});