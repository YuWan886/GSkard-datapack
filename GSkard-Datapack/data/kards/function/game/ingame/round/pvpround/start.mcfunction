fill -188 -9 -137 -188 0 -191 minecraft:air replace barrier
fill -233 -9 -191 -233 0 -137 minecraft:air replace barrier
scoreboard players set @a kardCount 0
scoreboard players set @a CanuseKard 0
tellraw @a {translate: "game.ingame.round.pvpround.start.1",color:"red",bold:true}
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 10 1
bossbar set pvptime visible false
kill @e[type=!player,type=!armor_stand,type=!item,type=!#kards:display]
scoreboard players operation system worldborder = time worldborder
execute if score system worldborder matches 6000 run tellraw @a {translate: "game.ingame.round.pvpround.start.2",color:"gray",bold:true}

bossbar set minecraft:worldborder visible true
function kards:game/ingame/round/pvpround/worldborder
schedule clear kards:game/ingame/round/roundtime