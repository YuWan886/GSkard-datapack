scoreboard players set red jiangshuzhe_shizhong 1
scoreboard players set blue jiangshuzhe_shizhong 1

scoreboard players set red jiangshuzhe_hetun 1
scoreboard players set blue jiangshuzhe_hetun 1

scoreboard players set red jiangshuzhe_leibao 1
scoreboard players set blue jiangshuzhe_leibao 1

tellraw @a [{text: "本回合讲述的故事是...\n",color: "white"},[{text: "《灾难》",color: "dark_red",bold: true},{text: "——",color:"white"},{text: "河豚\n",color: "green",bold: true}],[{text: "[本回合内 随机召唤河豚至随机玩家]\n",color: "gray"}],{text: "《灾难》",color: "dark_red",bold: true},{text: "——",color:"white"},{text: "雷暴\n",color: "green",bold: true},{text: "[本回合内 随机召唤雷暴至随机玩家]\n",color: "gray"},{text: "《灾难》",color: "dark_red",bold: true},{text: "——",color:"white"},{text: "失重\n",color: "green",bold: true},{text: "[本回合内 随机玩家失重]",color: "gray"}]

tellraw @a {text: "在这个篇章 灾难席卷 人们艰难求生",color: "dark_gray",italic: true}
