scoreboard players add @s enchantment_zhiming_cishu 1

attribute @s attack_damage modifier remove 0-0-1

execute if score @s enchantment_zhiming_cishu matches 1 run attribute @s attack_damage modifier add 0-0-1 0.08 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 2 run attribute @s attack_damage modifier add 0-0-1 0.16 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 3 run attribute @s attack_damage modifier add 0-0-1 0.24 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 4 run attribute @s attack_damage modifier add 0-0-1 0.32 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 5 run attribute @s attack_damage modifier add 0-0-1 0.4 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 6 run attribute @s attack_damage modifier add 0-0-1 0.48 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 7 run attribute @s attack_damage modifier add 0-0-1 0.56 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 8 run attribute @s attack_damage modifier add 0-0-1 0.64 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 9 run attribute @s attack_damage modifier add 0-0-1 0.72 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 10.. run attribute @s attack_damage modifier add 0-0-1 0.8 add_multiplied_base

execute if score @s enchantment_zhiming_cishu matches 1 run tellraw @s [{text:"您正在追击目标 当前近战攻击增伤",color:"gold"},{text:"8",color:"green"},{text:"%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 2 run tellraw @s [{text:"您正在追击目标 当前近战攻击增伤",color:"gold"},{text:"16",color:"green"},{text:"%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 3 run tellraw @s [{text:"您正在追击目标 当前近战攻击增伤",color:"gold"},{text:"24",color:"green"},{text:"%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 4 run tellraw @s [{text:"您正在追击目标 当前近战攻击增伤",color:"gold"},{text:"32",color:"green"},{text:"%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 5 run tellraw @s [{text:"您正在追击目标 当前近战攻击增伤",color:"gold"},{text:"40",color:"green"},{text:"%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 6 run tellraw @s [{text:"您正在追击目标 当前近战攻击增伤",color:"gold"},{text:"48",color:"green"},{text:"%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 7 run tellraw @s [{text:"您正在追击目标 当前近战攻击增伤",color:"gold"},{text:"56",color:"green"},{text:"%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 8 run tellraw @s [{text:"您正在追击目标 当前近战攻击增伤",color:"gold"},{text:"64",color:"green"},{text:"%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 9 run tellraw @s [{text:"您正在追击目标 当前近战攻击增伤",color:"gold"},{text:"72",color:"green"},{text:"%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 10.. run tellraw @s [{text:"您正在追击目标 当前近战攻击增伤",color:"gold"},{text:"80",color:"green"},{text:"%",color:"gold"}]