execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[骤然引爆]",color:"dark_purple",hover_event:{action:"show_text",value:"在敌方区域召唤一只威力加强的加速爆炸的苦力怕"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zhouranyingbao kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0

#红
execute if entity @s[team=red] as @e[tag=7r] at @s run summon creeper ~ 0 ~ {Team:red,ExplosionRadius:4,Fuse:10,attributes:[{id:"max_health",base:30.0d}],Health:30.0f}
#蓝
execute if entity @s[team=blue] as @e[tag=7b] at @s run summon creeper ~ 0 ~ {Team:blue,ExplosionRadius:4,Fuse:10,attributes:[{id:"max_health",base:30.0d}],Health:30.0f}

