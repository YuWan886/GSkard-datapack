
function kards:game/yongpaiku/use_general/tellraw
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_junlintianxia kardCount
execute at @s run function kards:game/yongpaiku/yansheng/junlintianxia/jy

scoreboard players add @s HealBack 64
