class Distribution
  constructor: (@$elm)->
    @bind_events()

  bind_events: ()->
    $("#browser").treeview({
      toggle: ()->
        console.log("%s was toggled.", $(this).find(">span").text()); 
    })

    @$elm.on "click", "#browser .check-item", (evt)=>
      if $(evt.target).is(':checked')
        if  $(evt.target).parent().find('ul').length >0
            console.log $(evt.target).parent().find('.check-item')
            $(evt.target).parent().find('.check-item').prop("checked",true)
      else
        if  $(evt.target).parent().find('ul').length >0
            console.log $(evt.target).parent().find('.check-item')
            $(evt.target).parent().find('.check-item').prop("checked",false)



jQuery(document).on 'turbolinks:render', ->
  if $(document).find('body .page-distribution').length > 0
    new Distribution jQuery('.page-distribution')
    
jQuery(document).on 'ready page:load', ->
  if $(document).find('body .page-distribution').length > 0
    new Distribution jQuery('.page-distribution')