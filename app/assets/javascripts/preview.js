$(function() {
  // previewボタンが押されたらイベント発火
  $('#preview_btn').on('click', function() {
    console.log("ok")
    var text = $('#post_content').val();
    if (text == "") {
      return;
    }
    $.ajax({  
      url: '/preview',
      type: 'GET',
      dataType: 'json',
      data: { content: text },
      processData: false,
      contentType: false
    })
    .done(function(html) {
      // ajax成功したら、テキストエリアを非表示にする。
      // $('#md-textarea').parent().css('display', 'none');
      $('.preview').append(html.content);
      // markdownボタンとpreviewボタンのdisabledを入れ替える。
      // $('#markdown').removeClass('disabled');
      // $('#preview').addClass('disabled');
    })
    .fail(function(html) {
      console.log(html)
      alert('failed for markdown preview');
    })
  })

  // markdownボタンが押されたらイベント発火
  // $('#markdown').on('click', function() {
  //   $('#md-textarea').parent().css('display', '');
  //   $('#preview-area').empty();
  //   $('#preview').removeClass('disabled');
  //   $('#markdown').addClass('disabled');
  // })
})