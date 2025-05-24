scoreboard players set @s Ready 1
scoreboard players add @s Used_end_pearl 1
kill @e[type=minecraft:ender_pearl]
tag @s add Ready
tag @s remove Un_Ready
execute store result score #system Ready_Num if entity @a[tag=Ready]
tellraw @a [{selector:"@s"},{translate: "lobby.ready.1.1",color:"green"},{translate: "tick.1",color:"gray"},{score:{name:"#system",objective:"Ready_Num"},color:"green"},{translate: "game.ingame.general.2",color:"gray"},{score:{name:"人数",objective:"p"},color:"gold"},{translate: "tick.4",color:"gray"}]
