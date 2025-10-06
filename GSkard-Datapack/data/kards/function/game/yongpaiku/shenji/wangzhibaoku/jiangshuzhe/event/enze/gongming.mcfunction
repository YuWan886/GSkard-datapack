tellraw @a [{text: "《恩泽·共鸣章》",color: "green",bold:true}]
tellraw @a [{text: "\"灵魂的波长在此刻同步 一人之心 化为万人之力\"",color: "gray"}]
execute as @s[team=red] run tellraw @a [{text:"红队",color:"red"},{text: "玩家本回合启用",color: "gold"},{text: "[虚空回响]",color: "white"},{text:":\n",color:"gold"},[{text: "本回合内 你每使用1张",color:"gray"},{text: "基本牌 ",color:"blue"},{text: "抽",color:"gray"},{text: "1张牌",color:"gold"},{text: " 获得",color:"gray"},{text:"超频\n",color:"dark_aqua",bold:true},{text: "超频:每使用1张牌获得1K,使用[法术牌][装备牌]会额外获得1Kmax.",color:"gray"}]]
execute as @s[team=blue] run tellraw @a [{text:"蓝队",color:"blue"},{text: "玩家本回合启用",color: "gold"},{text: "[虚空回响]",color: "white"},{text:":\n",color:"gold"},[{text: "本回合内 你每使用1张",color:"gray"},{text: "基本牌 ",color:"blue"},{text: "抽",color:"gray"},{text: "1张牌",color:"gold"},{text: " 获得",color:"gray"},{text:"超频\n",color:"dark_aqua",bold:true},{text: "超频:每使用1张牌获得1K,使用[法术牌][装备牌]会额外获得1Kmax.",color:"gray"}]]


execute as @s[team=red] run scoreboard players set @a[team=red,gamemode=adventure] ChaoPin 1
execute as @s[team=blue] run scoreboard players set @a[team=blue,gamemode=adventure] ChaoPin 1