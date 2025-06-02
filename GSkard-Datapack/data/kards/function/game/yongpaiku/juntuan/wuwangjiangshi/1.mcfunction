execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[舞王僵尸]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤1只舞王僵尸"}}]

    #红队用
    execute if entity @s[team=red] as @e[tag=7r] at @s run summon minecraft:zombie ~ 0 ~ {Team:red,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"max_health",base:30}],IsBaby:false,NoAI:1b,Tags:["wuwangjiangshi","wuwangjiangshi_start"],equipment:{head:{id:"minecraft:player_head",components:{profile:{id:[I;914923497,-310947989,-1841629471,-2128218946],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmY2NWY5NTRkNWEyY2RkMDA5ZDRlM2U2NzRlMTIzNGZjYmZkNjFkZWY5MTVmMjMxYmI5NDFlOGQ5MmFmMmMxYyJ9fX0="}]}}},chest:{id:"iron_chestplate"},legs:{id:"iron_leggings"},feet:{id:"iron_boots"}}}
    execute if entity @s[team=red] run schedule function kards:game/yongpaiku/juntuan/wuwangjiangshi/2 5s append
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=7b] at @s run summon minecraft:zombie ~ 0 ~ {Team:blue,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"max_health",base:30}],IsBaby:false,NoAI:1b,Tags:["wuwangjiangshi","wuwangjiangshi_start"],equipment:{head:{id:"minecraft:player_head",components:{profile:{id:[I;914923497,-310947989,-1841629471,-2128218946],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmY2NWY5NTRkNWEyY2RkMDA5ZDRlM2U2NzRlMTIzNGZjYmZkNjFkZWY5MTVmMjMxYmI5NDFlOGQ5MmFmMmMxYyJ9fX0="}]}}},chest:{id:"iron_chestplate"},legs:{id:"iron_leggings"},feet:{id:"iron_boots"}}}
    execute if entity @s[team=blue] run schedule function kards:game/yongpaiku/juntuan/wuwangjiangshi/3 5s append
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wuwangjiangshi kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
