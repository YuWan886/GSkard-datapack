execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[流浪商人]","color":"red","hoverEvent":{"action":"show_text","value":"队伍两名玩家每回合多抽1张牌"}}]

#红
execute if entity @s[team=red] at @e[tag=r_tuteng] run summon wandering_trader ~ 0 ~ {Team:red,Tags:[tuteng],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Silent:1b}
#蓝
execute if entity @s[team=blue] at @e[tag=b_tuteng] run summon wandering_trader ~ 0 ~ {Team:blue,Tags:[tuteng],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Silent:1b}
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 15
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1