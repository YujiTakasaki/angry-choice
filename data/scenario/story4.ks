;ストーリー最初から
*story4
[cm]
[image layer="base" page="fore" storage=room.jpg]
[chara_new name="rougai" storage="rougai_normal.PNG" jname="老害爺さん"]

;[chara_show name="mother"]

@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[font color="black"]

お使いを頼まれたので、スーパーで買い物をしていた。[l]
ふと気付くと目の前には昨日見た老人が立っていた。[l]
[cm]
[font color="black"]

[chara_show name="rougai"]

そんなもの持っていたら危ないだろ！！！[l]
[cm]
[font color="black"]
[l]
[cm]
老人は私が手に持っていた、スマホを指差してそう怒鳴ってきた！[l]
[cm]

@layopt layer=message0 visible=false
[font color="black"]
[font size=15]
選択してね。
[locate x=100 y=300]
[button graphic="select1.png" target=*select1]

[locate x=400 y=300]
[button graphic="select2.png" target=*select2]

[locate x=700 y=300]
[button graphic="select3.png" target=*select3]


[s]

;ただ手に持っていただけなんですが・・・？
*select1
[cm]
@layopt layer=message0 visible=true
[font color="black"]
うるさい！そんな危険なものを持っている奴はけしからん！[l]
俺がそれを没収してやる！[l]
[cm]
[font color="black"]
スマホを奪われてしまった。[l]
[cm]
[font color="black"]
【！罰ゲーム！】全力パントマイム[l]
@jump target=*common

;なんじゃこの老害め！
*select2
[cm]
@layopt layer=message0 visible=true
[font color="black"]
なんだてめーやるのか！？[l]
[cm]
[font color="black"]
顔を殴られて、スマホを落としてしまった。[l]
@layopt layer=message0 visible=false
[locate x=300 y=300]
[button graphic="next.png" target=*second]
[s]
*second
[cm]

@jump target=*common

;人違い？無視した。
*select3
[cm]
@layopt layer=message0 visible=true
[font color="black"]
ハイハイ。また外出ちゃったのね。[l]
[cm]
[font color="black"]
ファ！？なぜワシはここにいるんだ？[l]
[cm]
[font color="red"]
はーい、また施設に戻りましょうね〜！[l]
[cm]
[font color="red"]
老人は突然現れた若い女性に連れて行かれてしまった。[l]
あたりは静まりかえった。[l]
[cm]
[font color="red"]
@jump storage=story5.ks target=*story5



*common
[cm]
@layopt layer=message0 visible=false
[image layer=1 storage=goal2.png visible=true top=100 left=100 width=700]
[locate x=200 y=300 ]
[button graphic="start.png" target=*start x=300]
[s]
*start
[cm]
[chara_hide name=mother]
[freeimage layer=1]

@jump storage=first.ks target=*title

