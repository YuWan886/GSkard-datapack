#设置游戏状态为1（开启）
scoreboard players set #system GameStatus 1
#清实体
kill @e[type=!player,type=!marker,type=!#kards:display]
#重设分数
scoreboard players reset @a
scoreboard objectives add health health ["生命值"]
scoreboard objectives setdisplay list health
scoreboard players set @a pingbi 0
#调模式
gamemode adventure @a[tag=Ready]
gamemode spectator @a[tag=Un_Ready]
#属性
execute as @a run attribute @s minecraft:scale base set 1
#设置回合数为1
scoreboard objectives setdisplay below_name kardCount
scoreboard players set @a[tag=Ready] kardCountmax 10

#清理背包
clear @a[tag=Ready]
clear @a minecraft:ender_pearl
#清非玩家生物
kill @e[type=!player,type=!#kards:display]
#队伍
team join Spectator @a[tag=Un_Ready] 
team modify blue friendlyFire false
team modify red friendlyFire false
#物品
schedule function kards:game/start/wait_start 1t

#重置陷阱
function kards:game/yongpaiku/xianjin/reset
#特殊

#显示倒计时
bossbar set minecraft:roundtime visible true
execute if score #system roundtime matches 0 run bossbar set roundtime visible false
bossbar set roundtime players @a
#时间
time set midnight
#传送
schedule function kards:game/start/tp 1t
execute if score #system roundtime matches 0 run schedule clear kards:game/start/tp
#存储人数
execute store result score #system r_number if entity @a[team=red]
execute store result score #system b_number if entity @a[team=blue]

#神器
tag @a remove jishengnianye

#叮叮叮
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 1
#音乐
execute as @a at @s run stopsound @s
#execute as @a at @s run playsound minecraft:kards_music master @s ~ ~ ~ 100 1
#tellraw @a [{text: "正在播放音乐~可使用",color: "green"},{text: "/trigger stopsound",color: "gold"},{text: "或是使用",color: "green"},{text: "/trigger music_kards",color: "gold"},{text: "以更换音乐",color: "green"}]