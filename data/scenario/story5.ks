
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

*start
[image layer="base" page="fore" storage=room.jpg]

[chara_new name="me" storage="mother.png" jname=&tf.player]
[chara_new name="tommy" storage="tommy.png" jname="理系メガネ"]


@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=90 y=380 size=26]
[chara_config ptext="chara_name_area"]
[font color="black"]
[playbgm storage=normal.ogg]

[bg storage=takunomi.jpg time=0]

〜〜宅飲み中〜〜[l]
[cm]

[chara_new name="tommy" storage="tommy.png" jname="理系メガネ"]
[chara_show name="tommy" top=30 height=650 width=550 ]



[font color="black"]
#tommy
デュフフ、やっぱり飲み会は楽しいンゴ〜[l]
[cm]
[font color="black"]
#tommy
ちょっと眠いンゴねぇ(メガネを置く）[l][cm]

[font color="blue"]
”パリンッ”[l][cm]
[font color="black"]
#me
あ、メガネ、、[l][cm]

[playbgm storage=oko1.ogg]
[font color="black"]
#tommy
ああ！！ワイのメガネ！！[l][cm]

[font color="black"]
#tommy
どうしてくれるンゴ！！[l][cm]



@layopt layer=message0 visible=false
[glink x="300" y="200" text="床に置くのも悪いと思います。" target="*select1" color="orange" size="20"]



[glink x="300" y="300" text="裸眼のトミーさんが一番ですよ！" target="*select2" color="orange" size="20"]


[glink x="300" y="400" text="まあまあ飲んで飲んで！" target="*select3" color="orange" size="20"]


[s]

*select1
[playbgm storage=oko2.ogg]
[cm]
@layopt layer=message0 visible=true
[font color="black"]
#tommy
ワイが悪いっていうんか！！[l]
[cm]
[font color="black"]
#tommy
そんな奴はもっと飲ませてやる！！[l]
[cm]
[dialog type=alert text="【！罰ゲーム！】持ってるグラスのお酒を全部飲む！！" target="*second" color="0xff0000"]




*select2
[playbgm storage=oko2.ogg]
[cm]
@layopt layer=message0 visible=true

[font color="black"]
#tommy
デュフフフフフフフフ[l]
[cm]
[font color="black"]
#tommy
調子いい奴ンゴね〜〜[l]
[cm]
[font color="black"]
#tommy
もっと飲むンゴ！！[l]
[cm]


[dialog type=alert text="【！罰ゲーム！】持ってるグラスのお酒を半分飲む！" target="*second" color="0xff0000"]



*select3
[playbgm storage=normal.ogg]
[cm]
@layopt layer=message0 visible=true
[font color="black"]
#tommy
おっおい今はメガネの話をっ！[l]
[cm]
[font color="black"]
#tommy
やめるんご！これ以上は飲めない！！[l]
[cm]
[font color="black"]
#tommy
も、もうやめてクレメンス〜〜！[l]
[dialog type=alert text="日目クリア！次の日に進む" target="*second"]



*second
[chara_hide name="tommy"]
@jump storage=story6.ks target=*first


