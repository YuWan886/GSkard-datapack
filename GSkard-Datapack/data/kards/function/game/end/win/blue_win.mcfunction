scoreboard players set 人数 r_touxiang 0
scoreboard players set 人数 b_touxiang 0
worldborder set 59999968
scoreboard players set @a death 0
gamemode adventure @a[gamemode=spectator,team=!Spectator]
clear @a
tp @a[team=blue] 30 238 -26
tp @a[team=red] 9 225 -26
tp @a[team=Spectator] 9 225 -26
effect clear @a
#重置回合数
scoreboard players set @a changhuan 0
scoreboard players reset 回合数
scoreboard objectives setdisplay sidebar
bossbar set roundtime visible false
bossbar set pvptime visible false
tellraw @a [{text:"10秒后返回大厅",color:"gold",bold:true}]
title @a title [{text:"蓝队",color:"blue",bold:true},{text:" 胜利",color:"gold",bold:true}]
schedule function kards:game/end/reset 10s