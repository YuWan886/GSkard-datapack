execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[水流涌动]",color:"dark_purple",hover_event:{action:"show_text",value:"抽一张牌 为队伍玩家回复8♥"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shuiliuyongdong kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0

#红
execute if entity @s[team=red] run scoreboard players add @a[team=red] HealBack 8
#蓝
execute if entity @s[team=blue] run scoreboard players add @a[team=blue] HealBack 8

scoreboard players add @s cishu 1
