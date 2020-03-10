class window.SceneController
  scene_change: (new_scene)->
    $(".js-schene-wrapper").addClass('d-none')
    $(".js-schene-wrapper[data-id='#{new_scene}']").removeClass('d-none')
