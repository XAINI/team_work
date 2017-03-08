class WorkingExamine
  constructor: (@$eml)->
    @bind_event()

  bind_event: ->
    jQuery("#datetimepicker").datetimepicker ->
     format: 'yyyy-mm-dd hh:ii'

    jQuery("#datetimepicker1").datetimepicker ->
     format: 'yyyy-mm-dd hh:ii'

class WorkingApprovalHistory
  constructor: (@$eml)->
    @bind_event()

  bind_event: ->
    jQuery("#datetimepicker").datetimepicker ->
     format: 'yyyy-mm-dd hh:ii'

    jQuery("#datetimepicker1").datetimepicker ->
     format: 'yyyy-mm-dd hh:ii'

jQuery(document).on "ready turbolinks:load", ->
  if jQuery(".working-times-exmaine").length > 0
    new WorkingExamine jQuery(".working-times-exmaine")

jQuery(document).on "ready turbolinks:load", ->
  if jQuery(".working-times-approval-history").length > 0
    new WorkingApprovalHistory jQuery(".working-times-approval-history")
  