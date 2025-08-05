#1
execute as @e[type=item] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item] run data modify entity @s PickupDelay set value 0
execute as @e[type=item] at @s run tp @s @n[type=player] 

#2
execute as @a unless items entity @s container.0 *[] run clear @s *[]
execute as @a unless items entity @s container.0 *[] run give @s *[]