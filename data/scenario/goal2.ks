*select2
[cm]
[freeimage layer=1]
[chara_hide name=kyoro]
@layopt layer=message0 visible=false
[image layer=1 storage=goal2.png visible=true top=100 left=150 width=700]
[locate x=200 y=300 ]
[button graphic="start.png" target=*first x=300 y=400]
[s]
*first
[cm]
[freeimage layer=1]

@jump storage=first.ks target=*title