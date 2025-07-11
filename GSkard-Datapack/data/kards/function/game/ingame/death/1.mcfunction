execute if score #system GameStatus matches 1..2 as @a[scores={death=1..}] run function kards:game/ingame/death/2
execute if score #system GameStatus matches 0 run scoreboard players set @a death 0
