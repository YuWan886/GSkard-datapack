execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.fashu.diyu.1",color:"red",hover_event:{action:"show_text","value":"对敌方角落各放一格岩浆 怪物获得火焰抗性效果 持续至回合结束 不可叠加"}}]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 6
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches 1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches 1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches 1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches 1 run return run scoreboard players set 蓝队 xianjin_youdi 0

#红
execute if entity @s[team=red] run scoreboard players set 蓝队 diyu 1
#蓝
execute if entity @s[team=blue] run scoreboard players set 红队 diyu 1

