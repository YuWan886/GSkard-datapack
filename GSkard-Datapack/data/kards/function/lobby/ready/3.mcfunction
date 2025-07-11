tellraw @a [{selector:"@s"},{text: "使用了[准备检查],当前未准备的玩家有 ",color:"gray"},{selector:"@a[tag=Un_Ready]"}]
scoreboard players set @s Check_UnReady 0
