execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[禁法结界]",color:"white",hover_event:{action:"show_text",value:"敌方随机两名玩家-4Kmax"}}]
function kards:game/yongpaiku/xianjing/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general

execute if entity @s[team=red] run scoreboard players set @a[team=blue,gamemode=adventure] JinFaJieJie 1

execute if entity @s[team=blue] run scoreboard players remove @a[team=red,gamemode=adventure] JinFaJieJie 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jinfajiejie kardCount
