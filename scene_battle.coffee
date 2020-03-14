$ ->
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
        message: '勝ちました！ クリックで次へ'
      }
    else #lose
      window.life--
      scene_change('battle', 'game-over') if window.life is 0
      window.SceneController.render_doms {
        message: '負けました...'
      }


