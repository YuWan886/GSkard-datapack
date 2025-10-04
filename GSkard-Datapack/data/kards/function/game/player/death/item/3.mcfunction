data modify entity @s PickupDelay set value -1
data modify entity @s Thrower set from entity @n[tag=Death_Player] UUID

execute as @s[scores={Item_Start_Count=1}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[0]
execute as @s[scores={Item_Start_Count=2}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[1]
execute as @s[scores={Item_Start_Count=3}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[2]
execute as @s[scores={Item_Start_Count=4}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[3]
execute as @s[scores={Item_Start_Count=5}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[4]
execute as @s[scores={Item_Start_Count=6}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[5]
execute as @s[scores={Item_Start_Count=7}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[6]
execute as @s[scores={Item_Start_Count=8}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[7]
execute as @s[scores={Item_Start_Count=9}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[8]
execute as @s[scores={Item_Start_Count=10}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[9]
execute as @s[scores={Item_Start_Count=11}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[10]
execute as @s[scores={Item_Start_Count=12}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[11]
execute as @s[scores={Item_Start_Count=13}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[12]
execute as @s[scores={Item_Start_Count=14}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[13]
execute as @s[scores={Item_Start_Count=15}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[14]
execute as @s[scores={Item_Start_Count=16}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[15]
execute as @s[scores={Item_Start_Count=17}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[16]
execute as @s[scores={Item_Start_Count=18}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[17]
execute as @s[scores={Item_Start_Count=19}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[18]
execute as @s[scores={Item_Start_Count=20}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[19]
execute as @s[scores={Item_Start_Count=21}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[20]
execute as @s[scores={Item_Start_Count=22}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[21]
execute as @s[scores={Item_Start_Count=23}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[22]
execute as @s[scores={Item_Start_Count=24}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[23]
execute as @s[scores={Item_Start_Count=25}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[24]
execute as @s[scores={Item_Start_Count=26}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[25]
execute as @s[scores={Item_Start_Count=27}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[26]
execute as @s[scores={Item_Start_Count=28}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[27]
execute as @s[scores={Item_Start_Count=29}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[28]
execute as @s[scores={Item_Start_Count=30}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[29]
execute as @s[scores={Item_Start_Count=31}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[30]
execute as @s[scores={Item_Start_Count=32}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[31]
execute as @s[scores={Item_Start_Count=33}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[32]
execute as @s[scores={Item_Start_Count=34}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[33]
execute as @s[scores={Item_Start_Count=35}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[34]
execute as @s[scores={Item_Start_Count=36}] run data modify entity @s Item set from entity @n[tag=Death_Player] Inventory[35]
execute as @s[scores={Item_Start_Count=37}] run data modify entity @s Item set from entity @n[tag=Death_Player] equipment.offhand
execute as @s[scores={Item_Start_Count=38}] run data modify entity @s Item set from entity @n[tag=Death_Player] equipment.head
execute as @s[scores={Item_Start_Count=39}] run data modify entity @s Item set from entity @n[tag=Death_Player] equipment.chest
execute as @s[scores={Item_Start_Count=40}] run data modify entity @s Item set from entity @n[tag=Death_Player] equipment.legs
execute as @s[scores={Item_Start_Count=41}] run data modify entity @s Item set from entity @n[tag=Death_Player] equipment.feet

execute if data entity @s Item{"id":"minecraft:music_disc_11"} run kill @s
tag @s remove Player_Death_Item
data modify entity @s PickupDelay set value 1

execute store result entity @s Motion[0] double 0.01 run random value -30..30
execute store result entity @s Motion[1] double 0.01 run random value -30..30
execute store result entity @s Motion[2] double 0.01 run random value -30..30
data modify entity @s Pos[0] set from entity @n[tag=Death_Player] LastDeathLocation.pos[0]
data modify entity @s Pos[1] set from entity @n[tag=Death_Player] LastDeathLocation.pos[1]
data modify entity @s Pos[2] set from entity @n[tag=Death_Player] LastDeathLocation.pos[2]
#data modify entity @s Dimension set from entity @n[tag=Death_Player] LastDeathLocation.dimension