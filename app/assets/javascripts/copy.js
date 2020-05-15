$(function() {
  $('#copy_btn').on('click', function(){
    // コピーする文章の取得
    let text = $('#slack_display_copy').text();
    // テキストエリアの作成
    let $textarea = $('<textarea></textarea>');
    // テキストエリアに文章を挿入
    $textarea.text(text);
    //　テキストエリアを挿入
    $(this).append($textarea);
    //　テキストエリアを選択
    $textarea.select();
    // コピー
    document.execCommand('copy');
    // テキストエリアの削除
    $textarea.remove();
    // アラート文の表示
    $('#copyalert').show().delay(2000).fadeOut(400);
  });
});