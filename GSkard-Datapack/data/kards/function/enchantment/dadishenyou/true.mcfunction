scoreboard players add @s enchantment_dadishenyou_temp 1

execute if items entity @s armor.* #kards:armor[enchantments~[{enchantments:'kards:dadishenyou',levels:1}]] if score @s enchantment_dadishenyou_temp matches 25.. run effect give @s resistance 1 0 false
execute if items entity @s armor.* #kards:armor[enchantments~[{enchantments:'kards:dadishenyou',levels:2}]] if score @s enchantment_dadishenyou_temp matches 25.. run effect give @s resistance 1 1 false
execute if items entity @s armor.* #kards:armor[enchantments~[{enchantments:'kards:dadishenyou',levels:3}]] if score @s enchantment_dadishenyou_temp matches 25.. run effect give @s resistance 1 2 false
execute if items entity @s armor.* #kards:armor[enchantments~[{enchantments:'kards:dadishenyou',levels:{min:4}}]] if score @s enchantment_dadishenyou_temp matches 25.. run effect give @s resistance 1 3 false

execute if score @s enchantment_dadishenyou_temp matches 25.. run particle minecraft:falling_dust{block_state: "minecraft:dirt"} ~ ~ ~ 0.35 1 0.35 100 2