execute if score #system Ready_Num matches 0..1 run bossbar set minecraft:start_game name [{text: "等待玩家准备...",color:"green",bold:true}]
execute if score #system Ready_Num matches 2.. if entity @a[tag=Ready,team=lobby] run bossbar set minecraft:start_game name [{text: "所有准备的玩家加入了一个队伍才能开始游戏",color:"green",bold:true}]
execute if score #system Ready_Num matches 2.. unless entity @a[tag=Ready,team=lobby] run bossbar set minecraft:start_game name [{text: "等待游戏开始...",color:"green",bold:true}]
