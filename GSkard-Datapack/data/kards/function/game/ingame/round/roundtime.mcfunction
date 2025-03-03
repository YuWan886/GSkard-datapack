execute store result bossbar minecraft:roundtime value run scoreboard players remove time roundtime 1
execute if score time roundtime matches 0 run function kards:game/ingame/round/take_turns/timeout
execute if score time roundtime matches 0 run scoreboard players set time roundtime 1200
