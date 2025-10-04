function kards:game/yongpaiku/use_general/kard_general




function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_chongzhu kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air


execute store result score @s ronghui_zhuangbei run clear @s minecraft:music_disc_13 0
clear @s minecraft:music_disc_13
scoreboard players operation @s zhuangbeicishu = @s ronghui_zhuangbei
tellraw @a [{text: "装备牌回收数:",color:"dark_red",bold:false},{score:{objective:"ronghui_zhuangbei",name:"@s"},color:"green",bold:false}]
scoreboard players set @s ronghui_zhuangbei 0

