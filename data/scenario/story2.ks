*story2
[cm]
[cm]
[chara_hide name="mother"]
[image layer="base" page="fore" storage=room1.jpg]
[chara_new name="mother" storage="mother.png" jname="母"]
[chara_new name="me" storage="mother.png" jname="僕"]
[chara_face name="mother" face="bikkuri" storage="bikkuri.png"]
[chara_face name="mother" face="happy" storage="happy.png"]
[chara_mod name="mother" face="default"]


@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[font color="black"]

#me
2日目[l]
[font color="black"]
今日はだれにも怒られなさそうだぞ！！[l]
[cm]
[chara_show name="mother"]
#mother
[font color="black"]
ねえちょっと、[l]
[cm]
[font color="black"]
今月の携帯料金すごい高いんだけど？[l]
[cm]
[font color="black"]
なんでこんなに高いわけ？[l]
[cm]

@layopt layer=message0 visible=false
[glink x="100" y="400" text="自分じゃないよ" target="*select1" color="orange" size="20"]

[glink x="350" y="400" text="就活で使った。" target="*select2" color="orange" size="20"]

[glink x="600" y="400" text="うるせーな。" target="*select3" color="orange" size="20"]


[s]

*select1
[cm]
@layopt layer=message0 visible=true
[chara_mod name="mother" face="bikkuri"]
[font color="black"]
えーー。そんなわけは…（ガサゴソ）[l]
[cm]
[chara_mod name="mother" face="happy"]
[font color="black"]
あら、ごめんなさい。お父さんのを見ていたわ。[l]
[cm]
[font color="black"]
怒ってごめんなさいね。[l]
[dialog type=alert text="二日目クリア！次の日に進む" target="*second"]



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
[dialog type=alert text="【！罰ゲーム！】隣の人につねられる。" target="*second"]


*select3
[cm]
@layopt layer=message0 visible=true
[chara_mod name="mother" face="bikkuri"]
[font color="black"]
あら、口答えなんて度胸あるじゃない。[l]
[cm]
[font color="black"]
その度胸は認めてあげるわ。[l]
[cm]
[chara_mod name="mother" face="default"]
[font color="black"]
度胸のあるあんたにはデコピンをあげるわ。[l]
[dialog type=alert text="【！罰ゲーム！】隣の人にデコピンされる。" target="*second"]


*second

@jump storage=story3.ks target=*story3


