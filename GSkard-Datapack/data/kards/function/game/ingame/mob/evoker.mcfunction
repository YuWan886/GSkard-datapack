execute as @e[type=evoker] store result score @s SpellTicks run data get entity @s SpellTicks
execute as @e[type=evoker] if score @s SpellTicks matches 1.. run data modify entity @s SpellTicks set value 0
effect give @e[type=evoker] speed infinite 0 true