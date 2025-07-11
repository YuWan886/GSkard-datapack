execute if entity @s[team=red] run tellraw @a [{text: "本回合讲述的故事是...",color: "white"},{text: "《繁荣》",color: "gold",bold: true},{text: "——",color:"white"},{text: "卡牌",color: "blue",bold: true},{text: "   [",color: "gray"},{text: "红队",color:"red"},{text: "玩家多抽2张牌]",color: "gray"}]
execute if entity @s[team=blue] run tellraw @a [{text: "本回合讲述的故事是...",color: "white"},{text: "《繁荣》",color: "gold",bold: true},{text: "——",color:"white"},{text: "卡牌",color: "blue",bold: true},{text: "   [",color: "gray"},{text: "蓝队",color:"blue"},{text: "玩家多抽2张牌]",color: "gray"}]
execute if entity @s[team=red] run scoreboard players add @a[team=red] cishu 2
execute if entity @s[team=blue] run scoreboard players add @a[team=blue] cishu 2
tellraw @a {text: "在这个篇章 生活满足了一切需求",color: "dark_gray",italic: true}
