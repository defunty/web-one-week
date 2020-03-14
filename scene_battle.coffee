$ ->
  $('#card-list li').click ->
    $this = $ this
    card_code = $this.attr('data-code')
    my_rank = window.Data.rank_data[card_code][window.your_pref]
    opponent_rank = window.Data.rank_data[card_code][window.opponent_pref]
    window.SceneController.render_doms {
      my_rank: my_rank
      opponent_rank: opponent_rank
    }