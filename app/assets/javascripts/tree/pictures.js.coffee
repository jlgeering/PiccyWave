# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#picture-upload').fileupload {
    dataType: 'json',
    done: (e, data) ->
      $.each(data.result, (index, file) ->
        $('<li class="span3 picture"><div class="thumbnail"><a href="'+file.delete_url+'" rel="nofollow" data-method="delete"><img src="'+file.small_url+'"/></a><div/></li>').appendTo('ul.thumbnails')
      )
  }
