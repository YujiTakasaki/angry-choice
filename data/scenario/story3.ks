;ストーリー最初から
*story3
[cm]
[image layer="base" page="fore" storage=room.jpg]
[chara_new name="rougai" storage="rougai_normal.PNG" jname="老害爺さん"]

;[chara_show name="mother"]

@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[font color="black"]

気分転換に公園で散歩をしていた。[l]
しばらく歩くと目の前に見知らぬ、おじいちゃんが鳩の餌やりをしていた。[l]
[cm]
[font color="black"]

[chara_show name="rougai" wait=true left=1300 top=100]
ここで鳩の餌やりは禁止ですよ[l]
[cm]
[font color="black"]
うるせえ！鳩がかわいそうだからしょうがないだろ！[l]
[cm]
それに…！普段週1で一緒にご飯を食べてた近所のタエさんとコロナで会えなくなって、寂しいんだよ…！[l]
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

;それって不倫ですか？
*select1
[cm]
@layopt layer=message0 visible=true
[font color="black"]
仕方ねえだろ！l]
[cm]
[font color="black"]
コロナで人と会えなくて寂しいんだよ！[l]
[cm]
[font color="black"]
【！罰ゲーム！】最高のポーズをスマホで自撮りする！[l]
@jump target=*common

;とりあえず鳩に餌をやるのは法律違反です。
*select2
[cm]
@layopt layer=message0 visible=true
[font color="black"]
あんたは何もわかってない！[l]
[cm]
[font color="black"]
ハトの餌をかけられた。[l]
@layopt layer=message0 visible=false
[locate x=300 y=300]
[button graphic="next.png" target=*second]
[s]
*second
[cm]

@jump target=*common

;確かに鳩はかわいそうですが、それよりも優先すべきことがあるのではないでしょうか？
*select3
[cm]
@layopt layer=message0 visible=true
[font color="black"]
コロナで全てを失った俺に何ができるって言うんだ・・・[l]
[cm]
[font color="black"]
今からでもできることはありますよ！[l]
[cm]
[font color="red"]
そうか。俺にもまだ生きる資格はあるのか。[l]
[cm]
[font color="red"]
はい！自信を持って生きていきましょう！[l]
とりあえず、、、警察行きましょうか。[l]
[cm]
[font color="red"]
@jump storage=story4.ks target=*story4



*common
[cm]
@layopt layer=message0 visible=false
[image layer=1 storage=goal2.png visible=true top=100 left=100 width=700]
[locate x=200 y=300 ]
[button graphic="start.png" target=*start x=300]
[s]
*start
[cm]
[chara_hide name=rougai]
[freeimage layer=1]

@jump storage=first.ks target=*title

