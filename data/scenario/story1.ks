;ストーリー最初から
*first
[cm]

[chara_new name="kyoro" storage="angry.png" jname="きょろ"]
[chara_face name="kyoro" face="happy" storage="happy.png"]
[chara_face name="kyoro" face="doki" storage="doki.png"]
[chara_show name="kyoro"]

@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[font color="black"]

おはよ。[l]
[cm]
[font color="black"]
今日の朝ご飯は何にする？[l]
[cm]
[font color="black"]
[font size=15]

[link target=*select1]【１】目玉焼き[endlink][r]
[link target=*select2]【２】焼肉　[endlink][r]

[s]

*select1
[chara_mod name="kyoro" face="happy"]
[cm]
[font color="black"]
嬉しい！[l]
@jump storage=goal1.ks target=*select1

*select2
[chara_mod name="kyoro" face="doki"]
[cm]
[font color="black"]
ばかなの？[l]
@jump storage=goal2.ks target=*select2


