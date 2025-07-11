execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[内核引爆]",color:"dark_purple",hover_event:{action:"show_text",value:"引爆1名敌方玩家 伤害随难度增加伤害"}}]
function kards:game/yongpaiku/xianjin/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_neiheyinbao kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
execute if entity @s[team=blue] at @r[gamemode=adventure,team=red,sort=random] run summon minecraft:fireball ~ ~1 ~ {ExplosionPower:2,Tags:["fireball"]}
execute if entity @s[team=red] at @r[gamemode=adventure,team=blue,sort=random] run summon minecraft:fireball ~ ~1 ~ {ExplosionPower:2,Tags:["fireball"]}
execute as @e[tag=fireball] run data modify entity @s Motion set value [0d,-0.5d,0d]
