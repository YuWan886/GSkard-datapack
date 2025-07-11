execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[地狱]",color:"dark_purple",hover_event:{action:"show_text",value:"在地方场地周围放置一圈岩浆 怪物获得火焰抗性效果 持续至回合结束"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance


scoreboard players operation @s kardCount -= #kard_diyu kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] run scoreboard players set 蓝队 diyu 1
execute if entity @s[team=blue] run scoreboard players set 红队 diyu 1

function kards:game/yongpaiku/fashu/diyu/2
function kards:game/yongpaiku/fashu/diyu/replace with storage changdidaxiao
