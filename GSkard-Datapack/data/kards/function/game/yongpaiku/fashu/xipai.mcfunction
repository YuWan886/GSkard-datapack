execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[洗牌]",color:"dark_purple",hover_event:{action:"show_text",value:"将物品栏最左边两张牌回收 抽两张牌"}}]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 0
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches -1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches -1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches -1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches -1 run return run scoreboard players set 蓝队 xianjin_youdi 0


execute store result score @s kapaishuliang run clear @s #minecraft:creeper_drop_music_discs 0
clear @s #minecraft:creeper_drop_music_discs 2
execute if score @s kapaishuliang matches 1 run scoreboard players add @s cishu 1
execute if score @s kapaishuliang matches 2.. run scoreboard players add @s cishu 2

scoreboard players set @s kapaishuliang 0
