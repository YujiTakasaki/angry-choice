;ストーリー最初から
*first
[cm]
[image layer="base" page="fore" storage=room.jpg]
[chara_new name="mother" storage="mother.png" jname="母"]

[chara_show name="mother"]

@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[font color="black"]

ちょっと、あんた！[l]
[cm]
[font color="black"]
朝ご飯食べたもの出しっぱなしじゃない！[l]
[cm]
[font color="black"]
自分で食べたものぐらい自分で片づけなさい！[l]
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

*select1
[cm]
@layopt layer=message0 visible=true
[font color="black"]
あんたはいつも後で後でって…[l]
[cm]
[font color="black"]
本当にお父さんにそっくりね！[l]
[cm]
[font color="black"]
【！罰ゲーム！】お父さんの物まねをしろ！[l]
@layopt layer=message0 visible=false
[locate x=300 y=300]
[button graphic="next.png" target=*second]
[s]



*select2
[cm]
@layopt layer=message0 visible=true
[font color="black"]
あら、本当だわ。[l]
[cm]
[font color="black"]
怒ってごめんなさいね。[l]
@layopt layer=message0 visible=false
[locate x=300 y=300]
[button graphic="next.png" target=*second]
[s]


*select3
[cm]
@layopt layer=message0 visible=true
[font color="black"]
あんた、家にいるとずーーーと食べてるじゃない！[l]
[cm]
[font color="black"]
そんなんなら一生食べ続けてなさい！[l]
[cm]
[font color="black"]
【！罰ゲーム！】何か一品注文orコンビニおごり！[l]

@layopt layer=message0 visible=false
[locate x=300 y=300]
[button graphic="next.png" target=*second]
[s]
*second
[cm]

@jump storage=story2.ks target=*story2


