#---暂定常加载区域---#
#

#全局buff
effect give @a minecraft:night_vision infinite 0 true
effect give @a minecraft:saturation infinite 0 true
#进入大厅
execute positioned 299.5 -59 307.00 run tp @a[dx=2,dy=4,dz=0] 59 226 -26 -90 0
#暂定命名
function kards:lobby/general
function kards:game/general
#检测人数
execute as @a if score @s Leave_Game matches 1.. run function kards:leave_game/all
execute store result score 人数 p if entity @a
execute store result score 人数 r_alive if entity @a[team=red,gamemode=adventure]
execute store result score 人数 r_dp if entity @a[team=red,gamemode=spectator]
execute store result score 人数 b_dp if entity @a[team=blue,gamemode=spectator]
execute store result score 人数 b_alive if entity @a[team=blue,gamemode=adventure]
#启用trigger
scoreboard players enable @a reset
scoreboard players enable @a jiaocheng
execute if score #system GameStatus matches 1..2 run scoreboard players enable @a[scores={touxiang=0}] touxiang
scoreboard players enable @a music_kards
scoreboard players enable @a music_lengxiao
scoreboard players enable @a stopsound
#背景音乐
execute as @a if score @s music_kards matches 1.. run function kards:music/kards
execute as @a if score @s music_lengxiao matches 1.. run function kards:music/lengxiao
execute as @a if score @s stopsound matches 1.. run function kards:music/stop
#首次进入
advancement grant @a only kards:first_join_game
#整着玩的
scoreboard players add #system Color 1
execute if score #system Color matches 5 run team modify First prefix [{translate: "tick.1",color:"red"},{translate: "tick.2",color:"yellow"},{translate: "tick.3",color:"green"},{translate: "tick.4",color:"aqua"}]
execute if score #system Color matches 5 run team modify First color red
execute if score #system Color matches 10 run team modify First prefix [{translate: "tick.1",color:"aqua"},{translate: "tick.2",color:"red"},{translate: "tick.3",color:"yellow"},{translate: "tick.4",color:"green"}]
execute if score #system Color matches 10 run team modify First color yellow
execute if score #system Color matches 15 run team modify First prefix [{translate: "tick.1",color:"green"},{translate: "tick.2",color:"aqua"},{translate: "tick.3",color:"red"},{translate: "tick.4",color:"yellow"}]
execute if score #system Color matches 15 run team modify First color green
execute if score #system Color matches 20 run team modify First prefix [{translate: "tick.1",color:"yellow"},{translate: "tick.2",color:"green"},{translate: "tick.3",color:"aqua"},{translate: "tick.4",color:"red"}]
execute if score #system Color matches 20 run team modify First color aqua
execute if score #system Color matches 20 run scoreboard players set #system Color 0

#oiiaioiiiiai
#scoreboard players add #system oiiaioiiiiai 1
execute as @e[type=cat,name=Oiiaioiiiiai] at @s run tp @s ~ ~ ~ ~50 ~
#测试用

