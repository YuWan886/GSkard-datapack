tellraw @a [{text: "《灾章·骨疽章》",color: "dark_red",bold:true}]
tellraw @a [{text: "\"伤而不愈 如附骨之疽\"",color: "gray"}]
execute as @s[team=red] run tellraw @a [{text:"蓝队",color:blue},{text: "玩家获得持续120s的重伤",color: "red"}]
execute as @s[team=blue] run tellraw @a [{text:"红队",color:red},{text: "玩家获得持续120s的重伤",color: "red"}]

execute as @s[team=red] run scoreboard players set @a[team=blue,gamemode=adventure] ZhongShang_Tick 2400
execute as @s[team=blue] run scoreboard players set @a[team=red,gamemode=adventure] ZhongShang_Tick 2400