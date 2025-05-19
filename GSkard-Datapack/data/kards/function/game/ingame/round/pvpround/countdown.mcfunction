
execute store result bossbar minecraft:pvptime value run scoreboard players remove time pvptime 1
execute if score time pvptime matches 0 run bossbar set pvptime visible false
execute if score time pvptime matches 0 run function kards:game/ingame/GameRound/pvpround/start
execute if score time pvptime matches 1.. run schedule function kards:game/ingame/GameRound/pvpround/countdown 1t