execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[自爆军团]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤四只攻击时会的自爆岩浆史莱姆"}}]

    #红队用
    execute if entity @s[team=red] at @e[tag=2r] run summon magma_cube ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Size:2,Tags:["site_magma_cube"]}
    execute if entity @s[team=red] at @e[tag=5r] run summon magma_cube ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Size:2,Tags:["site_magma_cube"]}
    execute if entity @s[team=red] at @e[tag=9r] run summon magma_cube ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Size:2,Tags:["site_magma_cube"]}
    execute if entity @s[team=red] at @e[tag=12r] run summon magma_cube ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Size:2,Tags:["site_magma_cube"]}
    #蓝队用
    execute if entity @s[team=blue] at @e[tag=2b] run summon magma_cube ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Size:2,Tags:["site_magma_cube"]}
    execute if entity @s[team=blue] at @e[tag=5b] run summon magma_cube ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Size:2,Tags:["site_magma_cube"]}
    execute if entity @s[team=blue] at @e[tag=9b] run summon magma_cube ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Size:2,Tags:["site_magma_cube"]}
    execute if entity @s[team=blue] at @e[tag=12b] run summon magma_cube ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Size:2,Tags:["site_magma_cube"]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zibaojuntuan kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1