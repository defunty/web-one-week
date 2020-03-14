
#class window.Pref
#  @pref_data = window.Data.pref_data
#  @random_pref_data = []
#
#  for k,v in window.Data.pref_data
#    rand = Math.floor(Math.random() * Math.floor(47 - @random_pref_data.length) )
#    @random_pref_data.push window.Data.pref_data[rand]
#
#  @exclude_from_random_pref: (exclude) ->
#    @random_pref_data.filter (item) ->
#      return item isnt exclude
#  @pop_from_random_pref: ->
#    return @random_pref_data.pop()
