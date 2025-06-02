
execute positioned 0 0 0 store result score 红队圈内人数 1 if entity @a[team=red,gamemode=adventure]
execute positioned 0 0 0 store result score 蓝队圈内人数 1 if entity @a[team=blue,gamemode=adventure]
#假如中立为400~600 默认500 1~399为红队 601~999为蓝队
scoreboard players operation game zhanlin -= 红队圈内人数 1
scoreboard players operation game zhanlin += 蓝队圈内人数 1
#点内没人 
execute positioned 0 0 0 unless entity @a if score game zhanlin matches 400..499 run scoreboard players add game zhanlin 1
execute positioned 0 0 0 unless entity @a if score game zhanlin matches 501..600 run scoreboard players remove game zhanlin 1

execute if score game zhanlin matches 1..399 run bossbar set zhanlin color red
execute if score game zhanlin matches 400..600 run bossbar set zhanlin color white
execute if score game zhanlin matches 1..399 run bossbar set zhanlin color blue