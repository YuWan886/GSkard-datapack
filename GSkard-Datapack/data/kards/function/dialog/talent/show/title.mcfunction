execute unless score @s Talent_Count matches -2147483648..2147483647 run scoreboard players set @s Talent_Count 0

execute store result storage kards _.Talent_Count int 1 run scoreboard players get @s Talent_Count

function kards:dialog/talent/show/title_ with storage kards _