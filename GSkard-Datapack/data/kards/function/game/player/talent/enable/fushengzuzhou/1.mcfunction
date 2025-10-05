attribute @s max_health modifier add talent-2 -0.2 add_multiplied_base
tag @s add Talent_fushengzuzhou_end
effect give @s instant_health 1 200 true


data modify storage temp LastDeathLocation.X set from entity @s LastDeathLocation.pos.[0]
data modify storage temp LastDeathLocation.Y set from entity @s LastDeathLocation.pos.[1]
data modify storage temp LastDeathLocation.Z set from entity @s LastDeathLocation.pos.[2]

function kards:game/player/talent/enable/fushengzuzhou/2 with storage temp LastDeathLocation

