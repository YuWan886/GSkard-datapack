execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.fashu.beishuiyizhan.1",color:"dark_purple",hover_event:{action:"show_text","value":"每有一个友方死亡 就获得10点数 抽二张牌"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_beishuiyizhan kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1

function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0

scoreboard players add @s cishu 2
#红
execute if entity @s[team=red] if score #system r_death matches 1.. run scoreboard players add @s kardCount 10
execute if entity @s[team=red] if score #system r_death matches 1.. run scoreboard players add @s cishu 2
execute if entity @s[team=red] if score #system r_death matches 2.. run scoreboard players add @s kardCount 10
execute if entity @s[team=red] if score #system r_death matches 2.. run scoreboard players add @s cishu 2
execute if entity @s[team=red] if score #system r_death matches 3.. run scoreboard players add @s kardCount 10
execute if entity @s[team=red] if score #system r_death matches 3.. run scoreboard players add @s cishu 2
#蓝
execute if entity @s[team=blue] if score #system b_death matches 1.. run scoreboard players add @s kardCount 10
execute if entity @s[team=blue] if score #system b_death matches 1.. run scoreboard players add @s cishu 2
execute if entity @s[team=blue] if score #system b_death matches 2.. run scoreboard players add @s kardCount 10
execute if entity @s[team=blue] if score #system b_death matches 2.. run scoreboard players add @s cishu 2
execute if entity @s[team=blue] if score #system b_death matches 3.. run scoreboard players add @s kardCount 10
execute if entity @s[team=blue] if score #system b_death matches 3.. run scoreboard players add @s cishu 2

