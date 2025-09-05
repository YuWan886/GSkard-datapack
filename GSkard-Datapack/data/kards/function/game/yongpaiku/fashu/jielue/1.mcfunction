function kards:game/yongpaiku/use_general/kard_general
scoreboard players operation @s kardCount -= #kard_jielue kardCount
function kards:game/yongpaiku/xianjing/jiance/fashujiance
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] unless entity @e[tag=tuteng,team=blue] run tellraw @a [{text: "蓝队貌似没有任何图腾...",color:"gray"}]
execute if entity @s[team=red] as @e[tag=tuteng,limit=1,team=blue,sort=random] run function kards:game/yongpaiku/fashu/jielue/2

execute if entity @s[team=blue] if entity @s[team=blue] if score 红队 xianjin_shufashixiao matches 0 unless entity @e[tag=tuteng,team=red] run tellraw @a [{text: "红队貌似没有任何图腾...",color:"gray"}]
execute if entity @s[team=blue] as @e[tag=tuteng,limit=1,team=red,sort=random] run function kards:game/yongpaiku/fashu/jielue/3

