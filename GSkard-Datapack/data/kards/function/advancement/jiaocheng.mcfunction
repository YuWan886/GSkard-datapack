execute if score #system GameStatus matches 0 run team join lobby @s
execute if score #system GameStatus matches 0 run return run gamemode adventure @s

team join Spectator @s
tp @s @r[gamemode=adventure]
