



function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_jinziqifeng kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

scoreboard players add @s jinziqifeng 1
scoreboard players set @s[scores={jinziqifeng=7..}] jinziqifeng 6
tellraw @s [{text: "当前",color:"gray"},{text: "[禁字决]",color:"dark_purple"},{text: "抽取概率为",color:"gray"},{score:{name:"@s",objective:"jinziqifeng"},color:"gold"},{text: "0",color:"gold"},{text: "%",color:"gold"}]

