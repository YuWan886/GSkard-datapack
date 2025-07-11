tag @s add enchantment_shiming
#有等级*25%的概率应用失明 对怪物触发时改为眩晕
execute store result score @s enchantment_chance_shiming run random value 1..100
execute if score @s enchantment_chance_shiming matches 1..25 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:shiming',levels:1}]] run effect give @e[tag=enchantment_shiming,type=player] blindness 3 0 true
execute if score @s enchantment_chance_shiming matches 1..50 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:shiming',levels:2}]] run effect give @e[tag=enchantment_shiming,type=player] blindness 4 0 true
execute if score @s enchantment_chance_shiming matches 1..75 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:shiming',levels:3}]] run effect give @e[tag=enchantment_shiming,type=player] blindness 5 1 true
execute if score @s enchantment_chance_shiming matches 1..100 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:shiming',levels:{min:4}}]] run effect give @e[tag=enchantment_shiming,type=player] blindness 8 1 true

execute if score @s enchantment_chance_shiming matches 1..25 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:shiming',levels:1}]] run scoreboard players add @e[tag=enchantment_shiming,type=!player] XuanYun 60
execute if score @s enchantment_chance_shiming matches 1..50 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:shiming',levels:2}]] run scoreboard players add @e[tag=enchantment_shiming,type=!player] XuanYun 80
execute if score @s enchantment_chance_shiming matches 1..75 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:shiming',levels:3}]] run scoreboard players add @e[tag=enchantment_shiming,type=!player] XuanYun 100
execute if score @s enchantment_chance_shiming matches 1..100 on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:shiming',levels:{min:4}}]] run scoreboard players add @e[tag=enchantment_shiming,type=!player] XuanYun 160

tag @e[scores={XuanYun=1..},tag=enchantment_shiming,type=!player] add XuanYun
tag @s remove enchantment_shiming
advancement revoke @s only kards:shenqi/tianshenshibanjia/enchantment/shiming