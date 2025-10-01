
$execute if entity @s[team=red] run fill $(b_posx) 0 $(b_posz) $(b_posdx) 1 $(b_posdz) water replace air
$execute if entity @s[team=blue] run fill $(r_posx) 0 $(r_posz) $(r_posdx) 1 $(r_posdz) water replace air

title @s times 10t 2s 10t
execute if entity @s[team=red] run title @a title [{translate: "kards.function.game.paiku.juntuan.wojilangchao.2", fallback: "[漫水]",color:"light_purple"},{translate: "kards.function.game.yongpaiku.fashu.diyu.replace.2", fallback: "作用至",color:"gray"},{translate: "kards.function.game.end.win.blue_win.2", fallback: "蓝队",color:"blue"}]
execute if entity @s[team=blue] run title @a title [{translate: "kards.function.game.paiku.juntuan.wojilangchao.2", fallback: "[漫水]",color:"light_purple"},{translate: "kards.function.game.yongpaiku.fashu.diyu.replace.2", fallback: "作用至",color:"gray"},{translate: "kards.function.game.end.win.red_win.1", fallback: "红队",color:"red"}]
title @a subtitle [{translate: "json.kards.dialog.paiku.fashu.zuzhouhujia.388", fallback: "持续至回合结束",color:"gray"}]