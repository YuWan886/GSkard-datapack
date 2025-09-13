
scoreboard players remove @s YongHan 18
scoreboard players add @s DongJie 50
execute if entity @s[team=red] at @s run damage @s 9 kards:yonghan by @p[tag=lindongzhikai,team=blue]
execute if entity @s[team=blue] at @s run damage @s 9 kards:yonghan by @p[tag=lindongzhikai,team=red]
execute if entity @s[team=red] run scoreboard players add @a[team=blue,tag=lindongzhikai] HealBack 1
execute if entity @s[team=blue] run scoreboard players add @a[team=red,tag=lindongzhikai] HealBack 1
playsound minecraft:entity.player.hurt_freeze player @s ~ ~ ~ 100 0.5
particle snowflake ~ ~1.75 ~ 0.4 0.4 0.4 0.2 50 force @a
execute if entity @s[type=player] run function kards:game/ingame/custom_buff/yonghan/bossbar/1