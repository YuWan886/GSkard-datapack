execute as @a[gamemode=adventure] run attribute @s scale base set 2.5
execute as @a[gamemode=adventure] run attribute @s max_health modifier add 0-0-12 1.5 add_multiplied_total
execute as @a[gamemode=adventure] run attribute @s entity_interaction_range modifier add 0-0-3 1.5 add_multiplied_total
execute as @a[gamemode=adventure] run attribute @s movement_speed modifier add 0-0-6 1.5 add_multiplied_total
execute as @a[gamemode=adventure] run attribute @s jump_strength modifier add 0-0-5 1.5 add_multiplied_total
execute as @a[gamemode=adventure] run attribute @s safe_fall_distance modifier add 0-0-2 1.5 add_multiplied_total
effect give @a instant_health 1 200 false