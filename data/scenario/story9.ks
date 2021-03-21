; これを書けば、誰が選択するかを表示できる。
*first
[cm]
[eval exp="tf.player="""]
[eval exp="tf.display="""]
[iscript]
tf.player = f.pname[Math.floor(Math.random()*f.number)]
tf.display = tf.player + "さんが選択して下さい"
[endscript]
[dialog type=alert text=&tf.display target="*start" color="0xff0000"]

;ストーリー最初から
*start
[cm]
[chara_hide name="teacher" top="30"]

[image layer="base" page="fore" storage=michi.jpg]


[chara_new name="yakuza" storage="yakuzaangry.png" jname="やくざ" ]
[chara_new name="me" storage="mother.png" jname=&tf.player]
[chara_face name="yakuza" face="happy" storage="yakuzahappy.png"]



@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=90 y=380 size=26]
[chara_config ptext="chara_name_area"]
[playbgm storage=normal.ogg]

[font color="black"]
学校の帰り道…[l]
[cm]
[font color="black"]
#me
空が暗くなってきたぞ[l]
[cm]
[font color="black"]
雨が降ってきた…。[l]
[cm]
[font color="black"]
ちゃんと朝天気予報見て傘を持ってきてよかった！[l]
[cm]
[chara_show name="yakuza" ]
[cm]
#yakuza
[font color="black"]
くそ…[l]
雨が降ってきちまった。[l]
[cm]
[font color="black"]
傘なんか持ってきてねえよ…。[l]
[cm]
[font color="black"]
#me
ばかだな。[l]
天気予報を見なかったのか。[l]
[cm]
[playbgm storage=oko1.ogg]
#yakuza
[font color="black"]
おい、そこの小僧。[l]
[cm]
[font color="black"]
#me
！！[l]
[font color="black"]
最悪だ…声かけられちゃた。[l]
[cm]
[font color="black"]
#yakuza
お前傘もってるじゃねえか。[l]
[cm]
[font color="black"]
俺に貸せ。[l]
[cm]
#me
[font color="black"]
（えーーーーーー！）[l]
（絶対に嫌だよ…）[l]
[cm]
[font color="black"]
こ、こんな土砂降りの中濡れて帰ったら[l]
僕風邪ひいて期末テスト受けれなくなっちゃいますよ！[l]
[cm]
[font color="black"]
#yakuza
[font color="black"]
は？[l]
そんなん知らねえよ。[l]
[cm]
[font color="black"]
貸さなかったら指の骨折ってテスト受けられなくするぞ？[l]
[cm]
#me
[cm]
[font color="black"]
（どうしよう！？）[l]

@layopt layer=message0 visible=false
[glink x="80" y="400" text="この傘穴空いてますよ" target="*select1" color="orange" size="20"]



[glink x="380" y="400" text="水も滴るいい男♡" target="*select2" color="orange" size="20"]


[glink x="660" y="400" text="走って逃げる" target="*select3" color="orange" size="20"]


[s]

*select1
[playbgm storage=oko2.ogg]
[cm]
@layopt layer=message0 visible=true
#yakuza
[font color="black"]
はーーーー？[l]
[cm]
[font color="black"]
まじかよ。[l]
つかえねえな[l]
[cm]
[font color="black"]
どうせ使えない奴はだいたいマザコンなんだよなあ。[l]
[cm]
[font color="black"]
ぼくちんは早く家に帰ってママにカラダ拭いてもらいな。[l]
[dialog type=alert text="【！罰ゲーム！】今日の一人称を「ぼくちん」にしろ！" target="*second" color="0xff0000"]




*select2
[playbgm storage=normal.ogg]
[cm]
@layopt layer=message0 visible=true
[chara_mod name="yakuza" face="happy"]
#yakuza
[font color="black"]
お、そうか？？[l]
[cm]
[font color="black"]
今日この後は女と遊ぶからできるだけいい男でいたいな…。[l]
[cm]
[font color="black"]
ちょうどよかった！[l]
[cm]
[font color="black"]
きょうは濡れて帰ろう！[l]
[dialog type=alert text="九日目クリア！次の日に進む" target="*second"]



*select3
[playbgm storage=oko2.ogg]
[cm]
@layopt layer=message0 visible=true
#yakuza
[font color="black"]
おい！[l]
まちやがれ…！[l]
[cm]
[font color="black"]
#me
（やくざめちゃくちゃ足が速い。追いつかれる。）[l]
[cm]
[font color="black"]
#yakuza
おいおい。[l]
[cm]
[font color="black"]
元陸上部の俺から逃げようなんて無駄なんだよ。[l]
[cm]
[font color="black"]
悔しかったらカラダ鍛えな。[l]
[dialog type=alert text="【！罰ゲーム！】腹筋30回！" target="*second" color="0xff0000"]



*second

@jump storage=story10.ks target=*first
