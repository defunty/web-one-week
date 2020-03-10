$ ->
  $('.js-start').click ()->
    scene_controller = new window.SceneController()
    scene_controller.scene_change('start','pref-select')
    