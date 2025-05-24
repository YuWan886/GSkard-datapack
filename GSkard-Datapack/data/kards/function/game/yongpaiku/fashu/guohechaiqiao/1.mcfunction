execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.fashu.guohechaiqiao.1.1",color:"dark_purple",hover_event:{action:"show_text","value":"你弃掉敌方一名玩家一张牌"}}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_guohechaiqiao kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
scoreboard players add @s use_kard_fashu 1

function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0


tag @s add User
execute if entity @s[team=red] as @r[team=blue,gamemode=adventure] run function kards:game/yongpaiku/fashu/guohechaiqiao/2
execute if entity @s[team=blue] as @r[team=red,gamemode=adventure] run function kards:game/yongpaiku/fashu/guohechaiqiao/2
