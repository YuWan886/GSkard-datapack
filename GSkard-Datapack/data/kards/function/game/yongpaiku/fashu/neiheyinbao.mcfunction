execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.paiku.fashu.duming.7",color:"dark_purple",hover_event:{action:"show_text","value":"引爆1名敌方玩家 伤害随难度增加伤害"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_neiheyinbao kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1

function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0

execute if entity @s[team=blue] at @r[gamemode=adventure,team=red,sort=random] run summon minecraft:fireball ~ ~1 ~ {ExplosionPower:2,Tags:["fireball"]}
execute if entity @s[team=red] at @r[gamemode=adventure,team=blue,sort=random] run summon minecraft:fireball ~ ~1 ~ {ExplosionPower:2,Tags:["fireball"]}
execute as @e[tag=fireball] run data modify entity @s Motion set value [0d,-0.5d,0d]

