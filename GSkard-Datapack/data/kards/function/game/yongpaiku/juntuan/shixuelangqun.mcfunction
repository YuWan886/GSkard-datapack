execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[嗜血狼群]","color":"dark_green","hoverEvent":{"action":"show_text","value":"在敌方召唤6只狼 狼攻击附带凋零与吸血且不会被击退"}}]
    #红队用
    execute if entity @s[team=red] as @e[tag=1r] at @s run summon wolf ~ 0 ~ {Team:red,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=red] as @e[tag=5r] at @s run summon minecraft:wolf ~ 0 ~ {Team:red,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=red] as @e[tag=11r] at @s run summon minecraft:wolf ~ 0 ~ {Team:red,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=red] as @e[tag=3r] at @s run summon minecraft:wolf ~ 0 ~ {Team:red,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=red] as @e[tag=9r] at @s run summon minecraft:wolf ~ 0 ~ {Team:red,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=red] as @e[tag=13r] at @s run summon minecraft:wolf ~ 0 ~ {Team:red,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=1b] at @s run summon minecraft:wolf ~ 0 ~ {Team:blue,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=blue] as @e[tag=5b] at @s run summon minecraft:wolf ~ 0 ~ {Team:blue,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=blue] as @e[tag=11b] at @s run summon minecraft:wolf ~ 0 ~ {Team:blue,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=blue] as @e[tag=3b] at @s run summon minecraft:wolf ~ 0 ~ {Team:blue,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=blue] as @e[tag=9b] at @s run summon minecraft:wolf ~ 0 ~ {Team:blue,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=blue] as @e[tag=13b] at @s run summon minecraft:wolf ~ 0 ~ {Team:blue,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
execute as @e[type=wolf] run attribute @s minecraft:knockback_resistance base set 100
effect give @e[type=wolf] speed infinite 2 true
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 16
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
