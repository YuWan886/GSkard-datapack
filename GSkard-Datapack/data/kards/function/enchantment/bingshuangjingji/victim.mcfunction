tag @s add enchantment_bingshuangjingji_victim_temp
execute store result storage temp enchantment_temp.main int 1 run data get entity @s equipment.chest.components."minecraft:enchantments"."kards:bingshuangjingji"
execute store result storage temp enchantment_temp.bufftime int 3 run data get entity @s equipment.chest.components."minecraft:enchantments"."kards:bingshuangjingji"