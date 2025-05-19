execute if score system worldborder matches 1.. run scoreboard players remove system worldborder 1
execute store result bossbar minecraft:worldborder value run scoreboard players add system worldborder 0
execute if score system worldborder matches 0 run worldborder set 5 120
execute if score system worldborder matches 0 run title @a title {translate: "game.ingame.round.pvpround.worldborder.1",color:"gray",bold:true}
execute if score system worldborder matches 0 run bossbar set minecraft:worldborder visible false
execute if score system worldborder matches 1.. run schedule function kards:game/ingame/GameRound/pvpround/worldborder 1t