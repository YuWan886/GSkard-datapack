tag @s add enchantment_huanman
#有等级*15%的概率应用缓慢
execute store result score @s enchantment_chance_huanman run random value 1..100
execute if score @s enchantment_chance_huanman matches 1..15 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:huanman',levels:1}]] run effect give @e[tag=enchantment_huanman] slowness 3 0 true
execute if score @s enchantment_chance_huanman matches 1..30 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:huanman',levels:2}]] run effect give @e[tag=enchantment_huanman] slowness 4 0 true
execute if score @s enchantment_chance_huanman matches 1..45 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:huanman',levels:3}]] run effect give @e[tag=enchantment_huanman] slowness 5 1 true
execute if score @s enchantment_chance_huanman matches 1..60 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:huanman',levels:4}]] run effect give @e[tag=enchantment_huanman] slowness 5 2 true
execute if score @s enchantment_chance_huanman matches 1..75 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:huanman',levels:{min:5}}]] run effect give @e[tag=enchantment_huanman] slowness 10 4 true
tag @s remove enchantment_huanman
advancement revoke @s only kards:shenqi/tianshenshibanjia/enchantment/huanman