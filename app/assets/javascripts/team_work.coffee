class NewEvent
  constructor: (@$eml)->
    @bind_event()

  bind_event: ->
    jQuery("#datetimepicker").datetimepicker ->
     format: 'yyyy-mm-dd hh:ii'

    jQuery("#datetimepicker1").datetimepicker ->
      format: 'yyyy-mm-dd hh:ii'

    jQuery("#datetimepicker2").datetimepicker ->
      format: 'yyyy-mm-dd hh:ii'

    jQuery("#datetimepicker3").datetimepicker ->
      format: 'yyyy-mm-dd hh:ii'

    jQuery("#datetimepicker4").datetimepicker ->
      format: 'yyyy-mm-dd hh:ii'

    jQuery("#datetimepicker5").datetimepicker ->
      format: 'yyyy-mm-dd hh:ii'



jQuery(document).on "ready turbolinks:load", ->
  if jQuery(".new-event").length > 0
    new NewEvent jQuery(".new-event")
    
  