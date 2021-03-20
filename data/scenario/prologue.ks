@layopt layer=message0 visible=true
何人で遊びますか？

[edit name="f.number"]


[button graphic="start.png" name="decision" target=*commit]

; enterキーでも設定できるように
[iscript]
$(".text_box").keydown(function(e){ if(e.which == 13) { $(".decision").click(); } });
[endscript]
[s]

*commit
[commit name="f.number"]
[cm]
[emb exp="f.number"]

[if exp="typeof(f.number) == number"]
数値以外が代入されています。[p]
[endif]


入力が確定しました[l][r]
「[emb exp=f.number]」と入力しました[l]
[cm]
[jump target=*start]

