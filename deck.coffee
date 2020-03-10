class window.Deck
  @test: 1
  
  @staticFunc: ->
    # do something...

  constructor: (code, pref)->
    console.log(code)
    console.log(pref)
    
    @code = code # 一意なコード
    @name = pref

  initializeDeck: ->
    console.log('initial')
