execute as @a if score system GameStatus matches 1..2 if score @s death matches 1.. run function kards:game/ingame/death/2
execute as @a if score system GameStatus matches 0 run scoreboard players set @s death 0
