class BuildTask
  constructor: (@$elm)->
    @bind_events()
    @add_class_to_tree(@$elm.find('#browser'))


  add_class_to_tree:($tree)->
    $tree.find('i').removeClass('glyphicon-folder-open').addClass('glyphicon-folder-close')
    $tree.find('.collapsable >i').removeClass('glyphicon-folder-close').addClass('glyphicon-folder-open')

  bind_events: ()->
    jQuery(".form_datetime").datetimepicker({
      format: "yyyy/m/dd",
      minView: 2,
      todayBtn: true
      });

    $("#browser").treeview({
      toggle: ()->
        console.log("%s was toggled.", $(this).find(">span").text()); 
    })

    @$elm.on "click", "#browser span", (evt)=>
      @$elm.find("#browser span").removeClass('selected')
      $(evt.target).addClass('selected')
      @add_class_to_tree(@$elm.find('#browser'))


    @$elm.on "click", ".calendar", (evt)=>
      evt.stopPropagation();
      jQuery(".form_datetime").datetimepicker();



    
jQuery(document).on 'ready page:load', ->
  if $(document).find('body .page-build-task').length > 0
    new BuildTask jQuery('.page-build-task')

jQuery(document).on 'turbolinks:render', ->
  if $(document).find('body .page-build-task').length > 0
    new BuildTask jQuery('.page-build-task')