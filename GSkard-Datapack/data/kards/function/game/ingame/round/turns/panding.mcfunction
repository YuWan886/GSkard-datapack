
scoreboard players set system round_panding 2
scoreboard players operation system round = 回合数 round
scoreboard players operation system round %= system round_panding
execute if score system round matches 0 run function kards:game/ingame/round/turns/blue
execute if score system round matches 1 run function kards:game/ingame/round/turns/red
scoreboard players reset system round