execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[末影螨]","color":"blue"}]
    #红队用
    execute if entity @s[team=red] as @e[tag=7r] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=7b] at @s run summon endermite ~ 0 ~ {attributes:[{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
scoreboard players add @s jiben 1
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 1
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1