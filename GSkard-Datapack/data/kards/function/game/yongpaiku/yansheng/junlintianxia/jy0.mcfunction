tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[君临天下]",color:"white",hover_event:{action:"show_text",value:"对周围7格敌人造成20♥真实伤害,使其眩晕3s并回复自身32♥"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_junlintianxia kardCount
execute at @s run function kards:game/yongpaiku/yansheng/junlintianxia/jy
scoreboard players add @s HealBack 64
