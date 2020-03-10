# デッキを初期化
# 手札を引く
# お題が出る
# 手札を出す
# 結果表示
# 結果ごとの内部処理

require './deck.coffee'
require './scene_controller.coffee'
require './scene_start.coffee'
require './scene_pref_select.coffee'
require './scene_battle.coffee'
@scene = 0
@mydeck = null

$ ->
  do init = () ->
    scene_controller = new window.SceneController()
    scene_controller.scene_change('','start')

