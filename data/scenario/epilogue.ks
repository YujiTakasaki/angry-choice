*start
[playbgm storage=op.ogg]
@layopt layer=message0 visible=true
[image layer="base" page="fore" storage=home.jpg]
;エピローグ

;後で変更
[chara_new name="mother" storage="happy.png" jname="母"] 
[chara_new name="ojisan" storage="rougai_hansei.png" jname="おじさん" ] 
[chara_new name="tommy" storage="teacherhappy.png" jname="理系メガネ" ] 
[chara_new name="teacher" storage="teacherhappy.png" jname="先生" ] 
[chara_new name="yakuza" storage="yakuzahappy.png" jname="やくざ" ] 


@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=90 y=380 size=26]
[chara_config ptext="chara_name_area"]


[chara_show name="mother"]
[chara_show name="ojisan" time="0"]
[chara_show name="tommy" time="0"]
[chara_show name="teacher" time="0"]
[chara_show name="yakuza" time="0"]

[cm]

[font color="red"]
ゲームクリア！！！[r]
[font color="black"]
おめでとう！！[l][r]

; ママ
[cm]
[chara_hide_all time=100]
[chara_show name="mother" time=100]
#mother
[font color="black"]
あんたにもちょっとは良いところあるのね～[l][r]
お疲れ様ね～[l][r]

; おじさん
[cm]
[chara_hide name="mother" time=100]
[chara_show name="ojisan" time=100]
#ojisan
[font color="black"]
最近の若いもんはけしからんと思っておったが……[l][r]
お前は違うようだな！[l][r]

; 理系メガネ
[cm]
[chara_hide name="ojisan" time=100]
[chara_show name="tommy" time=100]
#tommy
[font color="black"]
なかなかやるンゴね。[l][r]
その忍耐、見習わせてクレメンス～～[l][r]

; 先生
[cm]
[chara_hide name="tommy" time=100]
[chara_show name="teacher" time=100]
#teacher
[font color="black"]
よく頑張ったな。[l][r]
これからの人生で嫌なこともあるだろうが、お前なら大丈夫だろう。[l][r]
[cm]
応援しているぞ。[l][r]

; ヤクザ
[cm]
[chara_hide name="teacher" time=100]
[chara_show name="yakuza" time=100]
#yakuza
[font color="black"]
おう！お疲れ様だな！[l][r]
がはは！[l][r]


; まとめ
[cm]
[chara_hide name="yakuza" time=100]
[chara_show name="mother"]
[chara_show name="ojisan" time="0"]
[chara_show name="tommy" time="0"]
[chara_show name="teacher" time="0"]
[chara_show name="yakuza" time="0"]

[font color="red"]
#
プレイしてくれてありがとうございました！！[l]

[s]

