ajax_request = ->
  $.ajax '/exchange',
      type: 'POST'
      dataType: 'json'
      data: {
              currency: $("#currency").val(),
              currency_destination: $("#currency_destination").val(),
              quantity: $("#quantity").val()
            }
      error: (jqXHR, textStatus, errorThrown) ->
        alert textStatus
      success: (data, text, jqXHR) ->
        $('#result').val(data.value)
    return false;

exchange_inverter = ->
  currency = $("#currency").val()
  currency_destination = $("#currency_destination").val()
  $("#currency").val(currency_destination)
  $("#currency_destination").val(currency)
  ajax_request()

$(document).ready ->
  $('#quantity').on('input', ->
    ajax_request()
  )

  $('#reverter').click ->
    exchange_inverter()

