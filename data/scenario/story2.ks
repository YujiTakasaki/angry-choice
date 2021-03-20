*story2
[cm]
[cm]
[image layer="base" page="fore" storage=room1.jpg]
[chara_new name="mother" storage="mother.png" jname="母"]

[chara_show name="mother"]

@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[font color="black"]

2日目[l]
ねえちょっと、[l]
[cm]
[font color="black"]
今月の携帯料金すごい高いんだけど？[l]
[cm]
[font color="black"]
なんでこんなに高いわけ？[l]
[cm]

@layopt layer=message0 visible=false
[font color="black"]
[font size=15]

[locate x=100 y=300]
[button graphic="select2-1.png" target=*select1]

[locate x=400 y=300]
[button graphic="select2-2.png" target=*select2]

[locate x=700 y=300]
[button graphic="select2-3.png" target=*select3]


[s]

*select1
[cm]
@layopt layer=message0 visible=true
[font color="black"]
えーー。そんなわけは…（ガサゴソ）[l]
[cm]
[font color="black"]
あら、ごめんなさい。お父さんのを見ていたわ。[l]
[cm]
[font color="black"]
怒ってごめんなさいね。[l]
@layopt layer=message0 visible=false
[locate x=300 y=300]
[button graphic="next.png" target=*second]
[s]



*select2
[cm]
@layopt layer=message0 visible=true
[font color="black"]
は？何言ってるのよ。[l]
[cm]
[font color="black"]
言い訳するんじゃないよ！！[l]
[cm]
[font color="black"]
言い訳する息子なんていらないから！[l]
【！罰ゲーム！】隣の人につねられる。
@layopt layer=message0 visible=false
[locate x=300 y=300]
[button graphic="next.png" target=*second]
[s]


*select3
[cm]
@layopt layer=message0 visible=true
[font color="black"]
あら、口答えなんて度胸あるじゃない。[l]
[cm]
[font color="black"]
その度胸は認めてあげるわ。[l]
[cm]
[font color="black"]
度胸のあるあんたにはデコピンをあげるわ。[l]
[cm]
[font color="black"]
【！罰ゲーム！】隣の人にデコピンされる。[l]
@layopt layer=message0 visible=false
[locate x=300 y=300]
[button graphic="next.png" target=*second]
[s]
*second
[cm]

@jump storage=story3.ks target=*story3


