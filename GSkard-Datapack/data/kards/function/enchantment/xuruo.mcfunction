tag @s add enchantment_xuruo
#有等级*15%的概率应用虚弱
execute store result score @s enchantment_chance_xuruo run random value 1..100
execute if score @s enchantment_chance_xuruo matches 1..15 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:xuruo',levels:1}]] run effect give @e[tag=enchantment_xuruo] blindness 3 0 true
execute if score @s enchantment_chance_xuruo matches 1..30 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:xuruo',levels:2}]] run effect give @e[tag=enchantment_xuruo] blindness 4 0 true
execute if score @s enchantment_chance_xuruo matches 1..45 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:xuruo',levels:3}]] run effect give @e[tag=enchantment_xuruo] blindness 4 1 true
execute if score @s enchantment_chance_xuruo matches 1..60 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:xuruo',levels:4}]] run effect give @e[tag=enchantment_xuruo] blindness 5 1 true
execute if score @s enchantment_chance_xuruo matches 1..60 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:xuruo',levels:{min:5}}]] run effect give @e[tag=enchantment_xuruo] blindness 10 3 true
tag @s remove enchantment_xuruo