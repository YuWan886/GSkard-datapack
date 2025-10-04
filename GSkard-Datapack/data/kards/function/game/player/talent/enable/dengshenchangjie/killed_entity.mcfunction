advancement revoke @s only kards:talent/dengshenchangjie
execute unless entity @s[tag=Talent_dengshenchangjie] run return fail
scoreboard players add @s Talent_dengshenchangjie 1
tellraw @s [{text:"登神长阶",color:"gold"},{text:" 伤害加成",color:green},{score:{name:"@s",objective:"Talent_dengshenchangjie"},color:gold},{text:"%",color:green}]
execute store result storage kards:talent dengshenchangjie double 0.01 run scoreboard players get @s Talent_dengshenchangjie
function kards:game/player/talent/enable/dengshenchangjie/1 with storage kards:talent