class WorkingExamine
  constructor: (@$eml)->
    @bind_event()

  bind_event: ->
    jQuery("#datetimepicker").datetimepicker ->
     format: 'yyyy-mm-dd hh:ii'

    jQuery("#datetimepicker1").datetimepicker ->
     format: 'yyyy-mm-dd hh:ii'

    jQuery(document).ready(->
      jQuery("#table1 tr:gt(0)").hover(
        -> jQuery(this).addClass("background-color: #cccc00;"),
        -> jQuery(this).removeClass("background-color: #cccc00;")
      )
    )

jQuery(document).on "ready turbolinks:load", ->
  if jQuery(".working-times-exmaine").length > 0
    new WorkingExamine jQuery(".working-times-exmaine")