;=====こっちが本編=====
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
[cm]
[cm]
[chara_hide name="mother"]
[image layer="base" page="fore" storage=park.jpg]
[chara_new name="rougai" storage="rougai_normal.PNG" jname="老害おじさん"]
[chara_new name="me" storage="mother.png" jname=&tf.player]
[chara_face name="rougai" face="angry" storage="rougai_angry.PNG"]
[chara_face name="rougai" face="sad" storage="rougai_hansei.PNG"]
[chara_mod name="mother" face="default"]


@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[font color="black"]
[playbgm storage=normal.ogg]

#me
3日目[l][r]
[font color="black"]
今日はだれにも怒られないといいな・・・[l]
気分転換に公園で散歩をしていた。[l]
[cm]
[chara_show name="rougai"]
[font color="black"]
しばらく歩くと目の前に見知らぬ、おじいちゃんが鳩の餌やりをしていた。[l]
[cm]
[font color="black"]


ここで鳩の餌やりは禁止ですよ[l][r]
[cm]
[font color="black"]
[playbgm storage=oko1.ogg]
#rougai

うるせえ！鳩がかわいそうだからしょうがないだろ！[l]
[cm]
[font color="black"]
それに…！普段週1で一緒にご飯を食べてた近所のタエさんとコロナで会えなくなって、寂しいんだよ…！[l]
[cm]

@layopt layer=message0 visible=false
[glink x="60" y="400" text="それって不倫ですか？" target="*select1" color="orange" size="20"]

[glink x="360" y="400" text="法律違反ですよ。" target="*select2" color="orange" size="20"]

[glink x="650" y="400" text="暇ですか？" target="*select3" color="orange" size="20"]


[s]

;それって不倫ですか？
*select1
[playbgm storage=oko2.ogg]
[cm]
@layopt layer=message0 visible=true
[chara_mod name="rougai" face="angry"]
[font color="black"]
#rougai
仕方ねえだろ！l]
[cm]
[font color="black"]
コロナで人と会えなくて寂しいんだよ！[l]
[cm]
[font color="black"]
[dialog type=alert text="【！罰ゲーム！】一分間面白い話を。" target="*bad"]

;とりあえず鳩に餌をやるのは法律違反です。
*select2
[playbgm storage=oko2.ogg]
[cm]
@layopt layer=message0 visible=true
[chara_mod name="rougai" face="angry"]
[font color="black"]
#rougai
あんたは何もわかってない！[l]
[cm]
[font color="black"]
ハトの餌をかけられた。[l]
[dialog type=alert text="【！罰ゲーム！】全力でコマネチ。" target="*bad"]

;確かに鳩はかわいそうですが、それよりも優先すべきことがあるのではないでしょうか？
*select3
[playbgm storage=normal.ogg]
[cm]
@layopt layer=message0 visible=true
[chara_mod name="rougai" face="angry"]
[font color="black"]
#rougai
コロナで全てを失った俺に何ができるって言うんだ！[l]
[cm]
[font color="black"]
#me
今からでもできることはありますよ！[l]
[cm]
[chara_mod name="rougai" face="sad"]
[font color="black"]
#rougai
そうか。俺にもまだ生きる資格はあるのか。[l]
[cm]
[font color="black"]
#me
はい！自信を持って生きていきましょう！[l]
とりあえず、、、警察行きましょうか。[l]
[cm]
[dialog type=alert text="三日目クリア！次の日に進む" target="*good"]



*good
[image layer="base" page="fore" storage=room1.jpg]
[cm]
@layopt layer=message0 visible=true
[font color="black"]
[chara_hide name="rougai"]
#
……その日の夜[l][r]
[cm]

#me
[font color="black"]
今日は怒られなかったぞ。[l][r]
明日も怒られないと良いな……。[l][r]
[cm]
@jump storage=story4.ks target=*first


*bad
[image layer="base" page="fore" storage=room1.jpg]
[cm]
@layopt layer=message0 visible=true
[font color="black"]
[chara_hide name="rougai"]
#
……その日の夜[l][r]
[cm]

#me
[font color="black"]
怒られてしまった……。[l][r]
明日は怒られないと良いな……。[l][r]
[cm]
@jump storage=story4.ks target=*first
