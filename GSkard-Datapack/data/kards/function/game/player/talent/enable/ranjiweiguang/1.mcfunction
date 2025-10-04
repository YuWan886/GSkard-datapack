kill @s
tellraw @a [{selector:"@s"},{text:"化作了光!",color:gold}]
tellraw @a [{selector:"@s"},{text:"的队友抽2张神迹牌!",color:gold}]

execute as @s[team=red] run scoreboard players add @a[gamemode=adventure,team=red] shenjicishu 2
execute as @s[team=blue] run scoreboard players add @a[gamemode=adventure,team=blue] shenjicishu 2