class LeftBar
	constructor: (@$elm)->
    @bind_events()

  bind_events: ()->
    
    @$elm.on "click", ".title-close", (evt)->
       $(this).parent().find('ul').toggle('nromal')
       $(this).parent().find('.glyphicon-menu-right').removeClass('glyphicon-menu-right').addClass('glyphicon-menu-down')
       $(this).removeClass('title-close')
       $(this).addClass('title-open')

    @$elm.on "click", ".title-open", (evt)->
       $(this).parent().find('ul').toggle('nromal')
       $(this).parent().find('.glyphicon-menu-down').removeClass('glyphicon-menu-down').addClass('glyphicon-menu-right')
       $(this).removeClass('title-open')
       $(this).addClass('title-close')


jQuery(document).on 'turbolinks:render', ->
  if $(document).find('body .left-bar').length > 0
    new LeftBar jQuery('.left-bar')
    
jQuery(document).on 'ready page:load', ->
  if $(document).find('body .left-bar').length > 0
    new LeftBar jQuery('.left-bar')