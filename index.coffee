# デッキを初期化
# 手札を引く
# お題が出る
# 手札を出す
# 結果表示
# 結果ごとの内部処理

window.deck = null
window.life = 3
window.your_pref = null
window.opponent_pref = null
window.opponent_list = null

require './data.coffee'
require './deck.coffee'
require './scene_controller.coffee'
require './scene_start.coffee'
require './scene_pref_select.coffee'
require './scene_battle.coffee'

$ ->
  do init = () ->
    #result = window.Data.getter_data()
    #console.log(result)
    # result = window.Data.data['orange']['北海道']
    
    window.SceneController.scene_change('','start')

