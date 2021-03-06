$(function() {
  // previewボタンが押されたらイベント発火
  $('.preview_btn').on('click', function() {
    var text = $('#post_content').val();
    if (text == "") {
      return;
    }
    $.ajax({  
      url: '/articles/preview',
      type: 'GET',
      dataType: 'json',
      data: { body: text }
    })
    .done(function(html) {
      $("#mark_down").addClass("hidden")
      $("#preview").removeClass("hidden")
      $('#preview_content').empty();
      $('#preview_content').append(html.sintax);
      $('#preview_content').append(html.body);
    })
    .fail(function() {
      alert('failed for markdown preview');
    })
  })

  // markdownボタンが押されたらイベント発火
    $('#md_btn').on('click', function() {
      $("#mark_down").removeClass("hidden")
      $("#preview").addClass("hidden")
    })

// ===================================
// メモの場合
// ===================================
    $('.preview_memo_btn').on('click', function() {
      var text = $('#memo_content').val();
      if (text == "") {
        return;
      }
      $.ajax({  
        url: '/articles/preview',
        type: 'GET',
        dataType: 'json',
        data: { body: text }
      })
      .done(function(html) {
        $("#mark_down").addClass("hidden")
        $("#preview").removeClass("hidden")
        $('#preview_content').empty();
        $('#preview_content').append(html.sintax);
        $('#preview_content').append(html.body);
      })
      .fail(function() {
        alert('failed for markdown preview');
      })
    })
  
    // markdownボタンが押されたらイベント発火
      $('#md_btn').on('click', function() {
        $("#mark_down").removeClass("hidden")
        $("#preview").addClass("hidden")
      })
})