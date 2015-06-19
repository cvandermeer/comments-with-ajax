$ ->
  $('.new_comment').on 'keyup', (evt) ->
    if evt.which == 13
      $(this).submit()
      evt(preventDefault())
      return false

  $('.new_comment').on 'ajax:success', (evt, post, status) ->
    $comment = $('<div/>').addClass('comment').html(post.body)
    $comment.hide()
    $comment.append $('<hr/>')
    $('.comments').append $comment
    $comment.slideDown()

    $('.new_comment textarea').val('').focus()