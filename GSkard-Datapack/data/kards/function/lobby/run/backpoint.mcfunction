gamemode spectator @s
gamemode adventure @s
tellraw @s [{translate: "lobby.run.backpoint.1",color:"green"},{translate: "lobby.run.backpoint.2",color:"red"}]
tp @s -83 -46 -82
playsound minecraft:entity.player.teleport player @s ~ ~ ~ 100 1
