#设置游戏状态为3(结算)
execute if score system wait_end matches 1.. run scoreboard players remove system wait_end 1
execute if score system wait_end matches 40 run scoreboard players set system status 3
execute if score system wait_end matches 40 run effect give @a resistance 30 4 true
execute if score system wait_end matches 40 run schedule clear kards:game/ingame/round/pvpround/countdown
execute if score system wait_end matches 1 if score system red_end matches 1 run function kards:game/end/win/red_win
execute if score system wait_end matches 1 if score system blue_end matches 1 run function kards:game/end/win/blue_win
execute if score system wait_end matches 1 if score system end matches 1 run function kards:game/end/win/end
execute if score system wait_end matches 1 if score system red_end matches 1 run scoreboard players set system red_end 0
execute if score system wait_end matches 1 if score system blue_end matches 1 run scoreboard players set system blue_end 0
execute if score system wait_end matches 1 if score system end matches 1 run scoreboard players set system end 0