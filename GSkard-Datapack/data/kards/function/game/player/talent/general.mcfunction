#燃己为光
execute as @a[tag=Talent_ranjiweiguang] run function kards:game/player/talent/enable/ranjiweiguang/bossbar/1
execute as @a[tag=Talent_ranjiweiguang] at @s run tp @s ~ 8 ~ ~ 90
scoreboard players add @a[tag=Talent_ranjiweiguang] Talent_ranjiweiguang_Attack_Time 1
execute as @a[tag=Talent_ranjiweiguang,scores={Talent_ranjiweiguang_Attack_Time=100..}] at @s run function kards:game/player/talent/enable/ranjiweiguang/2
scoreboard players add @e[tag=Talent_ranjiweiguang] Talent_ranjiweiguang_Ball_LifeTime 1
scoreboard players add @e[tag=Talent_ranjiweiguang_Ball] Talent_ranjiweiguang_Ball_LifeTime 1
execute if entity @e[tag=Talent_ranjiweiguang_Ball,type=marker] as @e[tag=Talent_ranjiweiguang_Ball] if score @s Talent_ranjiweiguang_Ball_DeathTime matches 1.. at @s run function kards:game/player/talent/enable/ranjiweiguang/4

#共生
execute as @a[tag=Talent_gongsheng] run function kards:game/player/talent/enable/gongsheng/1

#永远忠诚
execute as @a[tag=Talent_yongyuanzhongcheng] run function kards:game/player/talent/enable/yongyuanzhongcheng/1