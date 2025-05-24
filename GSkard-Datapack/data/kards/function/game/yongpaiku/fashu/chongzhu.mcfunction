execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.fashu.chongzhu.1",color:"dark_purple",hover_event:{action:"show_text","value":"将你所有的装备牌回收 每回收1张装备牌则抽一张牌"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_chongzhu kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1

function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0

execute store result score @s ronghui_zhuangbei run clear @s minecraft:music_disc_13 0
clear @s minecraft:music_disc_13
scoreboard players operation @s cishu = @s ronghui_zhuangbei
tellraw @a [{translate: "game.yongpaiku.fashu.chongzhu.2",color:"dark_red",bold:false},{score:{objective:"ronghui_zhuangbei",name:"@s"},color:"green",bold:false}]
scoreboard players set @s ronghui_zhuangbei 0

