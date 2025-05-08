title @a title [{"text":"红方回合","color":"red","bold":true}]
bossbar set minecraft:roundtime color red
scoreboard players set @a[team=red] canuse 1
scoreboard players set @a[team=blue] canuse 0
scoreboard players set @a[team=red] tiaoguo 1
scoreboard players set @a[team=blue] tiaoguo 0
execute as @a[scores={canuse=1}] run scoreboard players operation @s kardCount = @s kardCountmax
scoreboard players set @a[gamemode=adventure] cishu 5
scoreboard players operation time roundtime = system roundtime
scoreboard players set 回合数 round 1

execute if score system roundtime matches 0 run function kards:game/ingame/round/pvpround/waitstart
execute if score system roundtime matches 0 run difficulty hard
execute if score system roundtime matches 0 run scoreboard players add @a[gamemode=adventure] zhuangbeicishu 10

execute if score system roundtime matches 0 run scoreboard players set @a[gamemode=adventure] cishu 0
execute if score system roundtime matches 0 run bossbar set minecraft:roundtime visible false

execute if score system DifficultyRound matches 1 run tellraw @a [{"text":"当前游戏难度：困难","color":"gold","bold":true},{"text":"\n怪物造成的伤害提升至1.5倍 玩家受到的部分伤害提升","color":"gray","bold":true}]
execute if score system DifficultyRound matches 1 run return run difficulty hard
tellraw @a [{"text":"当前游戏难度：普通","color":"gold","bold":true},{"text":"\n怪物造成的伤害为1倍","color":"gray","bold":true}]
difficulty normal