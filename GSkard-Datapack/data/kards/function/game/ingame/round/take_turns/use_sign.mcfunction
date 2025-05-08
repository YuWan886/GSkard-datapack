execute if score @s tiaoguo matches 0 run tellraw @s {"text":"这不是你的回合!","color":"gray","bold":true}
execute if score @s tiaoguo matches 1 run function kards:game/ingame/round/take_turns/round