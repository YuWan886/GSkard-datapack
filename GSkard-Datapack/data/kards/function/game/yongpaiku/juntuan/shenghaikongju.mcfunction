execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[深海恐惧]","color":"dark_green","hoverEvent":{"action":"show_text","value":"在敌方召唤三只守卫者"}}]
    #红队用
    execute if entity @s[team=red] as @e[tag=2r] at @s run summon guardian ~ 0 ~ {Team:red}
    execute if entity @s[team=red] as @e[tag=11r] at @s run summon guardian ~ 0 ~ {Team:red}
    execute if entity @s[team=red] as @e[tag=13r] at @s run summon guardian ~ 0 ~ {Team:red}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=2b] at @s run summon guardian ~ 0 ~ {Team:blue}
    execute if entity @s[team=blue] as @e[tag=11b] at @s run summon guardian ~ 0 ~ {Team:blue}
    execute if entity @s[team=blue] as @e[tag=13b] at @s run summon guardian ~ 0 ~ {Team:blue}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 10
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1