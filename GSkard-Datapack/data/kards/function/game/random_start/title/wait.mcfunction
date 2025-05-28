title @a times 1t 20t 2t
execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 100 1
execute as @a at @s run playsound ui.button.click player @s ~ ~ ~ 100 1
execute store result score #system random_gamerule run random value 1..10
execute if score #system random_gamerule matches 1 run title @a title {text:"宝库现世",color:"white",bold:true}
execute if score #system random_gamerule matches 1 run title @a subtitle {text:"所有玩家抽取[王之宝库]",color:"gold",bold:true}

execute if score #system random_gamerule matches 2 run title @a title {text:"兵戈相向",color:"white",bold:true}
execute if score #system random_gamerule matches 2 run title @a subtitle {text:"全局打开友伤",color:"gray",bold:true}

execute if score #system random_gamerule matches 3 run title @a title {text:"藏宝库 I",color:"white",bold:true}
execute if score #system random_gamerule matches 3 run title @a subtitle {text:"开局额外抽取3张牌",color:"gray",bold:true}

execute if score #system random_gamerule matches 4 run title @a title {text:"藏宝库 II",color:"white",bold:true}
execute if score #system random_gamerule matches 4 run title @a subtitle {text:"开局额外抽取5张牌",color:"gray",bold:true}

execute if score #system random_gamerule matches 5 run title @a title {text:"藏宝库 III",color:"white",bold:true}
execute if score #system random_gamerule matches 5 run title @a subtitle {text:"开局额外抽取3张神迹牌",color:"gray",bold:true}

execute if score #system random_gamerule matches 6 run title @a title {text:"魔法战争",color:"white",bold:true}
execute if score #system random_gamerule matches 6 run title @a subtitle {text:"所有人抽取的卡变为法术卡",color:"gray",bold:true}

execute if score #system random_gamerule matches 7 run title @a title {text:"朴素",color:"white",bold:true}
execute if score #system random_gamerule matches 7 run title @a subtitle {text:"所有人抽取的卡变为基本卡",color:"gray",bold:true}

execute if score #system random_gamerule matches 8 run title @a title {text:"如梦一场",color:"white",bold:true}
execute if score #system random_gamerule matches 8 run title @a subtitle {text:"神之战?宝库现世?亦或是魔法战争?不过如梦一场...醒来之后无事发生",color:"gray",bold:true}

execute if score #system random_gamerule matches 9 run title @a title {text:"神之战",color:"white",bold:true}
execute if score #system random_gamerule matches 9 run title @a subtitle {text:"所有人抽取的卡变为神迹卡",color:"gray",bold:true}

execute if score #system random_gamerule matches 10 run title @a title {text:"灵魂收割",color:"white",bold:true}
execute if score #system random_gamerule matches 10 run title @a subtitle {text:"所有人额外击杀数+1",color:"gray",bold:true}

execute if score #system random_gamerule matches 11 run title @a title {text:"灵魂收割",color:"white",bold:true}
execute if score #system random_gamerule matches 11 run title @a subtitle {text:"所有人额外击杀数+1",color:"gray",bold:true}