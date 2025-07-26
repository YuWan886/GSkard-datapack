

execute at @s[team=red] run effect give @e[distance=..5,team=blue] levitation 5 4 true
execute if entity @s[team=red] run effect clear @e[team=red] slowness
execute if entity @s[team=red] run effect clear @e[team=red] mining_fatigue
execute if entity @s[team=red] run effect clear @e[team=red] blindness
execute if entity @s[team=red] run effect clear @e[team=red] weakness
execute if entity @s[team=red] run effect clear @e[team=red] poison
execute if entity @s[team=red] run effect clear @e[team=red] wither
execute if entity @s[team=red] run effect clear @e[team=red] levitation
execute if entity @s[team=red] run effect clear @e[team=red] darkness
execute at @s[team=blue] run effect give @e[distance=..5,team=red] levitation 5 4 true
execute if entity @s[team=blue] run effect clear @e[team=blue] slowness
execute if entity @s[team=blue] run effect clear @e[team=blue] mining_fatigue
execute if entity @s[team=blue] run effect clear @e[team=blue] blindness
execute if entity @s[team=blue] run effect clear @e[team=blue] weakness
execute if entity @s[team=blue] run effect clear @e[team=blue] poison
execute if entity @s[team=blue] run effect clear @e[team=blue] wither
execute if entity @s[team=blue] run effect clear @e[team=blue] levitation
execute if entity @s[team=blue] run effect clear @e[team=blue] darkness
item replace entity @s weapon.offhand with air

