class window.SceneController
  @scene_change: (now_scene, new_scene)->
    $(".js-schene-wrapper[data-scene-code='#{now_scene}']").addClass('d-none')
    $(".js-schene-wrapper[data-scene-code='#{new_scene}']").removeClass('d-none')

  @render_doms: (params_hash) ->
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
  
  @card_event: ($this) ->
    card_code = $this.attr('data-code')
    your_rank = window.Data.rank_data[card_code][window.your_pref]
    opponent_rank = window.Data.rank_data[card_code][window.opponent_pref]
    window.SceneController.render_doms {
      your_rank: "#{your_rank}位"
      opponent_rank: "#{opponent_rank}位"
    }
    $this.remove()
    window.SceneController.pop_card()
    

    if your_rank < opponent_rank # win
      window.SceneController.render_doms {
        message: '勝ちました！ クリックして次の相手へ'

      }
    else #lose
      window.life--
      if window.life is 0 # game over
        window.SceneController.scene_change('battle', 'start')
        window.SceneController.render_doms {
          game_over_message: '残念！もっと強い都道府県を選んでみてね'
        }
        window.Data.initialize()
      else
        window.SceneController.render_doms {
          message: '負けました... もう一度チャレンジ！'
          life: window.life
        }
        $('js-info-field').append('<button id="next-battle-button" class="js-next_battle_button">もう一度対戦！</button>')
        $('js-next-battle-button').click ->
    



  
  
