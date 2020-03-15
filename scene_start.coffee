$ ->
  $('.js-start').click ()->
    window.opponent_list = window.Data.random_pref_data

    window.SceneController.scene_change('start','pref-select')

    window.SceneController.render_pref_list()
    $('.js-pref-list li').click (e) ->
      window.your_pref = $(e.currentTarget).attr('data-pref-name')
      window.opponent_list = window.opponent_list.filter (element) ->
        element isnt window.your_pref

      window.SceneController.scene_change('pref-select', 'battle')
      window.opponent_pref = window.opponent_list.pop()
      window.SceneController.render_doms {
        life: window.life
        round: "Round #{46 - window.opponent_list.length}/46"
        message: '勝負カードを選んでね'
        your_pref: "#{window.your_pref}（あなた）"
        opponent_pref: "#{window.opponent_pref}"
      }

      window.SceneController.render_card_list()
      $('#card-list').on 'click', 'li', ->
        window.SceneController.card_event($(this))



        


