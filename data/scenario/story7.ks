; これを書けば、誰が選択するかを表示できる。
*first
[cm]
[eval exp="tf.player="""]
[eval exp="tf.display="""]
[iscript]
tf.player = f.pname[Math.floor(Math.random()*f.number)]
tf.display = tf.player + "さんが選択して下さい"
[endscript]
[dialog type=alert text=&tf.display target="*start" color="0xff0000"]

;ストーリー最初から
*start
[cm]
[image layer="base" page="fore" storage=school.jpg]


[chara_new name="teacher" storage="teacherangry.png" jname="先生" ]
[chara_new name="me" storage="mother.png" jname="僕"]
[chara_face name="teacher" face="happy" storage="teacherhappy.png"]



@layopt layer=message0 visible=true
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=90 y=380 size=26]
[chara_config ptext="chara_name_area"]
[font color="black"]
キーンコーンカーンコーン…[l]
[cm]
[font color="black"]
#me
ふう…[l]
今日も疲れたなあ。[l]
[cm]
[font color="black"]
帰りは一人ラーメンでもしよーーと。[l]
[cm]

[chara_show name="teacher" top="30"]
#teacher
[font color="black"]
おい。[l]
[cm]
[font color="black"]
お前今日締め切りの課題出してないんじゃないか？[l]
[cm]
[font color="black"]
このままだと単位出さないぞ？[l]
[cm]
#me
[font color="black"]
やば…[l]
[cm]
[font color="black"]
単位は何としてでも回収したい…！[l]

@layopt layer=message0 visible=false
[glink x="100" y="400" text="忘れました。" target="*select1" color="orange" size="20"]



[glink x="380" y="400" text="単位だけは…！" target="*select2" color="orange" size="20"]


[glink x="650" y="400" text="僕は天才です。" target="*select3" color="orange" size="20"]


[s]

*select1
[cm]
@layopt layer=message0 visible=true
#teacher
[font color="black"]
はあ…。[l]
[cm]
[font color="black"]
そんな分かりやすい嘘があるかよ…。[l]
[cm]
[font color="black"]
嘘つきに単位はあげられないな。[l]
[cm]
[font color="black"]
何か一曲歌ったら許してやろう。[l]
[dialog type=alert text="【！罰ゲーム！】好きな曲を全力で歌え！！" target="*second" color="0xff0000"]




*select2
[cm]
@layopt layer=message0 visible=true
#teacher
[font color="black"]
正直ものだな。[l]
[cm]
[font color="black"]
だが、物乞いは恥ずかしいぞ。[l]
[cm]
[font color="black"]
あかちゃんみたいにばぶばぶ言っていろ。[l]
[dialog type=alert text="【！罰ゲーム！】今日の語尾を「バブ」にしろ！" target="*second" color="0xff0000"]



*select3
[cm]
@layopt layer=message0 visible=true
[chara_mod name="teacher" face="happy"]
#teacher
[font color="black"]
おーーー！[l]
そうか、そうか！[l]
[cm]
[font color="black"]
先生はそういう馬鹿な奴嫌いじゃないぞ！[l]
[cm]
[font color="black"]
可愛そうだから今回は猶予をあげよう。[l]
[dialog type=alert text="七日目クリア！次の日に進む" target="*second"]



*second

@jump storage=story8.ks target=*first
