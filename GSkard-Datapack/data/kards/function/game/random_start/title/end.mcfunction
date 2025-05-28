title @a times 1t 20t 2t
execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 100 2
#execute as @a at @s run playsound ui.button.click player @s ~ ~ ~ 100 1
execute store result score #system random_gamerule run random value 1..35
execute if score #system random_gamerule matches 1 run title @a title {text:"宝库现世",color:"white",bold:true}
execute if score #system random_gamerule matches 1 run title @a subtitle {text:"所有玩家抽取[王之宝库]",color:"gold",bold:true}

execute if score #system random_gamerule matches 2 run title @a title {text:"兵戈相向",color:"white",bold:true}
execute if score #system random_gamerule matches 2 run title @a subtitle {text:"全局打开友伤",color:"gold",bold:true}

execute if score #system random_gamerule matches 3 run title @a title {text:"藏宝库 I",color:"white",bold:true}
execute if score #system random_gamerule matches 3 run title @a subtitle {text:"开局额外抽取3张牌",color:"gold",bold:true}

execute if score #system random_gamerule matches 4 run title @a title {text:"藏宝库 II",color:"white",bold:true}
execute if score #system random_gamerule matches 4 run title @a subtitle {text:"开局额外抽取5张牌",color:"gold",bold:true}

execute if score #system random_gamerule matches 5 run title @a title {text:"藏宝库 III",color:"white",bold:true}
execute if score #system random_gamerule matches 5 run title @a subtitle {text:"开局额外抽取3张神迹牌",color:"gold",bold:true}

execute if score #system random_gamerule matches 6 run title @a title {text:"魔法战争",color:"white",bold:true}
execute if score #system random_gamerule matches 6 run title @a subtitle {text:"所有人抽取的卡变为法术卡",color:"gold",bold:true}

execute if score #system random_gamerule matches 7 run title @a title {text:"朴素",color:"white",bold:true}
execute if score #system random_gamerule matches 7 run title @a subtitle {text:"所有人抽取的卡变为基本卡",color:"gold",bold:true}

execute if score #system random_gamerule matches 8 run title @a title {text:"如梦一场",color:"white",bold:true}
execute if score #system random_gamerule matches 8 run title @a subtitle {text:"神之战?宝库现世?亦或是魔法战争?不过如梦一场...醒来之后无事发生 若回合为最后回合 复活所有死亡玩家 恢复所有玩家生命值",color:"gold",bold:true}

execute if score #system random_gamerule matches 9 run title @a title {text:"神之战",color:"white",bold:true}
execute if score #system random_gamerule matches 9 run title @a subtitle {text:"所有人抽取的卡变为神迹卡",color:"gold",bold:true}

execute if score #system random_gamerule matches 10 run title @a title {text:"灵魂收割",color:"white",bold:true}
execute if score #system random_gamerule matches 10 run title @a subtitle {text:"所有人额外击杀数+1",color:"gold",bold:true}

execute if score #system random_gamerule matches 11 run title @a title {text:"禁字启封 V",color:"white",bold:true}
execute if score #system random_gamerule matches 11 run title @a subtitle {text:"禁字决抽取概率被设为50%",color:"gold",bold:true}

execute if score #system random_gamerule matches 12 run title @a title {text:"禁字启封 I",color:"white",bold:true}
execute if score #system random_gamerule matches 12 run title @a subtitle {text:"禁字决抽取概率被设为10%",color:"gold",bold:true}

execute if score #system random_gamerule matches 13 run title @a title {text:"禁字启封 II",color:"white",bold:true}
execute if score #system random_gamerule matches 13 run title @a subtitle {text:"禁字决抽取概率被设为20%",color:"gold",bold:true}

execute if score #system random_gamerule matches 14 run title @a title {text:"禁字启封 III",color:"white",bold:true}
execute if score #system random_gamerule matches 14 run title @a subtitle {text:"禁字决抽取概率被设为30%",color:"gold",bold:true}

execute if score #system random_gamerule matches 15 run title @a title {text:"禁字启封 IV",color:"white",bold:true}
execute if score #system random_gamerule matches 15 run title @a subtitle {text:"禁字决抽取概率被设为40%",color:"gold",bold:true}

execute if score #system random_gamerule matches 16 run title @a title {text:"无尽战争",color:"white",bold:true}
execute if score #system random_gamerule matches 16 run title @a subtitle {text:"所有人的Kmax被设为9999",color:"gold",bold:true}

