*start
@layopt layer=message0 visible=true
;プロローグ
[chara_new name="mother" storage="mother.png" jname="母"]
[chara_face name="mother" face="happy" storage="happy.png"]
[chara_face name="mother" face="bikkuri" storage="bikkuri.png"]

このゲームでは、あなたに怒っている人が10人出てきます。
[chara_show name="mother"]
[l][r]
[r]

うまくなだめて、難を逃れましょう[r]
[r]
[chara_mod name="mother" face="happy"]
[l]
なだめ方を間違ってしまうと……
[chara_mod name="mother" face="bikkuri"]
[l][r]
[r]
[chara_mod name="mother" face="default"]
さらに怒られてしまいます。[l][r]
[r]
[chara_hide name="mother" ]
頑張りましょう。[l]

[cm]

*chose-num
何人で遊びますか？[l]

[glink x="100" y="200" text="1人" target="*jump" exp="f.number = 1"]

[glink x="400" y="200" text="2人" target="*jump" exp="f.number = 2"]

[glink x="700" y="200" text="3人" target="*jump" exp="f.number = 3"]

[glink x="100" y="400" text="4人" target="*jump" exp="f.number = 4"]

[glink x="400" y="400" text="5人" target="*jump" exp="f.number = 5"]

[glink x="700" y="400" text="6人" target="*jump" exp="f.number = 6"]

[s]

*jump

[emb exp=f.number]人で遊びます。よろしいですか？[l]

[glink x="100" y="300" text="いいよ" target="*commit"]

[glink x="400" y="300" text="だめ" target="*restart"]
[s]

*restart
ではもう一度。[l]
[cm]
[jump target=*chose-num]
[s]

*commit
[emb exp=f.number]人で遊びます！[l][r]
[if exp="f.number == 1"]
このゲームを1人でやるなんて、かなり拗らせてますね？[l]
[endif]
[cm]

名前を入力してください。[l]
[if exp="f.number == 1"]
[eval exp="f.pname=[]"]
[eval exp="f.cnt=0"]
[edit name="f.buffer" left="300" top="300" width="230" height="40"]
[button name="decision" graphic="start.png" x="300" y="500" target="*commit-name"]
[iscript]
$(".text_box").keydown(function(e){ if(e.which == 13) { $(".decision").click(); } });
[endscript]
[s]

[endif]


[cm]
[eval exp="f.pname=[]"]
[eval exp="f.cnt=0"]

*loopstart
;ループカウント5の時*loopendへジャンプ
[jump target=*loopend cond="f.cnt == f.number"]

[emb exp="f.cnt + 1"] 人目の名前を入力してください。[l]

[edit name="f.buffer" left="300" top="300" width="230" height="40"]
[button name="decision" graphic="start.png" x="300" y="500" target="*commit-name"]
[iscript]
$(".text_box").keydown(function(e){ if(e.which == 13) { $(".decision").click(); } });
[endscript]
[s]

*commit-name

[commit name="f.buffer"]
[eval exp="f.pname[f.cnt] = f.buffer"]
[cm]
「[emb exp="f.pname[f.cnt]"]」さんですね！[r]
よろしくお願いします！[l]
[cm]

;ループカウント+1する
[eval exp="f.cnt=f.cnt+1"]

;ループ最初に戻る
[jump target=*loopstart]

*loopend

;ここからオープニング
それでは、ゲームが始まります……[l][r]

[jump storage=story5.ks target=*first]

