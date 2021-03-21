;ストーリー最初から
*first
[cm]
[eval exp="tf.player="""]
[eval exp="tf.display="""]
[iscript]
tf.player = f.pname[Math.floor(Math.random()*f.number)]
tf.display = tf.player + "さんが選択して下さい"
[endscript]
[dialog type=alert text=&tf.display target="*start" color="0xff0000"]

[cm]

*start
[image layer="base" page="fore" storage=geek.png]

[chara_new name="me" storage="tommy2.png" jname=&tf.player]
[chara_new name="tommy2" storage="tommy2.png" jname="理系メガネ"]



@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[font color="black"]
[playbgm storage=normal.ogg]

[bg storage=geek.png time=3000]
#
Geekのオフィスでミーティング中[l]
[cm]

[chara_show name="tommy2"  top=30 height=800 width=500]
[font color="black"]
#tommy2
おーい、[emb exp=tf.player]の報告の番ンゴね[l]
[cm]

[playbgm storage=oko1.ogg]
[font color="black"]
#tommy2
あれ、、議事録書いてないけど、、。[l]
[cm]

[font color="black"]
#tommy2
[emb exp=tf.player]！！今日大事なミーティングって言ったはずンゴよ！！[l]
[cm]


[font color="black"]
#me
（やばい、、どうしよう、、）[l]
[cm]


@layopt layer=message0 visible=false
[glink x="380" y="200" text="昨日早寝しちゃって、、。" target="*select1" color="orange" size="20"]



[glink x="380" y="300" text="すみません！今書きます！" target="*select2" color="orange" size="20"]


[glink x="380" y="400" text="書いたつもりになってました、、" target="*select3" color="orange" size="20"]


[s]

*select1
[playbgm storage=oko2.ogg]
[cm]
@layopt layer=message0 visible=true
#tommy2
[font color="black"]
やることやってないのによく寝れるンゴね。[l]
[cm]
[font color="black"]
#tommy2
もう発言しないで欲しいンゴ。[l]
[cm]
[dialog type=alert text="【！罰ゲーム！】５分間ジェスチャーのみ！！" target="*second" color="0xff0000"]




*select2
[playbgm storage=oko2.ogg]
[cm]
@layopt layer=message0 visible=true
#tommy2
[font color="black"]
今から書いてももう遅いンゴ。[l]
[cm]
[font color="black"]
#tommy2
コンビニでなんか買ってくるンゴね。[l]
[cm]


[dialog type=alert text="【！罰ゲーム！】コンビニでみんなの好きな物を買ってくる！" target="*second" color="0xff0000"]



*select3
[playbgm storage=normal.ogg]
[cm]
@layopt layer=message0 visible=true
#tommy2
[font color="black"]
書いた　”つもり”　じゃね〜〜[l]
[cm]
[font color="black"]
#tommy2
しっかり確認しないt、、。[l]
[cm]
[font color="black"]
#tommy2
あ、ちゃんと書いてあったンゴ（笑）[l]
[cm]
[font color="black"]
#tommy2
すまんすまん！ワイの勘違いだったみたいンゴね〜〜[l]
[cm]
[dialog type=alert text="日目クリア！次の日に進む" target="*second"]
*second
[chara_hide name="tommy2"]
@jump storage=story7.ks target=*first


