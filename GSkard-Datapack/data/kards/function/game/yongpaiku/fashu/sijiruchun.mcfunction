execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.fashu.sijiruchun.1",color:"dark_purple",hover_event:{action:"show_text","value":"抽两张牌并为队伍其他玩家回复4K"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_sijiruchun kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0

tag @s add K
#红
execute if entity @s[team=red] run scoreboard players add @a[team=red,tag=!K] kardCount 4
#蓝
execute if entity @s[team=blue] run scoreboard players add @a[team=blue,tag=!K] kardCount 4
tag @s remove K
scoreboard players add @s cishu 2
