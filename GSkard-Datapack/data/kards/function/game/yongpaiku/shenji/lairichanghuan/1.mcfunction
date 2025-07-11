execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[来日偿还]",color:"white",hover_event:{action:"show_text",value:"记录你上一回合至使用本卡时间内的所有伤害 造成等额伤害分配至敌方所有玩家"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general
scoreboard players operation @s damage_jilu += @s lairichanghuan
scoreboard players set @s changhuan 1
scoreboard players add @s changhuan_times 1

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_lairichanghuan kardCount
