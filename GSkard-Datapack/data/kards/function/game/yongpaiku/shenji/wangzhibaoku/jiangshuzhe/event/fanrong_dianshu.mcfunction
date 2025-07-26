
execute if entity @s[team=red] run tellraw @a [{text: "本回合讲述的故事是...",color: "white"},{text: "《繁荣》",color: "gold",bold: true},{text: "——",color:"white"},{text: "点数",color: "blue",bold: true},{text: "   [",color: "gray"},{text: "红队",color:"red"},{text: "玩家+5K +2Kmax]",color: "gray"}]
execute if entity @s[team=blue] run tellraw @a [{text: "本回合讲述的故事是...",color: "white"},{text: "《繁荣》",color: "gold",bold: true},{text: "——",color:"white"},{text: "点数",color: "blue",bold: true},{text: "   [",color: "gray"},{text: "蓝队",color:"blue"},{text: "玩家+5K +2Kmax]",color: "gray"}]
execute if entity @s[team=red] run scoreboard players add @a[team=red] kardCount 5
execute if entity @s[team=red] run scoreboard players add @a[team=red] kardCountmax 2
execute if entity @s[team=blue] run scoreboard players add @a[team=blue] kardCount 5
execute if entity @s[team=blue] run scoreboard players add @a[team=blue] kardCountmax 2
tellraw @a {text: "在这个篇章 生活满足了一切需求",color: "dark_gray",italic: true}