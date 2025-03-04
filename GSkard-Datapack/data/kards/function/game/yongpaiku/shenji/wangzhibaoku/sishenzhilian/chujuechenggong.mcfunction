$damage @s $(damage) kards:chujue by @p[tag=sishenzhilian]

# 处决玩家恢复 16♥
execute if entity @s[type=player] run effect give @p[tag=sishenzhilian] instant_health 4 1
# 处决 5 只生物恢复 4♥
execute if entity @s[type=!player] run scoreboard players add @p[tag=sishenzhilian] sishenzhilian_chujuemob 1
execute if entity @s[type=!player] as @p[tag=sishenzhilian,scores={sishenzhilian_chujuemob=5..}] run effect give @s instant_health 1 1
execute as @p[tag=sishenzhilian,scores={sishenzhilian_chujuemob=5..}] run scoreboard players set @s sishenzhilian_chujuemob 0