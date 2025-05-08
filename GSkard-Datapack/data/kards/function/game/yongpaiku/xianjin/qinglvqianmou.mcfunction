execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=red] [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[轻虑浅谋]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"条件：敌方回合结束时\n触发：敌方玩家每用1张牌就对自己造成0.5♥伤害"}}]
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=blue] [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"?????","color":"dark_aqua"}]

execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=blue] [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[轻虑浅谋]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"条件：敌方回合结束时\n触发：敌方玩家每用1张牌就对自己造成0.5♥伤害"}}]
execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=red] [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"?????","color":"dark_aqua"}]

#红
execute if entity @s[team=red] run scoreboard players set 蓝队 xianjin_qinglvqianmou 2
#蓝
execute if entity @s[team=blue] run scoreboard players set 红队 xianjin_qinglvqianmou 2
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 7
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1