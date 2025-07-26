

function kards:game/yongpaiku/use_general/kard_general


execute if entity @s[team=red] run scoreboard players set @a[team=blue] kujie 2

execute if entity @s[team=blue] run scoreboard players set @a[team=red] kujie 2
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_kujie kardCount
