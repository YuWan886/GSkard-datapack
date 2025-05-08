execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=red] [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[法术失效]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"条件：敌方任意玩家使用法术牌时\n触发：该法术失效"}}]
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=blue] [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"?????","color":"dark_aqua"}]

execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=blue] [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[法术失效]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"条件：敌方任意玩家使用法术牌时\n触发：该法术失效"}}]
execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=red] [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"?????","color":"dark_aqua"}]

#红
execute if entity @s[team=red] run scoreboard players set 蓝队 xianjin_shufashixiao 1
#蓝
execute if entity @s[team=blue] run scoreboard players set 红队 xianjin_shufashixiao 1
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 5
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1