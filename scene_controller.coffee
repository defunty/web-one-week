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
    card_code = window.card_list.pop()
    $('.js-card-list').append("<li data-code='#{card_code}'>#{window.Data.card_data[card_code]}</li>")

  @card_event: ($this) ->
    card_code = $this.attr('data-code')
    window.theme = $this.text()
    your_rank = window.Data.rank_data[card_code][window.your_pref]
    opponent_rank = window.Data.rank_data[card_code][window.opponent_pref]
    window.SceneController.render_doms {
      theme: "テーマ：#{window.theme}"
      your_rank: "#{your_rank}位 #{window.Data.value_data[card_code][your_pref]}#{window.Data.unit_data[card_code]}"
      opponent_pref: window.opponent_pref
      opponent_rank: "#{opponent_rank}位 #{window.Data.value_data[card_code][opponent_pref]}#{window.Data.unit_data[card_code]}"
    }
    $this.remove()
    window.SceneController.pop_card()

    if your_rank < opponent_rank # win
      window.opponent_pref = window.opponent_list.pop()
      window.SceneController.render_doms {
        message: "勝ちました！ 次の相手は 「#{window.opponent_pref}」"
        round: "Round #{46 - window.opponent_list.length}/46"
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
          opponent_pref: window.opponent_pref
        }
        $('js-info-field').append('<button id="next-battle-button" class="js-next_battle_button">もう一度対戦！</button>')
        $('js-next-battle-button').click ->
    



  
  
