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
        your_pref: window.your_pref
        opponent_pref: window.opponent_pref
      }

      window.SceneController.render_card_list()
      $('#card-list li').click ->
        $this = $ this
        card_code = $this.attr('data-code')
        your_rank = window.Data.rank_data[card_code][window.your_pref]
        opponent_rank = window.Data.rank_data[card_code][window.opponent_pref]
        window.SceneController.render_doms {
          your_rank: "#{your_rank}位"
          opponent_rank: "#{opponent_rank}位"
        }

        if your_rank < opponent_rank # win
          window.SceneController.render_doms {
            message: '勝ちました！ クリックして次の相手へ'
          }
        else #lose
          window.life--
          if window.life is 0 # game over
            window.SceneController.scene_change('battle', 'game-over')
            window.Data.initialize()
          else
            window.SceneController.render_doms {
              message: '負けました... もう一度チャレンジ！'
            }
            $('js-info-field').append('<button id="next-battle-button" class="js-next_battle_button">もう一度対戦！</button>')
            $('js-next-battle-button').click ->
              
              this.remove()


        


