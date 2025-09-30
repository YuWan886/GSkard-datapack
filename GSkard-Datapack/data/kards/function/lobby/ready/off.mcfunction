advancement revoke @s only kards:lobby/ready/off
stopsound @s * minecraft:block.beacon.activate

tag @s add Un_Ready
tag @s remove Ready

tag @s remove Running
execute store result score #system Ready_Num if entity @a[tag=Ready]

tellraw @a [{selector:"@s"},{translate: "kards.function.lobby.ready.off.1", fallback: " 取消准备 ",color:"red"},{translate: "kards.function.tick.2", fallback: "[",color:"gray"},{score:{name:"#system",objective:"Ready_Num"},color:"green"},{translate: "kards.function.game.ingame.general.2", fallback: "/",color:"gray"},{score:{name:"人数",objective:"p"},color:"gold"},{translate: "kards.function.tick.5", fallback: "]",color:"gray"}]

team join lobby @s

execute if score #system wait_start matches 1.. run title @a title [{translate: "kards.function.lobby.ready.off.2", fallback: "开始游戏被终止",color:"red",bold:true}]
execute if score #system wait_start matches 1.. as @a at @s run playsound minecraft:entity.ravager.hurt master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 1.. run scoreboard players reset #system wait_start