scoreboard players add 回合数 GameRound 1

execute unless score #system Relax_Round matches 1 unless score #system RoundCount matches -1 if score 回合数 GameRound = #system DifficultyRound run return run function kards:game/ingame/round/turns/relax
execute unless score #system Relax_Round matches 1 if score #system RoundCount matches -1 if score 回合数 GameRound matches 11 run return run function kards:game/ingame/round/turns/relax

scoreboard players set #system round_panding 2
scoreboard players operation #system GameRound = 回合数 GameRound
scoreboard players operation #system GameRound %= #system round_panding

execute if score #system GameRound matches 0 run function kards:game/ingame/round/turns/blue
execute if score #system GameRound matches 1 run function kards:game/ingame/round/turns/red
