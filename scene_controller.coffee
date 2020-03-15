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
    count = 1
    for code in window.card_list
      return if count > 5
      $('.js-card-list').append("<li data-code='#{code}'>#{window.Data.card_data[code]}</li>")
      count++
  
  @pop_card: ->
    window.Data.card_initialize if window.card_list.length
    code = window.card_list.pop()
    $('.js-card-list').append("<li data-code='#{code}'>#{window.Data.card_data[code]}</li>")
    



  
  
