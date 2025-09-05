function kards:game/yongpaiku/use_general/kard_general




execute if entity @s[team=red] run effect give @a[team=blue,gamemode=adventure] mining_fatigue 20 4 false

execute if entity @s[team=blue] run effect give @a[team=red,gamemode=adventure] mining_fatigue 20 4 false
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jieduan kardCount
