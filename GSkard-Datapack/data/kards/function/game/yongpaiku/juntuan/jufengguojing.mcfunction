execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[飓风过境]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤5只旋风人"}}]
    #红队用
    execute if entity @s[team=red] as @e[tag=4r] at @s run summon breeze ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
    execute if entity @s[team=red] as @e[tag=6r] at @s run summon breeze ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
    execute if entity @s[team=red] as @e[tag=7r] at @s run summon breeze ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
    execute if entity @s[team=red] as @e[tag=8r] at @s run summon breeze ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
    execute if entity @s[team=red] as @e[tag=10r] at @s run summon breeze ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=4b] at @s run summon breeze ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
    execute if entity @s[team=blue] as @e[tag=6b] at @s run summon breeze ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
    execute if entity @s[team=blue] as @e[tag=7b] at @s run summon breeze ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
    execute if entity @s[team=blue] as @e[tag=8b] at @s run summon breeze ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
    execute if entity @s[team=blue] as @e[tag=10b] at @s run summon breeze ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jufengguojing kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1