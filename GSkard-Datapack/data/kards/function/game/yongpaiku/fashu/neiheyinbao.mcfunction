function kards:game/yongpaiku/use_general/kard_general




function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_neiheyinbao kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=blue] at @r[gamemode=adventure,team=red] run summon minecraft:fireball ~ ~ ~ {ExplosionPower:2,Tags:["fireball"]}
execute if entity @s[team=red] at @r[gamemode=adventure,team=blue] run summon minecraft:fireball ~ ~ ~ {ExplosionPower:2,Tags:["fireball"]}
execute as @e[tag=fireball] run data modify entity @s Motion set value [0d,-0.5d,0d]

