$ ->
  $('.js-start').click ()->
    window.opponent_list = window.Data.random_pref_data

    window.SceneController.scene_change('start','pref-select')

    window.SceneController.render_pref_list()
    window.SceneController.create_event_pref_list()



        


