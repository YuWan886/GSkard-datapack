execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[神之一手]",color:"white",hover_event:{action:"show_text",value:"偷走敌方所有玩家1张牌"}}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shenzhiyishou kardCount

function kards:game/yongpaiku/xianjin/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general

tag @s add User
tag @a[tag=shenzhiyishou_end] remove shenzhiyishou_end
tag @a[tag=shenzhiyishou] remove shenzhiyishou
execute if entity @s[team=red] at @s as @r[team=blue,gamemode=adventure] run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if entity @s[team=blue] at @s as @r[team=red,gamemode=adventure] run function kards:game/yongpaiku/shenji/shenzhiyishou/2
tag @s remove User

