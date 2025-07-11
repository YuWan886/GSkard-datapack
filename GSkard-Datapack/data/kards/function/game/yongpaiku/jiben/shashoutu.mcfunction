execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[杀手兔]",color:"blue"}]


   execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon rabbit ~ 1 ~ {RabbitType:99,Team:red,Age:9999999}

   execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon rabbit ~ 1 ~ {RabbitType:99,Team:blue,Age:9999999}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shashoutu kardCount
