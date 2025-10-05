execute as @e if predicate kards:fanghuo run tag @s add Fired
execute as @e[tag=Fired] run scoreboard players set @s Fire 0
execute as @e[tag=Fired] run tag @s remove Fired

scoreboard players remove @e[scores={Fire=1..}] Fire 1
execute as @a[scores={Fire=0..}] run function kards:game/ingame/custom_buff/huoyan/bossbar/1

scoreboard players add @e[scores={Fire=1..}] Fire_take_damage 1

execute as @e[scores={Fire_take_damage=10}] run damage @s 1.5 kards:huoyan
execute as @e[scores={Fire_take_damage=10},tag=Fire_Ex] run damage @s 3 kards:huoyan
execute as @e[scores={Fire_take_damage=10}] at @s run particle lava ~ ~1 ~ 0 0 0 0 2 force @a
execute as @a[scores={Fire_take_damage=10}] if items entity @s armor.head #head_armor[enchantments~[{enchantments:'kards:yuhuozhe'}]] run scoreboard players add @s HealBack 1
execute as @e[scores={Fire_take_damage=10}] run scoreboard players set @s Fire_take_damage 0

tag @e[scores={Fire=0}] remove Fire_Ex
scoreboard players reset @e[scores={Fire=0}] Fire

scoreboard players reset @a[gamemode=spectator,tag=Fire] Fire
tag @a[gamemode=spectator,tag=Fire_Ex] remove Fire_Ex

