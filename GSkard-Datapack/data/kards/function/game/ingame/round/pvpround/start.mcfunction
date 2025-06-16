fill -188 -9 -137 -188 0 -191 minecraft:air replace barrier
fill -233 -9 -191 -233 0 -137 minecraft:air replace barrier
scoreboard players set @a kardCount 0
scoreboard players set @a CanuseKard 0
tellraw @a {text: "冲刺！",color:"red",bold:true}
stopsound @a
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 1
bossbar set pvptime visible false
kill @e[type=!player,type=!marker,type=!item,type=!#kards:display]
scoreboard players operation #system worldborder = time worldborder
execute if score #system worldborder matches 6000 run tellraw @a {text: "边界将在5min后收缩",color:"gray",bold:true}

bossbar set minecraft:worldborder visible true
bossbar set minecraft:worldborder players @a
function kards:game/ingame/round/pvpround/worldborder
schedule clear kards:game/ingame/round/roundtime