tellraw @a [{text: "本回合讲述的故事是...",color: "white"},{text: "《灾难》",color: "dark_red",bold: true},{text: "——",color:"white"},{text: "河豚",color: "green",bold: true},{text: "   [本回合内 随机召唤河豚至敌对玩家]",color: "gray"}]
execute if entity @s[team=red] run scoreboard players set 红队_讲述者 jiangshuzhe_hetun 1
execute if entity @s[team=blue] run scoreboard players set 蓝队_讲述者 jiangshuzhe_hetun 1
tellraw @a {text: "在这个篇章 灾难席卷 人们艰难求生",color: "dark_gray",italic: true}
