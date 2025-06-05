scoreboard players reset @s fengbaozhanchui_xuneng
scoreboard players set @s fengbaozhanchui_xuneng_Time 500

execute at @s run particle minecraft:explosion_emitter ~ ~ ~ 0.5 0 0.5 100 1
execute at @s run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 100 1
execute at @s run tp @s ~ ~1000 ~
gamemode creative @s
execute at @s positioned ^ ^-2.5 ^ anchored eyes summon minecraft:end_crystal run damage @s 1
execute at @s positioned ^ ^-2.5 ^ anchored eyes summon minecraft:end_crystal run damage @s 1

gamemode adventure @s
execute at @s run tp @s ~ ~-1000 ~
tag @s add fengbaozhanchui_xunengzhongji
attribute @s knockback_resistance base set 1
attribute @s safe_fall_distance base set 100