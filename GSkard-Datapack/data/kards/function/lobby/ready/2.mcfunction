scoreboard players set @s Ready 0
kill @e[type=minecraft:ender_pearl]

tag @s remove Ready
tag @s add Un_Ready
clear @s
execute store result score #system Ready_Num if entity @a[tag=Ready]
tellraw @a [{selector:"@s"},{translate: "lobby.ready.2.1",color:"red"},{translate: "tick.1",color:"gray"},{score:{name:"#system",objective:"Ready_Num"},color:"green"},{translate: "game.ingame.general.2",color:"gray"},{score:{name:"人数",objective:"p"},color:"gold"},{translate: "tick.4",color:"gray"}]
execute if score #system wait_start matches 1.. run title @a title [{translate: "lobby.ready.2.2",color:"red",bold:true}]
execute if score #system wait_start matches 1.. as @a at @s run playsound minecraft:entity.ravager.hurt master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 1.. run scoreboard players set #system wait_start -1
team join lobby @s
advancement revoke @s only kards:lobby/un_ready
advancement revoke @s only kards:lobby/ready