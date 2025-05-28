# 火球骰子
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[火球骰子]",color:"dark_purple"}]

execute store result score @s huoqiutouzi run random value 1..10

# 红
execute if entity @s[team=red,scores={huoqiutouzi=1..4}] run tag @r[team=blue] add huoqiutouzi
execute if entity @s[team=red,scores={huoqiutouzi=5..7}] run tag @a[team=blue,sort=random,limit=3] add huoqiutouzi
execute if entity @s[team=red,scores={huoqiutouzi=8..10}] run tag @a[team=blue,sort=random,limit=5] add huoqiutouzi
# 蓝
execute if entity @s[team=blue,scores={huoqiutouzi=1..4}] run tag @r[team=red] add huoqiutouzi
execute if entity @s[team=blue,scores={huoqiutouzi=5..7}] run tag @a[team=red,sort=random,limit=3] add huoqiutouzi
execute if entity @s[team=blue,scores={huoqiutouzi=8..10}] run tag @a[team=red,sort=random,limit=5] add huoqiutouzi

execute as @a[tag=huoqiutouzi] at @s positioned ~ ~2 ~ summon minecraft:small_fireball run function kards:game/yongpaiku/yansheng/huoqiutouzi/2
tag @a[tag=huoqiutouzi] remove huoqiutouzi

scoreboard players set @s huoqiutouzi 0

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_huoqiutouzi kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
