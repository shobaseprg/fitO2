$(function() {
  // previewボタンが押されたらイベント発火
  $('.preview_btn').on('click', function() {
    console.log("ok")
    var text = $('#post_content').val();
    if (text == "") {
      return;
    }
    $.ajax({  
      url: '/api/articles/preview',
      type: 'GET',
      dataType: 'json',
      data: { body: text }
    })
    .done(function(html) {
      console.log("good")
      // ajax成功したら、テキストエリアを非表示にする。
      // $('#md-textarea').parent().css('display', 'none');
      $('.preview').empty();
      $('.preview').append(html.sintax);
      $('.preview').append(html.body);
      // // markdownボタンとpreviewボタンのdisabledを入れ替える。
      // $('#markdown').removeClass('disabled');
      // $('#preview').addClass('disabled');
    })
    .fail(function() {
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