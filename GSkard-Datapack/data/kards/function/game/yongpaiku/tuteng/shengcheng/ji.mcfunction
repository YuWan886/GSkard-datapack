execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[鸡]","color":"red","hoverEvent":{"action":"show_text","value":"队伍玩家每回合多获得5使用点数"}}]

execute if entity @s[team=red] at @e[tag=r_tuteng] run summon chicken ~ 0 ~ {Team:red,Tags:[tuteng],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Age:0,Silent:1b}
execute if entity @s[team=blue] at @e[tag=b_tuteng] run summon chicken ~ 0 ~ {Team:blue,Tags:[tuteng],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Age:0,Silent:1b}
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 15
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1