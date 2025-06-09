execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[下界入侵]",color:"dark_green",hover_event:{action:"show_text",value:"召唤1只猪灵 回收所有基本牌 每回收1张基本牌 多召唤1只"}}]
#存储数量
execute store result score @s ronghui_jiben run clear @s minecraft:music_disc_mall
#红队用
execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:piglin ~ 5 ~ {Team:red,IsBaby:0b,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"}}}
#蓝队用
execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:piglin ~ 5 ~ {Team:blue,IsBaby:0b,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"}}}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
tellraw @a [{text: "基本牌回收数:",color:"dark_red",bold:false},{score:{objective:"ronghui_jiben",name:"@s"},color:"green",bold:false}]
execute if score @s ronghui_jiben matches 1.. run function kards:game/yongpaiku/juntuan/xiajieruqing/2
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xiajieruqing kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1