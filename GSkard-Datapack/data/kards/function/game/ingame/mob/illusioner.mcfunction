execute as @e[type=illusioner] store result score @s SpellTicks run data get entity @s SpellTicks
execute as @e[type=illusioner] if score @s SpellTicks matches 1.. run data modify entity @s SpellTicks set value 0
effect give @e[type=illusioner] speed infinite 0 false