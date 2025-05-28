tag @s add enchantment_zhongdu
#有30%+等级*15%的概率应用中毒
execute store result score @s enchantment_chance_zhongdu run random value 1..100
execute if score @s enchantment_chance_zhongdu matches 1..45 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:zhongdu',levels:1}]] run effect give @e[tag=enchantment_zhongdu] poison 3 0 true
execute if score @s enchantment_chance_zhongdu matches 1..60 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:zhongdu',levels:2}]] run effect give @e[tag=enchantment_zhongdu] poison 4 0 true
execute if score @s enchantment_chance_zhongdu matches 1..75 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:zhongdu',levels:3}]] run effect give @e[tag=enchantment_zhongdu] poison 4 1 true
execute if score @s enchantment_chance_zhongdu matches 1..90 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:zhongdu',levels:4}]] run effect give @e[tag=enchantment_zhongdu] poison 5 1 true
execute if score @s enchantment_chance_zhongdu matches 1..100 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:zhongdu',levels:{min:5}}]] run effect give @e[tag=enchantment_zhongdu] poison 10 4 true
tag @s remove enchantment_zhongdu