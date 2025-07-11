execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[无用]",color:"blue",hover_event:{action:"show_text",value:"没有作用"}}]


function kards:game/yongpaiku/xianjin/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
