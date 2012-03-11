# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#fileupload').fileupload {
    dataType: 'json',
    done: (e, data) ->
      $.each(data.result, (index, file) ->
        $('<li class="span3"><div class="thumbnail"><img src="'+file.small_url+'"/><div/></li>').appendTo('ul.thumbnails')
      )
  } 