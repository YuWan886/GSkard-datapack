execute if entity @s[team=red] at @s run summon magma_cube ~ 0 ~ {Team:red,Size:3,Tags:["sanrenchengzhong"],attributes:[{id:"follow_range",base:100}]}
execute if entity @s[team=blue] at @s run summon magma_cube ~ 0 ~ {Team:blue,Size:3,Tags:["sanrenchengzhong"],attributes:[{id:"follow_range",base:100}]}
execute at @s run playsound minecraft:bowomp player @a[distance=..20] ~ ~ ~ 100 1
tp @s ~ ~-1000 ~
kill @s