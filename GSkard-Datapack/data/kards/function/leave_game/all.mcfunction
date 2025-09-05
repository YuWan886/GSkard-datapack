execute if entity @s[team=!red,team=!blue] unless score #system GameStatus matches 0 run return run function kards:leave_game/sp
execute if entity @s[team=red] unless score #system GameStatus matches 0 run return run function kards:leave_game/ingame
execute if entity @s[team=blue] unless score #system GameStatus matches 0 run return run function kards:leave_game/ingame
