execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[石化皮肤]",color:"dark_purple",hover_event:{action:"show_text",value:"队伍玩家获得持续90s的额外生命20♥"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_shihuapifu kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

#红
execute if entity @s[team=red] run effect give @a[team=red] absorption 90 9 true
#蓝
execute if entity @s[team=blue] run effect give @a[team=blue] absorption 90 9 true

