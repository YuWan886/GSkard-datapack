execute on attacker run tag @s add enchantment_liansuo
execute on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:liansuo',levels:1}]] run scoreboard players set @s enchantment_liansuo 2
execute on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:liansuo',levels:2}]] run scoreboard players set @s enchantment_liansuo 3
execute on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:liansuo',levels:3}]] run scoreboard players set @s enchantment_liansuo 4
execute on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:liansuo',levels:4}]] run scoreboard players set @s enchantment_liansuo 5
execute on attacker if items entity @s weapon.mainhand #kards:jinzhanwuqi[enchantments~[{enchantments:'kards:liansuo',levels:{min:5}}]] run scoreboard players set @s enchantment_liansuo 6

execute on attacker store result storage enchantment_liansuo_damage damage int 0.7 run attribute @s attack_damage get
function kards:enchantment/liansuo/3
