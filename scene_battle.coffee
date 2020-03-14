#@opponent = window.Data.data['']

@message = '相手は'

$ ->
  $('#card-list li').click ->
    $this = $ this
    card_code = $this.attr('data-code')
    console.log(card_code)
    my_rank = window.Data.data[window.pref_data]
    opponent_rank = 
    console.log()
    
    #dat = window.Data.data['']['北海道']
