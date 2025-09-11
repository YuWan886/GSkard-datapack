function kards:game/yongpaiku/use_general/kard_general




function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_tutengjinji kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] store result score @s tutengjinji if entity @e[tag=tuteng,team=red]
execute if entity @s[team=blue] store result score @s tutengjinji if entity @e[tag=tuteng,team=blue]
execute if entity @s[team=red] run tellraw @a [{text:"目前",color:"gray"},{text:"红队",color:"red"},{text:"拥有图腾",color:"gray"},{score:{name:"@s",objective:"tutengjinji"}},{text:"只",color:"gray"}]
execute if entity @s[team=blue] run tellraw @a [{text:"目前",color:"gray"},{text:"蓝队",color:"blue"},{text:"拥有图腾",color:"gray"},{score:{name:"@s",objective:"tutengjinji"}},{text:"只",color:"gray"}]

function kards:game/yongpaiku/fashu/tutengjingji/2