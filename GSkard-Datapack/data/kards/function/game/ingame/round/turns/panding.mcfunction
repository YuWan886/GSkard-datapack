
scoreboard players set system round_panding 2
scoreboard players operation system GameRound = 回合数 GameRound
scoreboard players operation system GameRound %= system round_panding
execute if score system GameRound matches 0 run function kards:game/ingame/GameRound/turns/blue
execute if score system GameRound matches 1 run function kards:game/ingame/GameRound/turns/red
scoreboard players reset system GameRound