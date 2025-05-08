execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[闪电轰鸣]","color":"dark_purple","hoverEvent":{"action":"show_text","value":"向敌方所有玩家召唤闪电 附带1s眩晕"}}]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 4
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0

execute if entity @s[team=red] as @a[team=blue,gamemode=adventure] at @s run function kards:game/yongpaiku/fashu/shandianhongming/2
execute if entity @s[team=blue] as @a[team=red,gamemode=adventure] at @s run function kards:game/yongpaiku/fashu/shandianhongming/2

