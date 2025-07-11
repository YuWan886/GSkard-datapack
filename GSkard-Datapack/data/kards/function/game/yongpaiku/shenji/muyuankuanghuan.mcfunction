execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[墓园狂欢]",color:"white",hover_event:{action:"show_text",value:"此后任意方式获取的基本牌 军团牌 诅咒牌 陷阱牌都变为特殊的衍生卡"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general
scoreboard players set @s muyuankuanghuan 1
item replace entity @s weapon.offhand with air
scoreboard players add @s kardCountmax 5
scoreboard players operation @s kardCount -= #kard_muyuankuanghuan kardCount
