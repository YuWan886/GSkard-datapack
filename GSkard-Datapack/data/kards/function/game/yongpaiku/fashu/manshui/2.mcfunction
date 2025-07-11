execute at @e[limit=1,tag=r_dw,distance=0.01..] align xz run summon marker ~ ~ ~ {Tags:["r_changdi","changdi"]}
execute at @e[limit=1,tag=b_dw,distance=0.01..] align xz run summon marker ~ ~ ~ {Tags:["b_changdi","changdi"]}
execute as @e[tag=r_changdi,type=marker,distance=0.01..] at @s store result storage changdidaxiao r_posx int 1 run data get entity @s Pos[0]
execute as @e[tag=r_changdi,type=marker,distance=0.01..] at @s store result storage changdidaxiao r_posz int 1 run data get entity @s Pos[2]
execute as @e[tag=b_changdi,type=marker,distance=0.01..] at @s store result storage changdidaxiao b_posx int 1 run data get entity @s Pos[0]
execute as @e[tag=b_changdi,type=marker,distance=0.01..] at @s store result storage changdidaxiao b_posz int 1 run data get entity @s Pos[2]
execute if score #system dituxuanze matches 1..100 as @e[tag=changdi,type=marker,distance=0.01..] at @s run tp @s ~25 ~ ~25
execute if score #system dituxuanze matches 101.. as @e[tag=changdi,type=marker,distance=0.01..] at @s run tp @s ~35 ~ ~35
execute as @e[tag=r_changdi,type=marker,distance=0.01..] at @s store result storage changdidaxiao r_posdx int 1 run data get entity @s Pos[0]
execute as @e[tag=r_changdi,type=marker,distance=0.01..] at @s store result storage changdidaxiao r_posdz int 1 run data get entity @s Pos[2]
execute as @e[tag=b_changdi,type=marker,distance=0.01..] at @s store result storage changdidaxiao b_posdx int 1 run data get entity @s Pos[0]
execute as @e[tag=b_changdi,type=marker,distance=0.01..] at @s store result storage changdidaxiao b_posdz int 1 run data get entity @s Pos[2]
kill @e[tag=changdi]
