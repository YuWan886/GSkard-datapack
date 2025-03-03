tag @s add TouXiang
scoreboard players set @s touxiang -1
execute store result score 蓝队 touxiang if entity @a[team=blue,tag=TouXiang]
execute if score 蓝队 touxiang matches 1 run tellraw @a [{selector:"@s"},{text:"发起了投降",color:"gold"},{text:" ",color:"green"},{score:{objective:"touxiang",name:"蓝队"},color:"green"},{text:"/",color:"green"},{score:{objective:"b_p",name:"人数"},color:"green"}]
execute if score 蓝队 touxiang matches 2.. run tellraw @a [{selector:"@s"},{text:"参与了投降",color:"gold"},{text:" ",color:"green"},{score:{objective:"touxiang",name:"蓝队"},color:"green"},{text:"/",color:"green"},{score:{objective:"b_p",name:"人数"},color:"green"}]