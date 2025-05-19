# 火球骰子
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.yansheng.huoqiutouzi.1",color:"dark_blue"}]

execute store result score @s huoyantouzi run random roll 1..12

# 红
execute as @s[team=red,scores={huoyantouzi=1..5}] at @r[team=blue] run setblock ~ ~ ~ fire
execute as @s[team=red,scores={huoyantouzi=1..5}] at @r[team=blue] run setblock ~ ~ ~ air
execute as @s[team=red,scores={huoyantouzi=6..8}] at @a[team=blue,sort= random,limit=3] run setblock ~ ~ ~ fire
execute as @s[team=red,scores={huoyantouzi=6..8}] at @a[team=blue,sort=random,limit=3] run setblock ~ ~ ~ air
execute as @s[team=red,scores={huoyantouzi=9..10}] at @e[team=blue] run setblock ~ ~ ~ fire
execute as @s[team=red,scores={huoyantouzi=9..10}] at @e[team=blue] run setblock ~ ~ ~ air
# 蓝
execute as @s[team=blue,scores={huoyantouzi=1..5}] at @r[team=red] run setblock ~ ~ ~ fire
execute as @s[team=blue,scores={huoyantouzi=1..5}] at @r[team=red] run setblock ~ ~ ~ air
execute as @s[team=blue,scores={huoyantouzi=6..8}] at @a[team=red,sort= random,limit=3] run setblock ~ ~ ~ fire
execute as @s[team=blue,scores={huoyantouzi=6..8}] at @a[team=red,sort=random,limit=3] run setblock ~ ~ ~ air
execute as @s[team=blue,scores={huoyantouzi=9..10}] at @e[team=red] run setblock ~ ~ ~ fire
execute as @s[team=blue,scores={huoyantouzi=9..10}] at @e[team=red] run setblock ~ ~ ~ air

scoreboard players set @s huoyantouzi 0

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_huoqiutouzi kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1