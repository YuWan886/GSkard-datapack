scoreboard players set @s Ready 1
scoreboard players add @s Used_end_pearl 1
kill @e[type=minecraft:ender_pearl]
tag @s add Ready
tag @s remove Un_Ready
tag @s remove Running
execute store result score #system Ready_Num if entity @a[tag=Ready]
tellraw @a [{selector:"@s"},{text: " 准备就绪 ",color:"green"},{text: "[",color:"gray"},{score:{name:"#system",objective:"Ready_Num"},color:"green"},{text: "/",color:"gray"},{score:{name:"人数",objective:"p"},color:"gold"},{text: "]",color:"gray"}]
