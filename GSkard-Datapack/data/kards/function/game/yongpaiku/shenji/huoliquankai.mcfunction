execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[火力全开]","color":"white","hoverEvent":{"action":"show_text","value":"获得30点使用点数"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
scoreboard players add @s kardCount 30
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 0
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1