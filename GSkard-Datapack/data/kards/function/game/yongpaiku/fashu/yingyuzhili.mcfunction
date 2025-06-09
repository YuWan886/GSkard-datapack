execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[盈余之力]",color:"dark_purple",hover_event:{action:"show_text",value:"消耗你所有的K 每消耗2K就给队伍所有玩家治疗1♥"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_yingyuzhili kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red,type=player] if score 红队 xianjin_shufashixiao matches 1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue,type=player] if score 蓝队 xianjin_shufashixiao matches 1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red,type=player] if score 红队 xianjin_youdi matches 1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue,type=player] if score 蓝队 xianjin_youdi matches 1 run return run scoreboard players set 蓝队 xianjin_youdi 0

scoreboard players operation @a[team=red] HealBack += @s[team=red] kardCount
scoreboard players operation @a[team=blue] HealBack += @s[team=blue] kardCount

scoreboard players set @s kardCount 0
