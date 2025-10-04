execute unless score @s Crossbow_RS matches -2147483648..2147483647 run scoreboard players set @s Crossbow_RS 100
execute store result storage kards:crossbow speed float 0.0003 run scoreboard players get @s Crossbow_RS
function kards:game/player/crossbow/3 with storage kards:crossbow