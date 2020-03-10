$ ->
  $('.js-pref-list li').click (e) ->
    pref_id = $(e.currentTarget).attr('data-pref-id')
    window.deck = new window.Deck(pref_id)
    scene_controller = new window.SceneController()
    scene_controller.scene_change('pref-select', 'battle')
    scene_controller.load_info {
      life: window.life
      message: 'Round 1/47'
    }
