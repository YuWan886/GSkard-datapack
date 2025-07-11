title @a times 1t 20t 2t
execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 100 2
tellraw @a {"text":""}
tellraw @a [{"text":"======","color":"gray"},{"text":"随机游戏规则","color":"green","bold":true},{"text":"======","color":"gray"}]
tellraw @a {"text":""}
execute store result score #system random_gamerule run random value 1..36
execute if score #system random_gamerule matches 1 run title @a title {text:"宝库现世",color:"gold",bold:true}
execute if score #system random_gamerule matches 1 run title @a subtitle [{"text":"所有玩家抽取","color":"gray"},{"text":"[王之宝库]","color":"green","bold":true}]
execute if score #system random_gamerule matches 1 run tellraw @a [{"text":"宝库现世\n","color":"gold","bold":true},{"text":"所有玩家抽取","color":"gray"},{"text":"[王之宝库]","color":"green","bold":true}]
execute if score #system random_gamerule matches 2 run title @a title {text:"兵戈相向",color:"gold",bold:true}
execute if score #system random_gamerule matches 2 run title @a subtitle [{"text":"全局开启","color":"gray"},{"text":"友伤","color":"red","bold":true}]
execute if score #system random_gamerule matches 2 run tellraw @a [{"text":"兵戈相向\n","color":"gold","bold":true},{"text":"全局开启","color":"gray"},{"text":"友伤","color":"red","bold":true}]
execute if score #system random_gamerule matches 3 run title @a title {text:"藏宝库 I",color:"gold",bold:true}
execute if score #system random_gamerule matches 3 run title @a subtitle {text:"开局额外抽取3张牌",color:"green",bold:true}
execute if score #system random_gamerule matches 3 run tellraw @a [{"text":"藏宝库 I\n","color":"gold","bold":true},{"text":"开局额外抽取","color":"gray"},{"text":"3张牌","color":"green","bold":true}]
execute if score #system random_gamerule matches 4 run title @a title {text:"藏宝库 II",color:"gold",bold:true}
execute if score #system random_gamerule matches 4 run title @a subtitle {text:"开局额外抽取5张牌",color:"green",bold:true}
execute if score #system random_gamerule matches 4 run tellraw @a [{"text":"藏宝库 II\n","color":"gold","bold":true},{"text":"开局额外抽取","color":"gray"},{"text":"5张牌","color":"green","bold":true}]
execute if score #system random_gamerule matches 5 run title @a title {text:"藏宝库 III",color:"gold",bold:true}
execute if score #system random_gamerule matches 5 run title @a subtitle {text:"开局额外抽取3张神迹牌",color:"green",bold:true}
execute if score #system random_gamerule matches 5 run tellraw @a [{"text":"藏宝库 III\n","color":"gold","bold":true},{"text":"开局额外抽取","color":"gray"},{"text":"3张神迹牌","color":"green","bold":true}]
execute if score #system random_gamerule matches 6 run title @a title {text:"魔法战争",color:"gold",bold:true}
execute if score #system random_gamerule matches 6 run title @a subtitle {text:"所有人抽取的卡变为法术卡",color:"green",bold:true}
execute if score #system random_gamerule matches 6 run tellraw @a [{"text":"魔法战争\n","color":"gold","bold":true},{"text":"所有人抽取的卡变为","color":"gray"},{"text":"法术卡","color":"green","bold":true}]
execute if score #system random_gamerule matches 7 run title @a title {text:"朴素",color:"gold",bold:true}
execute if score #system random_gamerule matches 7 run title @a subtitle {text:"所有人抽取的卡变为基本卡",color:"green",bold:true}
execute if score #system random_gamerule matches 7 run tellraw @a [{"text":"朴素\n","color":"gold","bold":true},{"text":"所有人抽取的卡变为","color":"gray"},{"text":"基本卡","color":"green","bold":true}]
execute if score #system random_gamerule matches 8 run title @a title {text:"如梦一场",color:"gold",bold:true}
execute if score #system random_gamerule matches 8 run title @a subtitle {text:"神之战?宝库现世?亦或是魔法战争?不过如梦一场...醒来之后无事发生 若回合为最后回合 复活所有死亡玩家 恢复所有玩家生命值",color:"green",bold:true}
execute if score #system random_gamerule matches 8 run tellraw @a [{"text":"如梦一场\n","color":"gold","bold":true},{"text":"若回合为最后回合 ","color":"gray"},{"text":"复活所有死亡玩家","color":"green","bold":true},{"text":" 并 ","color":"gray"},{"text":"恢复所有玩家生命值","color":"green","bold":true}]
execute if score #system random_gamerule matches 9 run title @a title {text:"神之战",color:"gold",bold:true}
execute if score #system random_gamerule matches 9 run title @a subtitle {text:"所有人抽取的卡变为神迹卡",color:"green",bold:true}
execute if score #system random_gamerule matches 9 run tellraw @a [{"text":"神之战\n","color":"gold","bold":true},{"text":"所有人抽取的卡变为","color":"gray"},{"text":"神迹卡","color":"green","bold":true}]
execute if score #system random_gamerule matches 10 run title @a title {text:"灵魂收割",color:"gold",bold:true}
execute if score #system random_gamerule matches 10 run title @a subtitle {text:"所有人额外击杀数+3",color:"green",bold:true}
execute if score #system random_gamerule matches 10 run tellraw @a [{"text":"灵魂收割\n","color":"gold","bold":true},{"text":"所有人额外击杀数+","color":"gray"},{"text":"3","color":"green","bold":true}]
execute if score #system random_gamerule matches 11 run title @a title {text:"禁字启封 V",color:"gold",bold:true}
execute if score #system random_gamerule matches 11 run title @a subtitle {text:"禁字决抽取概率被设为50%",color:"green",bold:true}
execute if score #system random_gamerule matches 11 run tellraw @a [{"text":"禁字启封 V\n","color":"gold","bold":true},{"text":"禁字决抽取概率被设为","color":"gray"},{"text":"50%","color":"green","bold":true}]
execute if score #system random_gamerule matches 12 run title @a title {text:"禁字启封 I",color:"gold",bold:true}
execute if score #system random_gamerule matches 12 run title @a subtitle {text:"禁字决抽取概率被设为10%",color:"green",bold:true}
execute if score #system random_gamerule matches 12 run tellraw @a [{"text":"禁字启封 I\n","color":"gold","bold":true},{"text":"禁字决抽取概率被设为","color":"gray"},{"text":"10%","color":"red","bold":true}]
execute if score #system random_gamerule matches 13 run title @a title {text:"禁字启封 II",color:"gold",bold:true}
execute if score #system random_gamerule matches 13 run title @a subtitle {text:"禁字决抽取概率被设为20%",color:"green",bold:true}
execute if score #system random_gamerule matches 13 run tellraw @a [{"text":"禁字启封 II\n","color":"gold","bold":true},{"text":"禁字决抽取概率被设为","color":"gray"},{"text":"20%","color":"green","bold":true}]
execute if score #system random_gamerule matches 14 run title @a title {text:"禁字启封 III",color:"gold",bold:true}
execute if score #system random_gamerule matches 14 run title @a subtitle {text:"禁字决抽取概率被设为30%",color:"green",bold:true}
execute if score #system random_gamerule matches 14 run tellraw @a [{"text":"禁字启封 III\n","color":"gold","bold":true},{"text":"禁字决抽取概率被设为","color":"gray"},{"text":"30%","color":"green","bold":true}]
execute if score #system random_gamerule matches 15 run title @a title {text:"禁字启封 IV",color:"gold",bold:true}
execute if score #system random_gamerule matches 15 run title @a subtitle {text:"禁字决抽取概率被设为40%",color:"green",bold:true}
execute if score #system random_gamerule matches 15 run tellraw @a [{"text":"禁字启封 IV\n","color":"gold","bold":true},{"text":"禁字决抽取概率被设为","color":"gray"},{"text":"40%","color":"green","bold":true}]
execute if score #system random_gamerule matches 16 run title @a title {text:"无尽战争",color:"gold",bold:true}
execute if score #system random_gamerule matches 16 run title @a subtitle {text:"所有人的Kmax被设为9999",color:"green",bold:true}
execute if score #system random_gamerule matches 16 run tellraw @a [{"text":"无尽战争\n","color":"gold","bold":true},{"text":"所有人的Kmax被设为","color":"gray"},{"text":"9999","color":"green","bold":true}]
execute if score #system random_gamerule matches 17 run title @a title {text:"极限模式",color:"gold",bold:true}
execute if score #system random_gamerule matches 17 run title @a subtitle {text:"所有人的生命值被设为30",color:"green",bold:true}
execute if score #system random_gamerule matches 17 run tellraw @a [{"text":"极限模式\n","color":"gold","bold":true},{"text":"所有人的生命值被设为","color":"gray"},{"text":"30","color":"green","bold":true}]
execute if score #system random_gamerule matches 18 run title @a title {text:"疯狂钻石",color:"gold",bold:true}
execute if score #system random_gamerule matches 18 run title @a subtitle {text:"每回合开始时恢复所有人生命值至满血",color:"green",bold:true}
execute if score #system random_gamerule matches 18 run tellraw @a [{"text":"疯狂钻石\n","color":"gold","bold":true},{"text":"每回合开始时恢复所有人生命值至满血","color":"gray"}]
execute if score #system random_gamerule matches 19 run title @a title {text:"嘎吱恐惧",color:"gold",bold:true}
execute if score #system random_gamerule matches 19 run title @a subtitle {text:"两方场地中央生成一只移速增加的嘎吱怪",color:"green",bold:true}
execute if score #system random_gamerule matches 19 run tellraw @a [{"text":"嘎吱恐惧\n","color":"gold","bold":true},{"text":"两方场地中央生成一只移速增加的嘎吱怪","color":"gray"}]
execute if score #system random_gamerule matches 20 run title @a title {text:"神迹不再",color:"gold",bold:true}
execute if score #system random_gamerule matches 20 run title @a subtitle {text:"本局游戏无法抽到神迹牌",color:"red",bold:true}
execute if score #system random_gamerule matches 20 run tellraw @a [{"text":"神迹不再\n","color":"gold","bold":true},{"text":"本局游戏无法抽到神迹牌","color":"red","bold":true}]
execute if score #system random_gamerule matches 21 run title @a title {text:"全副武装",color:"gold",bold:true}
execute if score #system random_gamerule matches 21 run title @a subtitle {text:"所有人获取下界合金套",color:"green",bold:true}
execute if score #system random_gamerule matches 21 run tellraw @a [{"text":"全副武装\n","color":"gold","bold":true},{"text":"所有人获取下界合金套","color":"green","bold":true}]
execute if score #system random_gamerule matches 22 run title @a title {text:"墓园狂欢",color:"gold",bold:true}
execute if score #system random_gamerule matches 22 run title @a subtitle {text:"所有人默认使用[墓园狂欢]",color:"green",bold:true}
execute if score #system random_gamerule matches 22 run tellraw @a [{"text":"墓园狂欢\n","color":"gold","bold":true},{"text":"所有人默认使用[墓园狂欢]","color":"gray"}]
execute if score #system random_gamerule matches 23 run title @a title {text:"狂轰滥炸",color:"gold",bold:true}
execute if score #system random_gamerule matches 23 run title @a subtitle {text:"所有人只能抽取到[爆炸军团]",color:"green",bold:true}
execute if score #system random_gamerule matches 23 run tellraw @a [{"text":"狂轰滥炸\n","color":"gold","bold":true},{"text":"所有人只能抽取到[爆炸军团]","color":"gray"}]
execute if score #system random_gamerule matches 24 run title @a title {text:"灾难之星",color:"gold",bold:true}
execute if score #system random_gamerule matches 24 run title @a subtitle {text:"讲述[河豚][雷暴][失重]的故事",color:"green",bold:true}
execute if score #system random_gamerule matches 24 run tellraw @a [{"text":"灾难之星\n","color":"gold","bold":true},{"text":"讲述[河豚][雷暴][失重]的故事","color":"gray"}]
execute if score #system random_gamerule matches 25 run title @a title {text:"Move or Die",color:"gold",bold:true}
execute if score #system random_gamerule matches 25 run title @a subtitle {text:"不动就会死!",color:"red",bold:true}
execute if score #system random_gamerule matches 25 run tellraw @a [{"text":"Move or Die\n","color":"gold","bold":true},{"text":"不动就会死!","color":"gray"}]
execute if score #system random_gamerule matches 26 run title @a title {text:"顶头",color:"gold",bold:true}
execute if score #system random_gamerule matches 26 run title @a subtitle {text:"头顶好像有个方块?",color:"green",bold:true}
execute if score #system random_gamerule matches 26 run tellraw @a [{"text":"顶头\n","color":"gold","bold":true},{"text":"头顶好像有个方块?","color":"gray"}]
execute if score #system random_gamerule matches 27 run title @a title {text:"重伤",color:"gold",bold:true}
execute if score #system random_gamerule matches 27 run title @a subtitle {text:"本局游戏无法恢复生命",color:"red",bold:true}
execute if score #system random_gamerule matches 27 run tellraw @a [{"text":"重伤\n","color":"gold","bold":true},{"text":"本局游戏","color":"gray"},{"text":"无法恢复生命","color":"red","bold":true}]
execute if score #system random_gamerule matches 28 run title @a title {text:"生命源泉",color:"gold",bold:true}
execute if score #system random_gamerule matches 28 run title @a subtitle {text:"本局游戏可以自然恢复生命",color:"green",bold:true}
execute if score #system random_gamerule matches 28 run tellraw @a [{"text":"生命源泉\n","color":"gold","bold":true},{"text":"本局游戏可以","color":"gray"},{"text":"自然恢复生命","color":"green","bold":true}]
execute if score #system random_gamerule matches 29 run title @a title {text:"Reach I",color:"gold",bold:true}
execute if score #system random_gamerule matches 29 run title @a subtitle {text:"所有人攻击距离+1",color:"green",bold:true}
execute if score #system random_gamerule matches 29 run tellraw @a [{"text":"Reach I\n","color":"gold","bold":true},{"text":"所有人攻击距离+1","color":"gray"}]
execute if score #system random_gamerule matches 30 run title @a title {text:"Reach II",color:"gold",bold:true}
execute if score #system random_gamerule matches 30 run title @a subtitle {text:"所有人攻击距离+2",color:"green",bold:true}
execute if score #system random_gamerule matches 30 run tellraw @a [{"text":"Reach II\n","color":"gold","bold":true},{"text":"所有人攻击距离+2","color":"gray"}]
execute if score #system random_gamerule matches 31 run title @a title {text:"Reach III",color:"gold",bold:true}
execute if score #system random_gamerule matches 31 run title @a subtitle {text:"所有人攻击距离+3",color:"green",bold:true}
execute if score #system random_gamerule matches 31 run tellraw @a [{"text":"Reach III\n","color":"gold","bold":true},{"text":"所有人攻击距离+3","color":"gray"}]
execute if score #system random_gamerule matches 32 run title @a title {text:"Reach V",color:"gold",bold:true}
execute if score #system random_gamerule matches 32 run title @a subtitle {text:"没开我吃",color:"green",bold:true}
execute if score #system random_gamerule matches 32 run tellraw @a [{"text":"Reach V\n","color":"gold","bold":true},{"text":"没开我吃","color":"gray"}]
execute if score #system random_gamerule matches 33 run title @a title {text:"巨人战争",color:"gold",bold:true}
execute if score #system random_gamerule matches 33 run title @a subtitle {text:"墙的那边...",color:"green",bold:true}
execute if score #system random_gamerule matches 33 run tellraw @a [{"text":"巨人战争\n","color":"gold","bold":true},{"text":"墙的那边...","color":"gray"}]
execute if score #system random_gamerule matches 34 run title @a title {text:"小人国",color:"gold",bold:true}
execute if score #system random_gamerule matches 34 run title @a subtitle {text:"不是哥们摸不到人啊",color:"green",bold:true}
execute if score #system random_gamerule matches 34 run tellraw @a [{"text":"小人国\n","color":"gold","bold":true},{"text":"不是哥们摸不到人啊","color":"gray"}]
execute if score #system random_gamerule matches 35 run title @a title {text:"死神降临",color:"gold",bold:true}
execute if score #system random_gamerule matches 35 run title @a subtitle {text:"10回合后 每回合杀死一个生命最低的玩家",color:"green",bold:true}
execute if score #system random_gamerule matches 35 run tellraw @a [{"text":"死神降临\n","color":"gold","bold":true},{"text":"10回合后 每回合杀死","color":"gray"},{"text":"生命值最低","color":"red","bold":true}]
execute if score #system random_gamerule matches 36 run title @a title {text:"头脑风暴",color:"gold",bold:true}
execute if score #system random_gamerule matches 36 run title @a subtitle {text:"每个回合开始时 清空所有掉落物与玩家背包中的牌 回合抽牌数量固定为5",color:"green",bold:true}
execute if score #system random_gamerule matches 36 run tellraw @a [{"text":"头脑风暴\n","color":"gold","bold":true},{"text":"每个回合开始时 清空所有掉落物与玩家背包中的牌 回合抽牌数量固定为5","color":"gray"}]
tellraw @a {"text":""}
tellraw @a [{"text":"======———-———======","color":"gray"}]
tellraw @a {"text":""}
scoreboard players add @a cishu 5
function kards:game/random_start/start_event
