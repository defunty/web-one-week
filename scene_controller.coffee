class window.SceneController
  @scene_change: (now_scene, new_scene)->
    $(".js-schene-wrapper[data-scene-code='#{now_scene}']").addClass('d-none')
    $(".js-schene-wrapper[data-scene-code='#{new_scene}']").removeClass('d-none')

  @render_doms: (params_hash) ->
    console.log(params_hash)
    for k, v of params_hash
      $(".js-#{k}").text(v)

  @render_pref_list: ->
    for v in window.Data.pref_data
      $('.js-pref-list').append("<li data-pref-name='#{v}'>#{v}</li>")

  @render_card_list: ->
    console.log 'lll'
    console.log window.card_list
    for v in window.card_list
      console.log v
      $('.js-card-list').append("<li data-doce='#{v}'>#{window.Data.card_data[v]}</li>")

  
  
