;ストーリー最初から
*first
[cm]
[image layer="base" page="fore" storage=room.jpg]


[chara_new name="mother" storage="mother.png" jname="母"]
[chara_new name="me" storage="mother.png" jname="僕"]
[chara_face name="mother" face="bikkuri" storage="bikkuri.png"]
[chara_face name="mother" face="happy" storage="happy.png"]


@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=90 y=380 size=26]
[chara_config ptext="chara_name_area"]
[font color="black"]
#me
僕は家族とこの家に住む普通の大学生。[l]
[cm]
[font color="black"]
近頃、いろんな人に怒られてばかりである…。[l]
[cm]
[font color="black"]
何とかして平穏な日常を過ごしたいが、[l]
すでに目の前には恐ろしい顔をした母がいる。[l]
[cm]
[chara_show name="mother"]
#mother
[font color="black"]
ちょっと、あんた！[l]
[cm]
[font color="black"]
朝ご飯食べたもの出しっぱなしじゃない！[l]
[cm]
[font color="black"]
自分で食べたものぐらい自分で片づけなさい！[l]
[cm]
#me
[font color="black"]
また始まった…。[l]
[cm]
[font color="black"]
なんて言って切り抜けよう？[l]

@layopt layer=message0 visible=false
[glink x="100" y="400" text="後でやる" target="*select1" color="orange" size="20"]



[glink x="340" y="400" text="洗剤がなかった" target="*select2" color="orange" size="20"]


[glink x="650" y="400" text="まだ食べてる。" target="*select3" color="orange" size="20"]


[s]

*select1
[cm]
@layopt layer=message0 visible=true
#mother
[font color="black"]
あんたはいつも後で後でって…[l]
[cm]
[font color="black"]
本当にお父さんにそっくりね！[l]
[dialog type=alert text="【！罰ゲーム！】お父さんの物まねをしろ！" target="*second" color="0xff0000"]




*select2
[cm]
@layopt layer=message0 visible=true
[chara_mod name="mother" face="bikkuri"]
#mother
[font color="black"]
あら、本当だわ。[l]
[cm]
[font color="black"]
怒ってごめんなさいね。[l]
[dialog type=alert text="一日目クリア！次の日に進む" target="*second"]


*select3
[cm]
@layopt layer=message0 visible=true
#mother
[font color="black"]
あんた、家にいるとずーーーと食べてるじゃない！[l]
[cm]
[font color="black"]
そんなんなら一生食べ続けてなさい！[l]
[dialog type=alert text="【！罰ゲーム！】何か一品注文orコンビニおごり！" target="*second" color="0xff0000"]



*second

@jump storage=story2.ks target=*story2


