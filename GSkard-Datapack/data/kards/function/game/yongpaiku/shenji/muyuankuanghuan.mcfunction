execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[墓园狂欢]",color:"white",hover_event:{action:"show_text",value:"此后任意方式获取的基本牌 军团牌 诅咒牌 陷阱牌都变为特殊的衍生卡"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
scoreboard players set @s muyuankuanghuan 1
item replace entity @s weapon.offhand with air
scoreboard players add @s kardCountmax 5
scoreboard players remove @s kardCount 0
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1