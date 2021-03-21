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

[image layer="base" page="fore" storage=okujyo.jpg]


[chara_new name="teacher" storage="teacherangry.png" jname="先生" ]
[chara_new name="me" storage="mother.png" jname="僕"]
[chara_face name="teacher" face="happy" storage="teacherhappy.png"]



@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=90 y=380 size=26]
[chara_config ptext="chara_name_area"]

[font color="black"]
#me
はあ…。[l]
なんだかみんなに怒られてばかりでやる気が出ないなあ。[l]
[cm]
[font color="black"]
授業に戻らなきゃなのに空がきれいだなあ。[l]
[cm]

[chara_show name="teacher" top="30"]
#teacher
[font color="black"]
おい。[l]
[cm]
[font color="black"]
#me
！！[l]
やば！先生に見つかった！[l]
[cm]
#teacher
[font color="black"]
お前授業さぼってここで何しているんだ？[l]
[cm]
[font color="black"]
まさかさぼりじゃないだろうな？[l]
[cm]
#me
[font color="black"]
（あなたの授業が嫌いで逃げたんですよ…！）[l]
[cm]
[font color="black"]
（なんて、いえないよなあ。）[l]
[cm]
[font color="black"]
（平穏に切り抜けたい！）[l]

@layopt layer=message0 visible=false
[glink x="100" y="400" text="体調が悪くて…" target="*select1" color="orange" size="20"]



[glink x="380" y="400" text="日光浴中です。" target="*select2" color="orange" size="20"]


[glink x="650" y="400" text="空を見て感動してました！" target="*select3" color="orange" size="20"]


[s]

*select1
[cm]
@layopt layer=message0 visible=true
#teacher
[font color="black"]
何を言っているんだ。[l]
[cm]
[font color="black"]
体調が悪ければ保健室に行くだろう。[l]
[cm]
[font color="black"]
体調が悪いなら食欲も出ないだろうな。[l]
[cm]
[font color="black"]
今日の昼飯は俺が貰おう。[l]
[dialog type=alert text="【！罰ゲーム！】食べ物を一つ取り上げる！" target="*second" color="0xff0000"]




*select2
[cm]
@layopt layer=message0 visible=true
#teacher
[font color="black"]
日光浴か…[l]
[cm]
[font color="black"]
お、お前は植物なのか？[l]
[cm]
[font color="black"]
ならしゃべるはずがないだろう。[l]
[cm]
[font color="black"]
お前今日一日中喋るんじゃないぞ。[l]
[dialog type=alert text="【！罰ゲーム！】5分間話してはいけない！" target="*second" color="0xff0000"]



*select3
[cm]
@layopt layer=message0 visible=true
[chara_mod name="teacher" face="happy"]
#teacher
[font color="black"]
空に感動していたのか。[l]
確かに今日の空はきれいだよな。[l]
[cm]
[font color="black"]
先生も昔はこうやって授業をさぼっていたよ。[l]
[cm]
[font color="black"]
なんだか、お前の気持ちもわかる気がするよ。[l]
[cm]
[font color="black"]
今日のところは見逃してやろう。[l]
先生も少し休んで行こう。
[dialog type=alert text="八日目クリア！次の日に進む" target="*second"]



*second

@jump storage=story9.ks target=*story9
