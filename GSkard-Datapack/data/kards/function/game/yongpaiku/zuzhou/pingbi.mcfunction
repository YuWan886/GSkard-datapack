

function kards:game/yongpaiku/use_general/kard_general

scoreboard players set @s pingbi 0
scoreboard players set @s pingbi 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_pingbi kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players add @s use_kard 1