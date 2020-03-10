$ ->
  $('.js-pref-list').click () ->
    scene_controller = new window.SceneController()
    scene_controller.scene_change('pref-select', 'battle')