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
[chara_hide name="yakuza" top="30"]

[image layer="base" page="fore" storage=machi2.jpg]


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

[cm]
[font color="black"]
#me
やっと雨がやんでくれた。[l]
[cm]
[font color="black"]
ついでに新しい傘でも買っていこう。[l]

[cm]
[chara_show name="yakuza" ]
[cm]
[playbgm storage=oko1.ogg]
#yakuza
[font color="black"]
おい。[l]
お前今日はよく会うな。[l]
[cm]
[font color="black"]
#me
げ！！[l]
またこいつかよ…。[l]
[cm]
[chara_mod name="yakuza" face="happy"]
#yakuza
[font color="black"]
さっきはすまなかったな。[l]
[cm]
[font color="black"]
飯おごってやるよ。[l]
[cm]
[font color="black"]
#me
えーーーーー。[l]
[font color="black"]
今日の夕飯は大好きなオムライスだから家で食べたいな。[l]
[cm]
[font color="black"]
[chara_mod name="yakuza" face="default"]
#yakuza
ん？[l]
どうした。おれとの飯が嫌なのか。[l]
[cm]

#me
[font color="black"]
(どうしよう…)[l]


@layopt layer=message0 visible=false
[glink x="70" y="400" text="おなかすいてません。" target="*select1" color="orange" size="20"]



[glink x="370" y="400" text="ママのオムライスがいい" target="*select2" color="orange" size="20"]


[glink x="680" y="400" text="太りますよ。" target="*select3" color="orange" size="20"]


[s]

*select1
[playbgm storage=oko2.ogg]
[cm]
@layopt layer=message0 visible=true
#yakuza
[font color="black"]
お前俺とは飯がくえねえってことか！[l]
[cm]
[font color="black"]
いい度胸だな。[l]
[cm]
[font color="black"]
その度胸で何か一発芸してみな。[l]

[dialog type=alert text="【！罰ゲーム！】一発芸をしろ！" target="*second" color="0xff0000"]




*select2
[playbgm storage=oko2.ogg]
[cm]
@layopt layer=message0 visible=true
#yakuza
[font color="black"]
そういえばお前マザコンだったな。[l]
[cm]
[font color="black"]
くそ、、[l]
俺もママにあいたくなちゃったじゃねえか！[l]
[cm]
[font color="black"]
おいお前！[l]
俺のママになれ！[l]

[dialog type=alert text="【！罰ゲーム！】自分の母親のマネをしろ！" target="*second" color="0xff0000"]



*select3
[playbgm storage=normal.ogg]
[cm]
@layopt layer=message0 visible=true
[chara_mod name="yakuza" face="happy"]
#yakuza
[font color="black"]
それもそうだな。[l]
[cm]
[font color="black"]
お前俺の健康に気を使ってくれてありがとうな。[l]
[cm]
[font color="black"]
お前はいいやつだ。[l]

[dialog type=alert text="十日目クリア！次の日に進む" target="*second" color="0xff0000"]



*second

[chara_hide name="yakuza"]
@jump storage=epilogue.ks target=*start
