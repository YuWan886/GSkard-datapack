execute if score @s enchantment_yuezhan_temp matches 1.. run return fail
scoreboard players set @s enchantment_yuezhan_temp 40
execute if items entity @s weapon.mainhand #kards:melee_weapon[enchantments~[{enchantments:'kards:yuezhan',levels:1}]] run effect give @s strength 1 0 false
execute if items entity @s weapon.mainhand #kards:melee_weapon[enchantments~[{enchantments:'kards:yuezhan',levels:{min:2}}]] run effect give @s strength 1 1 false