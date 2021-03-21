*start
*title
;メッセージレイヤを非表示にしておく
@layopt layer=message0 visible=false

;背景画像を設定
[image layer="base" page="fore" storage=home.jpg]
[image layer=1 storage=title2.png visible=true top=100 left=150 width=700]

[locate x=200 y=300 ]
[button graphic="start.png" target=*first x=300]

;[locate x=200 y=360 ]
;[button graphic="load.png" target=*loadmenu]

[s]

;つづきからボタンが押された場合。ロード画面を表示
;*loadmenu
;[cm]
;[showload]

;[jump target=*title]
;[s]

*first
[cm]
[freeimage layer=1]

@jump storage=story7.ks target=*first