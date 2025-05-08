title @a title [{translate: "game.ingame.round.pvpround.waitstart.1",color:"red",bold:true},{translate: "game.ingame.round.pvpround.waitstart.2",color:"gold",bold:true}]
scoreboard players set @a cishu 0
scoreboard players set @a tiaoguo 0
scoreboard players set @a kardCountmax 100
scoreboard players set @a kardCount 100
scoreboard players set @a canuse 1
scoreboard players set 回合数 round 0
scoreboard players set system status 2
team modify red friendlyFire false
team modify blue friendlyFire false
effect clear @a
effect give @a minecraft:resistance 30 9 true
clear @a #kards:feipvp
clear @a minecraft:music_disc_strad[custom_data={kards:'飞雷神'}]
scoreboard players reset @a feileishen
bossbar set roundtime visible false
tellraw @a [{translate: "game.ingame.round.pvpround.waitstart.3",color:"gold"},{translate: "game.ingame.round.pvpround.waitstart.4",color:"red"}]
tellraw @a {translate: "game.ingame.round.pvpround.waitstart.5",color:"gray",bold:true}
tp @a[team=red] -179 -9 -164
tp @a[team=blue] -242 -9 -164
kill @e[type=!player,type=!armor_stand,type=!#kards:display]
gamemode spectator @a[tag=Spectator]
bossbar set pvptime players @a
bossbar set pvptime visible true
scoreboard players set time pvptime 600
fill -188 -9 -137 -188 0 -191 minecraft:barrier replace air
fill -233 -9 -191 -233 0 -137 minecraft:barrier replace air
worldborder set 80
function kards:game/ingame/round/pvpround/countdown

