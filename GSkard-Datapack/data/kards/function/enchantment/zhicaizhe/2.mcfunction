tag @s add enchantment_zhicaizhe_victim
execute on attacker if items entity @s weapon crossbow[enchantments~[{enchantments:'kards:zhicaizhe',levels:{min:2}}]] as @e[tag=enchantment_zhicaizhe_victim] at @s run function kards:enchantment/zhicaizhe/crit
execute on attacker if items entity @s weapon crossbow[enchantments~[{enchantments:'kards:zhicaizhe',levels:{min:3}}]] as @e[tag=enchantment_zhicaizhe_victim] run function kards:enchantment/zhicaizhe/chujue
tag @s remove enchantment_zhicaizhe_victim