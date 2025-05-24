execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[地狱]",color:"red",hover_event:{action:"show_text","value":"在地方场地周围放置一圈岩浆 怪物获得火焰抗性效果 持续至回合结束"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_diyu kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches 1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches 1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches 1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches 1 run return run scoreboard players set 蓝队 xianjin_youdi 0

execute as @s[team=red] run effect give @e[type=!player,team=red,tag=!tuteng] fire_resistance 60 0 true
execute as @s[team=blue] run effect give @e[type=!player,team=blue,tag=!tuteng] fire_resistance 60 0 true
function kards:game/yongpaiku/fashu/diyu/2
function kards:game/yongpaiku/fashu/diyu/replace with storage changdidaxiao
