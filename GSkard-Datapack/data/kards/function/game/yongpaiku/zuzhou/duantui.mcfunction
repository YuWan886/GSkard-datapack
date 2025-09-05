function kards:game/yongpaiku/use_general/kard_general




execute if entity @s[team=red] run effect give @a[team=blue,gamemode=adventure] slowness 15 1 false
execute if entity @s[team=red] run scoreboard players set @a[team=blue,gamemode=adventure] DuanTui 300
execute if entity @s[team=red] run tag @a[team=blue,gamemode=adventure] add DuanTui

execute if entity @s[team=blue] run effect give @a[team=red,gamemode=adventure] slowness 15 1 false
execute if entity @s[team=blue] run scoreboard players set @a[team=red,gamemode=adventure] DuanTui 300
execute if entity @s[team=blue] run tag @a[team=red,gamemode=adventure] add DuanTui
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_duantui kardCount
