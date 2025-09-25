execute if score time roundtime matches 0 run function kards:game/ingame/round/take_turns/timeout

scoreboard players set #system roundtimeOper 20
scoreboard players operation time roundtimeOper = time roundtime
scoreboard players operation time roundtimeOper /= #system roundtimeOper

function kards:game/ingame/round/roundtime_bossbar