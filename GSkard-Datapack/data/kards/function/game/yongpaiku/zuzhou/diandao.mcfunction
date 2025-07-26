

function kards:game/yongpaiku/use_general/kard_general

execute if entity @s[team=red] run effect give @a[team=blue,gamemode=adventure] levitation 5 10 true
execute if entity @s[team=blue] run effect give @a[team=red,gamemode=adventure] levitation 5 10 true
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_diandao kardCount
