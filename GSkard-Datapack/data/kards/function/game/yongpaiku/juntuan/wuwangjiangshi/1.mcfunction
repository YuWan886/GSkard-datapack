



execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:zombie ~ 0 ~ {Team:red,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"max_health",base:30}],IsBaby:false,Tags:["wuwangjiangshi","Mob_Start"],equipment:{head:{id:"minecraft:note_block"}}}

execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:zombie ~ 0 ~ {Team:blue,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"max_health",base:30}],IsBaby:false,Tags:["wuwangjiangshi","Mob_Start"],equipment:{head:{id:"minecraft:note_block"}}}

scoreboard players set @e[tag=Mob_Start,type=zombie] wuwangchuchang 100
tag @e[tag=Mob_Start,type=zombie] remove Mob_Start
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wuwangjiangshi kardCount

