execute if entity @s[team=red] run tellraw @a [{text: "本回合讲述的故事是...",color: "white"},{text: "《繁荣》",color: "gold",bold: true},{text: "——",color:"white"},{text: "生命",color: "blue",bold: true},{text: "   [",color: "gray"},{text: "红队",color:"red"},{text: "队伍玩家回复",color: "gray"},{text: "8♥",color: "red"},{text: "]",color: "gray"}]
execute if entity @s[team=blue] run tellraw @a [{text: "本回合讲述的故事是...",color: "white"},{text: "《繁荣》",color: "gold",bold: true},{text: "——",color:"white"},{text: "生命",color: "blue",bold: true},{text: "   [",color: "gray"},{text: "蓝队",color:"red"},{text: "队伍玩家回复",color: "gray"},{text: "8♥",color: "red"},{text: "]",color: "gray"}]
execute if entity @s[team=red] run scoreboard players add @a[team=red] HealBack 16
execute if entity @s[team=blue] run scoreboard players add @a[team=blue] HealBack 16
tellraw @a {text: "在这个篇章 生活满足了一切需求",color: "dark_gray",italic: true}
