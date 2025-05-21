title @a title [{translate: "game.ingame.round.roundtime.6",color:"red",bold:true}]
bossbar set minecraft:roundtime color red
scoreboard players set @a[team=red] CanuseKard 1
scoreboard players set @a[team=blue] CanuseKard 0
scoreboard players set @a[team=red] tiaoguo 1
scoreboard players set @a[team=blue] tiaoguo 0
execute as @a[scores={CanuseKard=1}] run scoreboard players operation @s kardCount = @s kardCountmax
scoreboard players set @a[gamemode=adventure] cishu 5
scoreboard players operation time roundtime = #system roundtime
scoreboard players set 回合数 GameRound 1

execute if score #system roundtime matches 0 run function kards:game/ingame/round/pvpround/waitstart
execute if score #system roundtime matches 0 run difficulty hard
execute if score #system roundtime matches 0 run scoreboard players add @a[gamemode=adventure] zhuangbeicishu 10

execute if score #system roundtime matches 0 run scoreboard players set @a[gamemode=adventure] cishu 0
execute if score #system roundtime matches 0 run bossbar set minecraft:roundtime visible false

execute if score #system DifficultyRound matches 1 run tellraw @a [{translate: "game.ingame.round.startround.1",color:"gold",bold:true},{translate: "game.ingame.round.startround.2",color:"gray",bold:true}]
execute if score #system DifficultyRound matches 1 run return run difficulty hard
tellraw @a [{translate: "game.ingame.round.startround.3",color:"gold",bold:true},{translate: "game.ingame.round.startround.4",color:"gray",bold:true}]
difficulty normal