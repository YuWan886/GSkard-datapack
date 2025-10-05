tag @s add enchantment_zhiming
execute on attacker run tag @s add enchantment_zhiming_1

execute on attacker unless score @s shizhongjian_template_1 = @n[tag=enchantment_zhiming] shizhongjian_template_2 run scoreboard players reset @s enchantment_zhiming_cishu

execute on attacker run scoreboard players operation @n[tag=enchantment_zhiming] shizhongjian_template_2 = @s shizhongjian_template_1
execute as @a[tag=!enchantment_zhiming] if score @s shizhongjian_template_2 = @n[tag=enchantment_zhiming_1] shizhongjian_template_1 run scoreboard players reset @s shizhongjian_template_2

execute on attacker unless score @s enchantment_zhiming_cishu matches 1.. run attribute @s attack_damage modifier remove 0-0-1
execute on attacker unless score @s enchantment_zhiming_cishu matches 2.. run attribute @s attack_damage modifier remove 0-0-2
execute on attacker unless score @s enchantment_zhiming_cishu matches 3.. run attribute @s attack_damage modifier remove 0-0-3
execute on attacker unless score @s enchantment_zhiming_cishu matches 4.. run attribute @s attack_damage modifier remove 0-0-4
execute on attacker unless score @s enchantment_zhiming_cishu matches 5.. run attribute @s attack_damage modifier remove 0-0-5
execute on attacker unless score @s enchantment_zhiming_cishu matches 6.. run attribute @s attack_damage modifier remove 0-0-6
execute on attacker unless score @s enchantment_zhiming_cishu matches 7.. run attribute @s attack_damage modifier remove 0-0-7
execute on attacker unless score @s enchantment_zhiming_cishu matches 8.. run attribute @s attack_damage modifier remove 0-0-8
execute on attacker unless score @s enchantment_zhiming_cishu matches 9.. run attribute @s attack_damage modifier remove 0-0-9
execute on attacker unless score @s enchantment_zhiming_cishu matches 10 run attribute @s attack_damage modifier remove 0-0-10

#对同一个敌人造成伤害时增加8%攻击属性 最多到80%
execute on attacker run scoreboard players add @s enchantment_zhiming_cishu 1
execute on attacker if score @s enchantment_zhiming_cishu matches 11.. run scoreboard players set @s enchantment_zhiming_cishu 10

execute on attacker if score @s enchantment_zhiming_cishu matches 1 run attribute @s attack_damage modifier add 0-0-1 0.08 add_multiplied_base
execute on attacker if score @s enchantment_zhiming_cishu matches 2 run attribute @s attack_damage modifier add 0-0-2 0.08 add_multiplied_base
execute on attacker if score @s enchantment_zhiming_cishu matches 3 run attribute @s attack_damage modifier add 0-0-3 0.08 add_multiplied_base
execute on attacker if score @s enchantment_zhiming_cishu matches 4 run attribute @s attack_damage modifier add 0-0-4 0.08 add_multiplied_base
execute on attacker if score @s enchantment_zhiming_cishu matches 5 run attribute @s attack_damage modifier add 0-0-5 0.08 add_multiplied_base
execute on attacker if score @s enchantment_zhiming_cishu matches 6 run attribute @s attack_damage modifier add 0-0-6 0.08 add_multiplied_base
execute on attacker if score @s enchantment_zhiming_cishu matches 7 run attribute @s attack_damage modifier add 0-0-7 0.08 add_multiplied_base
execute on attacker if score @s enchantment_zhiming_cishu matches 8 run attribute @s attack_damage modifier add 0-0-8 0.08 add_multiplied_base
execute on attacker if score @s enchantment_zhiming_cishu matches 9 run attribute @s attack_damage modifier add 0-0-9 0.08 add_multiplied_base
execute on attacker if score @s enchantment_zhiming_cishu matches 10 run attribute @s attack_damage modifier add 0-0-10 0.08 add_multiplied_base

tag @s remove enchantment_zhiming

