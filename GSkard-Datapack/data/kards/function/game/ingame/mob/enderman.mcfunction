execute if score #system dituxuanze matches 1..100 as @e[team=red,type=minecraft:enderman] at @e[tag=b_dw] positioned ~ -1 ~ unless entity @s[dx=24,dz=24,dy=10] at @e[tag=blue_marker_7,limit=1] run tp @s ~ 0 ~
execute if score #system dituxuanze matches 1..100 as @e[team=blue,type=minecraft:enderman] at @e[tag=r_dw] positioned ~ -1 ~ unless entity @s[dx=24,dz=24,dy=10] at @e[tag=red_marker_7,limit=1] run tp @s ~ 0 ~


execute if score #system dituxuanze matches 101.. as @e[team=red,type=minecraft:enderman] at @e[tag=b_dw] positioned ~ -1 ~ unless entity @s[dx=34,dz=34,dy=10] at @e[tag=blue_marker_7,limit=1] run tp @s ~ 0 ~
execute if score #system dituxuanze matches 101.. as @e[team=blue,type=minecraft:enderman] at @e[tag=r_dw] positioned ~ -1 ~ unless entity @s[dx=34,dz=34,dy=10] at @e[tag=red_marker_7,limit=1] run tp @s ~ 0 ~

