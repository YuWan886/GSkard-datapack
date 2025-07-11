execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[舞王僵尸]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤1只舞王僵尸"}}]


    execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:zombie ~ 1 ~ {Team:red,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"max_health",base:30}],IsBaby:false,NoAI:1b,Tags:["wuwangjiangshi","wuwangjiangshi_start"],equipment:{head:{id:"minecraft:player_head",components:{profile:{id:[I;914923497,-310947989,-1841629471,-2128218946],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmY2NWY5NTRkNWEyY2RkMDA5ZDRlM2U2NzRlMTIzNGZjYmZkNjFkZWY5MTVmMjMxYmI5NDFlOGQ5MmFmMmMxYyJ9fX0="}]}}},chest:{id:"iron_chestplate"},legs:{id:"iron_leggings"},feet:{id:"iron_boots"}}}

    execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:zombie ~ 1 ~ {Team:blue,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"max_health",base:30}],IsBaby:false,NoAI:1b,Tags:["wuwangjiangshi","wuwangjiangshi_start"],equipment:{head:{id:"minecraft:player_head",components:{profile:{id:[I;914923497,-310947989,-1841629471,-2128218946],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmY2NWY5NTRkNWEyY2RkMDA5ZDRlM2U2NzRlMTIzNGZjYmZkNjFkZWY5MTVmMjMxYmI5NDFlOGQ5MmFmMmMxYyJ9fX0="}]}}},chest:{id:"iron_chestplate"},legs:{id:"iron_leggings"},feet:{id:"iron_boots"}}}
execute at @s run playsound wuwangzhaohuan player @a ~ ~ ~ 100 1
scoreboard players set @e[tag=wuwangjiangshi_start,type=zombie] wuwangchuchang 100
tag @e[tag=wuwangjiangshi_start,type=zombie] remove wuwangjiangshi_start
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wuwangjiangshi kardCount

