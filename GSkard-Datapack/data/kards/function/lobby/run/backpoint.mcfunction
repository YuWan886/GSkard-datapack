gamemode spectator @s
gamemode adventure @s
tellraw @s [{text: "[跑酷]",color:"green"},{text: "哎呀!不小心碰到岩浆了",color:"red"}]
tp @s -83 -46 -82
playsound minecraft:entity.player.teleport player @s ~ ~ ~ 100 1
