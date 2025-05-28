tag @s add enchantment_piaofu
#有15%*等级+10%的概率应用漂浮
execute store result score @s enchantment_chance_piaofu run random value 1..100
execute if score @s enchantment_chance_piaofu matches 1..25 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:piaofu',levels:1}]] run effect give @e[tag=enchantment_piaofu] levitation 3 0 true
execute if score @s enchantment_chance_piaofu matches 1..40 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:piaofu',levels:2}]] run effect give @e[tag=enchantment_piaofu] levitation 4 0 true
execute if score @s enchantment_chance_piaofu matches 1..55 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:piaofu',levels:3}]] run effect give @e[tag=enchantment_piaofu] levitation 4 1 true
execute if score @s enchantment_chance_piaofu matches 1..70 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:piaofu',levels:4}]] run effect give @e[tag=enchantment_piaofu] levitation 5 1 true
execute if score @s enchantment_chance_piaofu matches 1..85 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:piaofu',levels:{min:5}}]] run effect give @e[tag=enchantment_piaofu] levitation 10 4 true
tag @s remove enchantment_piaofu