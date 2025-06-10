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
execute if score #system GameStatus matches 1..2 run scoreboard players enable @a[scores={touxiang=0}] touxiang
scoreboard players enable @a music_kards
scoreboard players enable @a music_lengxiao
scoreboard players enable @a stopsound
#背景音乐
execute as @a if score @s music_kards matches 1.. run function kards:music/kards
execute as @a if score @s music_lengxiao matches 1.. run function kards:music/lengxiao
execute as @a if score @s stopsound matches 1.. run function kards:music/stop
#整着玩的
scoreboard players add #system Color 1
execute if score #system Color matches 5 run team modify First prefix [{text: "[",color:"red"},{text: "萌",color:"yellow"},{text: "新",color:"green"},{text: "]",color:"aqua"}]
execute if score #system Color matches 5 run team modify First color red
execute if score #system Color matches 10 run team modify First prefix [{text: "[",color:"aqua"},{text: "萌",color:"red"},{text: "新",color:"yellow"},{text: "]",color:"green"}]
execute if score #system Color matches 10 run team modify First color yellow
execute if score #system Color matches 15 run team modify First prefix [{text: "[",color:"green"},{text: "萌",color:"aqua"},{text: "新",color:"red"},{text: "]",color:"yellow"}]
execute if score #system Color matches 15 run team modify First color green
execute if score #system Color matches 20 run team modify First prefix [{text: "[",color:"yellow"},{text: "萌",color:"green"},{text: "新",color:"aqua"},{text: "]",color:"red"}]
execute if score #system Color matches 20 run team modify First color aqua
execute if score #system Color matches 20 run scoreboard players set #system Color 0

#oiiaioiiiiai
#scoreboard players add #system oiiaioiiiiai 1
execute as @e[type=cat,tag=Oiiaioiiiiai] at @s run rotate @s ~50 ~30
execute as @e[type=cat,tag=Oiiaioiiiiai] if data entity @s {OnGround:1b} run data modify entity @s Motion set value [0f,1f,0f]
effect give @e[type=cat,tag=Oiiaioiiiiai] instant_health 1 0 true

#测试用
#function kards:game/ingame/general

#execute as @a unless predicate kards:movement_check run function kards:ceshi/1