execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[贪欲魔盒]",color:"white",hover_event:{action:"show_text",value:"此后任意方式获取的 诅咒牌 法术牌 装备牌都变为特殊的衍生卡"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general
scoreboard players set @s tanyumohe 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_tanyumohe kardCount
