

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
[image layer="base" page="fore" storage=super.png]
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

#me
4日目[l][r]
[font color="black"]
今日はだれにも怒られないといいな・・・[l][r]
お使いを頼まれたので、スーパーで買い物をしていた。[l]
[cm]
[chara_show name="rougai"]
[font color="black"]
ふと気付くと目の前には昨日見た老人が立っていた。[l]
[cm]
[font color="black"]
#rougai
そんなもの持っていたら危ないだろ！！！[l]
[cm]
[font color="black"]
#me

老害は自分が手に持っていた、スマホを指差してそう怒鳴ってきた！[l]
[cm]
[font color="black"]

@layopt layer=message0 visible=false
[glink x="80" y="400" text="手に持っていただけ" target="*select1" color="orange" size="20"]

[glink x="350" y="400" text="なんじゃこの老害め！" target="*select2" color="orange" size="20"]

[glink x="650" y="400" text="人違い？無視した。" target="*select3" color="orange" size="20"]


[s]

;それって不倫ですか？
*select1
[cm]
@layopt layer=message0 visible=true
[chara_mod name="rougai" face="angry"]
[font color="black"]
#rougai
うるさい！そんな危険なものを持っている奴はけしからん！[l][r]
俺がそれを没収してやる！[l]
[cm]
[font color="black"]
スマホを奪われてしまった。[l]
[cm]
[font color="black"]
[dialog type=alert text="【！罰ゲーム！】全力パントマイム。" target="*bad"]

;とりあえず鳩に餌をやるのは法律違反です。
*select2
[cm]
@layopt layer=message0 visible=true
[chara_mod name="rougai" face="angry"]
[font color="black"]
#rougai
なんだてめーやるのか！？[l]
[cm]
[font color="black"]
顔を殴られて、スマホを落としてしまった。[l]
[dialog type=alert text="【！罰ゲーム！】目の前に座っている人の好きなところ3つあげよ" target="*bad"]

;確かに鳩はかわいそうですが、それよりも優先すべきことがあるのではないでしょうか？
*select3
[cm]
@layopt layer=message0 visible=true
[chara_mod name="rougai" face="angry"]
[font color="black"]
#?
ハイハイ。また勝手に外に出ちゃったのね。[l]
[cm]
[font color="black"]
[chara_mod name="rougai" face="sad"]
#rougai
ファ！？なぜワシはここにいるんだ？[l]
[cm]
[font color="black"]
#女性
はーい、また施設に戻りましょうね〜！[l]
[cm]
[font color="black"]
[chara_hide name="rougai"]
#me
老人は突然現れた若い女性に連れて行かれてしまった。[l]
あたりは静まりかえった。[l]
[cm]
[dialog type=alert text="四日目クリア！次の日に進む" target="*good"]



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
@jump storage=story5.ks target=*first


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
@jump storage=story5.ks target=*first
