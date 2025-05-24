execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[龙息]",color:"dark_blue"}]
execute at @s[team=red] run effect give @e[distance=..5,team=blue] levitation 5 4 true
execute as @s[team=red] run effect clear @e[team=red] slowness
execute as @s[team=red] run effect clear @e[team=red] mining_fatigue
execute as @s[team=red] run effect clear @e[team=red] blindness
execute as @s[team=red] run effect clear @e[team=red] weakness
execute as @s[team=red] run effect clear @e[team=red] poison
execute as @s[team=red] run effect clear @e[team=red] wither
execute as @s[team=red] run effect clear @e[team=red] levitation
execute as @s[team=red] run effect clear @e[team=red] darkness
execute at @s[team=blue] run effect give @e[distance=..5,team=red] levitation 5 4 true
execute as @s[team=blue] run effect clear @e[team=blue] slowness
execute as @s[team=blue] run effect clear @e[team=blue] mining_fatigue
execute as @s[team=blue] run effect clear @e[team=blue] blindness
execute as @s[team=blue] run effect clear @e[team=blue] weakness
execute as @s[team=blue] run effect clear @e[team=blue] poison
execute as @s[team=blue] run effect clear @e[team=blue] wither
execute as @s[team=blue] run effect clear @e[team=blue] levitation
execute as @s[team=blue] run effect clear @e[team=blue] darkness
item replace entity @s weapon.offhand with air

