# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.card-slot').on "dragover", (event) ->
    event.preventDefault()

  $('.card-slot').on "drop", (event) ->
    event.preventDefault()
    dataTransfer = event.originalEvent.dataTransfer
    data = dataTransfer.getData("Id")
    console.log(data)
    dimElem = $("#" + data)
    target = $(event.target)
    console.log("from " + data + " to " + target.attr('id'))
    data = {"player_id":dimElem.attr('data-player'), "card_id":dimElem.attr('data-card'), "play_slot_id" : target.attr('data-slot')}
    console.log(Routes.games_play_card_path(data))

  $('.card').on "dragstart", (event) ->
    dataTransfer = event.originalEvent.dataTransfer
    dataTransfer.setData("Id", event.target.id)
    $('.card-slot').addClass('drop-area')

  $('.card').on "dragend", ->
    $('.card-slot').removeClass('drop-area')
