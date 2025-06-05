tag @s add enchantment_shixue
#有等级*15%的概率恢复等级*0.5♥
execute store result score @s enchantment_chance_shixue run random value 1..100
execute if score @s enchantment_chance_shixue matches 1..15 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:shixue',levels:1}]] run scoreboard players add @s HealBack 1
execute if score @s enchantment_chance_shixue matches 1..30 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:shixue',levels:2}]] run scoreboard players add @s HealBack 2
execute if score @s enchantment_chance_shixue matches 1..45 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:shixue',levels:{min:3}}]] run scoreboard players add @s HealBack 3
tag @s remove enchantment_shixue
