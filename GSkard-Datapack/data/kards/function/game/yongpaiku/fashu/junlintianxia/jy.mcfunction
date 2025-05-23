tag @s add jyda

playsound minecraft:block.ancient_debris.break block @a[distance=..7]
playsound minecraft:block.anvil.place block @a

execute at @s[team=red] as @e[distance=..7,team=blue] run function kards:game/yongpaiku/fashu/junlintianxia/jy1
execute at @s[team=blue] as @e[distance=..7,team=red] run function kards:game/yongpaiku/fashu/junlintianxia/jy1

tag @s remove jyda

