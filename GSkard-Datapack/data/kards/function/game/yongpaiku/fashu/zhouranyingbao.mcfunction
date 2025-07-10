execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[骤然引爆]",color:"dark_purple",hover_event:{action:"show_text",value:"在敌方区域召唤一只威力加强的加速爆炸的苦力怕"}}]
function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_zhouranyingbao kardCount

scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

#红
execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon creeper ~ 1 ~ {Team:red,ExplosionRadius:4,Fuse:10,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"max_health",base:30.0d}],Health:30.0f}
#蓝
execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon creeper ~ 1 ~ {Team:blue,ExplosionRadius:4,Fuse:10,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"max_health",base:30.0d}],Health:30.0f}

