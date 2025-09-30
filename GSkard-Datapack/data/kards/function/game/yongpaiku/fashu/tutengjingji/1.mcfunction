function kards:game/yongpaiku/use_general/kard_general




function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_tutengjinji kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] store result score @s tutengjinji if entity @e[tag=tuteng,team=red]
execute if entity @s[team=blue] store result score @s tutengjinji if entity @e[tag=tuteng,team=blue]
execute if entity @s[team=red] run tellraw @a [{translate: "kards.function.game.yongpaiku.fashu.tutengjingji.1.1", fallback: "目前",color:"gray"},{translate: "kards.function.game.end.win.red_win.1", fallback: "红队",color:"red"},{translate: "kards.function.game.yongpaiku.fashu.tutengjingji.1.2", fallback: "拥有图腾",color:"gray"},{score:{name:"@s",objective:"tutengjinji"}},{translate: "kards.function.game.yongpaiku.fashu.tutengjingji.1.3", fallback: "只",color:"gray"}]
execute if entity @s[team=blue] run tellraw @a [{translate: "kards.function.game.yongpaiku.fashu.tutengjingji.1.1", fallback: "目前",color:"gray"},{translate: "kards.function.game.end.win.blue_win.2", fallback: "蓝队",color:"blue"},{translate: "kards.function.game.yongpaiku.fashu.tutengjingji.1.2", fallback: "拥有图腾",color:"gray"},{score:{name:"@s",objective:"tutengjinji"}},{translate: "kards.function.game.yongpaiku.fashu.tutengjingji.1.3", fallback: "只",color:"gray"}]

function kards:game/yongpaiku/fashu/tutengjingji/2