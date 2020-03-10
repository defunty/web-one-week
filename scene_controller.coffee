class window.SceneController
  scene_change: (now_scene, new_scene)->
    console.log(new_scene)
    $(".js-schene-wrapper[data-scene-code='#{now_scene}']").addClass('d-none')
    $(".js-schene-wrapper[data-scene-code='#{new_scene}']").removeClass('d-none')

  load_info: (info) ->
    console.log(info)
    for k, v of info
      $(".js-#{k}").text(v)
