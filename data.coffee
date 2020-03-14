# https://www.maff.go.jp/j/tokei/kouhyou/sakumotu/
# https://www.e-stat.go.jp/stat-search/files?page=1&layout=datalist&toukei=00500215&tstat=000001013427&cycle=7&year=20180&month=0&tclass1=000001032287&tclass2=000001032927&tclass3=000001134463
# https://uub.jp/pdr/
# https://news.livedoor.com/article/detail/13320505/
# https://origamijapan.net/origami/2018/05/14/onsen-area-list/
class window.Data
  #@pref_code = {
  #  '北海道':1,'青森県'：2,'岩手県':3,'宮城県':4,'秋田県':5,'山形県':6,'福島県':7,
  #  '茨城県':8,'栃木県'：9,'群馬県':10,'埼玉県':11,'千葉県':12,'東京都':13,'神奈川':14,
  #  '新潟県':15,'富山県'：16,'石川県':17,'福井県':18,'山梨県':19,'長野県':20,
  #  '岐阜県':21,'静岡県'：22,'愛知県':23,'三重県':24,
  #  '滋賀県':25,'京都府'：26,'大阪府':27,'兵庫県':28,'奈良県':29,'和歌山':30,
  #  '鳥取県':31,'島根県'：32,'岡山県':33,'広島県':34,'山口県':35,
  #  '徳島県':36,'香川県'：37,'愛媛県':38,'高知県':39,
  #  '福岡県':40,'佐賀県'：41,'長崎県':42,'熊本県':43,'大分県':44,'宮崎県':45,'鹿児島県':46,'沖縄県':47
  #}

  master_pref = '北海道,青森県,岩手県,宮城県,秋田県,山形県,福島県,茨城県,栃木県,群馬県,埼玉県,千葉県,東京都,神奈川,新潟県,富山県,石川県,福井県,山梨県,長野県,岐阜県,静岡県,愛知県,三重県,滋賀県,京都府,大阪府,兵庫県,奈良県,和歌山,鳥取県,島根県,岡山県,広島県,山口県,徳島県,香川県,愛媛県,高知県,福岡県,佐賀県,長崎県,熊本県,大分県,宮崎県,鹿児島,沖縄県'
  master_card = {}
  master_rank = {}

  # H26 https://origamijapan.net/origami/2018/05/14/onsen-area-list/
  master_card['onsen'] = '温泉数'
  master_rank['onsen'] = '北海道,長野県,新潟県,福島県,青森県,秋田県,静岡県,群馬県,鹿児島,千葉県,山形県,宮城県,兵庫県,岩手県,富山県,栃木県,三重県,岐阜県,広島県,大分県,熊本県,石川県,福岡県,和歌山,山口県,島根県,福井県,京都府,大阪府,岡山県,茨城県,宮崎県,愛媛県,高知県,神奈川,愛知県,奈良県,長崎県,徳島県,山梨県,香川県,東京都,埼玉県,佐賀県,滋賀県,鳥取県,沖縄県'
  # https://prefecture.gontawan.com/ranking_area.html
  master_card['menseki'] = '面積'
  master_rank['menseki'] = '北海道,岩手県,福島県,長野県,新潟県,秋田県,岐阜県,青森県,山形県,鹿児島,広島県,兵庫県,静岡県,宮崎県,熊本県,宮城県,岡山県,高知県,島根県,栃木県,群馬県,大分県,山口県,茨城県,三重県,愛媛県,愛知県,千葉県,福岡県,和歌山,京都府,山梨県,富山県,福井県,石川県,徳島県,長崎県,滋賀県,埼玉県,奈良県,鳥取県,佐賀県,神奈川,沖縄県,東京都,大阪府,香川県'
  # 生活満足度ランキング https://diamond.jp/articles/-/228904
  # https://uub.jp/rnk/p_j.html
  master_card['jinkou'] = '人口'
  master_rank['jinkou'] = '東京都,神奈川,大阪府,愛知県,埼玉県,千葉県,兵庫県,北海道,福岡県,静岡県,茨城県,広島県,京都府,宮城県,新潟県,長野県,岐阜県,栃木県,群馬県,岡山県,福島県,三重県,熊本県,鹿児島,沖縄県,滋賀県,山口県,愛媛県,奈良県,長崎県,青森県,岩手県,石川県,大分県,山形県,宮崎県,富山県,秋田県,香川県,和歌山,佐賀県,山梨県,福井県,徳島県,高知県,島根県,鳥取県'
  # 人口密度 https://uub.jp/rnk/p_j.html
  master_card['mitudo'] = '人口密度'
  master_rank['mitudo'] = '東京都,大阪府,神奈川,埼玉県,愛知県,千葉県,福岡県,兵庫県,沖縄県,京都府,香川県,茨城県,静岡県,奈良県,滋賀県,佐賀県,広島県,長崎県,宮城県,三重県,群馬県,栃木県,石川県,岡山県,富山県,愛媛県,熊本県,山口県,和歌山,岐阜県,福井県,山梨県,大分県,新潟県,徳島県,鹿児島,鳥取県,長野県,宮崎県,福島県,青森県,山形県,島根県,高知県,秋田県,岩手県,北海道'
  # 人口増加率 https://uub.jp/rnk/p_l.html
  master_card['jinkou_zoukaritu'] = '人口増加率'
  master_rank['jinkou_zoukaritu'] = '東京都,沖縄県,埼玉県,愛知県,千葉県,神奈川,福岡県,滋賀県,大阪府,京都府,広島県,兵庫県,宮城県,石川県,岡山県,栃木県,静岡県,茨城県,群馬県,三重県,香川県,岐阜県,富山県,熊本県,佐賀県,長野県,福井県,奈良県,北海道,山梨県,大分県,宮崎県,鹿児島,島根県,鳥取県,愛媛県,福島県,山口県,新潟県,徳島県,長崎県,和歌山,岩手県,山形県,高知県,青森県,秋田県'
  # ファミリーマートの数 https://uub.jp/pdr/m/c_3.html
  master_card['famima'] = 'ファミリーマートの数'
  master_rank['famima'] = '東京都,愛知県,大阪府,神奈川,埼玉県,千葉県,兵庫県,福岡県,静岡県,三重県,宮城県,岐阜県,茨城県,沖縄県,京都府,鹿児島,広島県,長野県,石川県,岡山県,北海道,愛媛県,栃木県,青森県,熊本県,岩手県,福島県,新潟県,滋賀県,富山県,長崎県,福井県,秋田県,山形県,奈良県,香川県,宮崎県,群馬県,大分県,和歌山,高知県,山口県,徳島県,山梨県,佐賀県,鳥取県,島根県'

  @pref_data = []
  _data_array = []
  data_array = master_pref.split(',')
  for v,k in data_array
    @pref_data.push v
    # todo リファクタリング
    _data_array.push v

  @card_data = {}
  for v,k in master_card
    @card_data[k] = v

  @rank_data = {}
  for k,v of master_rank
    data_array = v.split(',')
    data = {}
    for k2,v2 in data_array
      data[k2] = v2 + 1
    throw new Error "[001]" if Object.keys(data).length isnt 47
    @rank_data[k] = data

  @initialize: ->
    @random_pref_data = []
    for v in @pref_data
      rand = Math.floor(Math.random() * Math.floor(47 - @random_pref_data.length))
      @random_pref_data.push _data_array[rand]
      _data_array.splice(rand,1)
    window.life = 3
    window.your_pref = null
    window.opponent_pref = null
    window.opponent_list = null