execute if score #system random_gamerule matches 17 run title @a title {text:"极限模式",color:"white",bold:true}
execute if score #system random_gamerule matches 17 run title @a subtitle {text:"所有人的生命值被设为30",color:"gold",bold:true}

execute if score #system random_gamerule matches 18 run title @a title {text:"疯狂钻石",color:"white",bold:true}
execute if score #system random_gamerule matches 18 run title @a subtitle {text:"每回合开始时恢复所有人生命值至满血",color:"gold",bold:true}

execute if score #system random_gamerule matches 19 run title @a title {text:"嘎吱恐惧",color:"white",bold:true}
execute if score #system random_gamerule matches 19 run title @a subtitle {text:"两方场地中央生成一只移速增加的嘎吱怪",color:"gold",bold:true}

execute if score #system random_gamerule matches 20 run title @a title {text:"神迹不再",color:"white",bold:true}
execute if score #system random_gamerule matches 20 run title @a subtitle {text:"本局游戏无法抽到神迹牌",color:"gold",bold:true}

execute if score #system random_gamerule matches 21 run title @a title {text:"全副武装",color:"white",bold:true}
execute if score #system random_gamerule matches 21 run title @a subtitle {text:"所有人获取下界合金套",color:"gold",bold:true}

execute if score #system random_gamerule matches 22 run title @a title {text:"墓园狂欢",color:"white",bold:true}
execute if score #system random_gamerule matches 22 run title @a subtitle {text:"所有人默认使用[墓园狂欢]",color:"gold",bold:true}

execute if score #system random_gamerule matches 23 run title @a title {text:"狂轰滥炸",color:"white",bold:true}
execute if score #system random_gamerule matches 23 run title @a subtitle {text:"所有人只能抽取到[爆炸军团]",color:"gold",bold:true}

execute if score #system random_gamerule matches 24 run title @a title {text:"灾难之星",color:"white",bold:true}
execute if score #system random_gamerule matches 24 run title @a subtitle {text:"讲述[河豚][雷暴][失重]的故事",color:"gold",bold:true}

execute if score #system random_gamerule matches 25 run title @a title {text:"Move or Die",color:"white",bold:true}
execute if score #system random_gamerule matches 25 run title @a subtitle {text:"不动就会死!",color:"gold",bold:true}

execute if score #system random_gamerule matches 26 run title @a title {text:"顶头",color:"white",bold:true}
execute if score #system random_gamerule matches 26 run title @a subtitle {text:"头顶好像有个方块?",color:"gold",bold:true}

execute if score #system random_gamerule matches 27 run title @a title {text:"重伤",color:"white",bold:true}
execute if score #system random_gamerule matches 27 run title @a subtitle {text:"本局游戏无法恢复生命",color:"gold",bold:true}

execute if score #system random_gamerule matches 28 run title @a title {text:"生命源泉",color:"white",bold:true}
execute if score #system random_gamerule matches 28 run title @a subtitle {text:"本局游戏可以自然恢复生命",color:"gold",bold:true}

execute if score #system random_gamerule matches 29 run title @a title {text:"Reach I",color:"white",bold:true}
execute if score #system random_gamerule matches 29 run title @a subtitle {text:"所有人攻击距离+1",color:"gold",bold:true}

execute if score #system random_gamerule matches 30 run title @a title {text:"Reach II",color:"white",bold:true}
execute if score #system random_gamerule matches 30 run title @a subtitle {text:"所有人攻击距离+2",color:"gold",bold:true}

execute if score #system random_gamerule matches 31 run title @a title {text:"Reach III",color:"white",bold:true}
execute if score #system random_gamerule matches 31 run title @a subtitle {text:"所有人攻击距离+3",color:"gold",bold:true}

execute if score #system random_gamerule matches 32 run title @a title {text:"Reach V",color:"white",bold:true}
execute if score #system random_gamerule matches 32 run title @a subtitle {text:"没开我吃",color:"gold",bold:true}

execute if score #system random_gamerule matches 33 run title @a title {text:"巨人战争",color:"white",bold:true}
execute if score #system random_gamerule matches 33 run title @a subtitle {text:"墙的那边...",color:"gold",bold:true}

execute if score #system random_gamerule matches 34 run title @a title {text:"小人国",color:"white",bold:true}
execute if score #system random_gamerule matches 34 run title @a subtitle {text:"不是哥们摸不到人啊",color:"gold",bold:true}

execute if score #system random_gamerule matches 35 run title @a title {text:"死神降临",color:"white",bold:true}
execute if score #system random_gamerule matches 35 run title @a subtitle {text:"10回合后 每回合杀死一个生命最低的玩家",color:"gold",bold:true}