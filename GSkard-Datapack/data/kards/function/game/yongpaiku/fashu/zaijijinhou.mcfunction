function kards:game/yongpaiku/use_general/kard_general

function kards:game/yongpaiku/xianjing/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_zaijijinhou kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] unless entity @e[tag=tuteng,team=blue] run tellraw @a [{translate: "kards.function.game.yongpaiku.fashu.zaijijinhou.1", fallback: "[蓝队]滚木",color:"blue"},{translate: "kards.function.game.yongpaiku.fashu.zaijijinhou.2", fallback: "被杀死了！",color:"gold"}]
execute if entity @s[team=blue] unless entity @e[tag=tuteng,team=red] run tellraw @a [{translate: "kards.function.game.yongpaiku.fashu.zaijijinhou.3", fallback: "[红队]滚木",color:"red"},{translate: "kards.function.game.yongpaiku.fashu.zaijijinhou.2", fallback: "被杀死了！",color:"gold"}]

execute if entity @s[team=red] run kill @e[tag=tuteng,limit=1,team=blue,sort=random]
execute if entity @s[team=blue] run kill @e[tag=tuteng,limit=1,team=red,sort=random]

