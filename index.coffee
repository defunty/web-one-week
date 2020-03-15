# デッキを初期化
# 手札を引く
# お題が出る
# 手札を出す
# 結果表示
# 結果ごとの内部処理

require './data.coffee'
require './deck.coffee'
require './scene_controller.coffee'
require './scene_start.coffee'
require './scene_pref_select.coffee'
require './scene_battle.coffee'

window.Data.initialize()

$ ->
  do init = () ->
    window.SceneController.scene_change('','start')

