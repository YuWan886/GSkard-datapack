effect give @s speed 1 0 false
scoreboard players add @s enchantment_fengxingzhe_temp 1
execute if score @s enchantment_fengxingzhe_temp matches 20.. run effect give @s speed 1 1 false
execute if score @s enchantment_fengxingzhe_temp matches 60.. run effect give @s speed 1 2 false
execute if score @s enchantment_fengxingzhe_temp matches 20.. at @s run particle spit ~ ~ ~ 0.25 0 0.25 0 1 force @a