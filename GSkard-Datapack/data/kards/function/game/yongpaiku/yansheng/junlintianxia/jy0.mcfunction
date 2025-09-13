
function kards:game/yongpaiku/use_general/tellraw
item modify entity @s weapon.offhand {function:"set_count",count:-1,add:true}
scoreboard players operation @s kardCount -= #kard_junlintianxia kardCount
execute at @s run function kards:game/yongpaiku/yansheng/junlintianxia/jy

scoreboard players add @s HealBack 64
