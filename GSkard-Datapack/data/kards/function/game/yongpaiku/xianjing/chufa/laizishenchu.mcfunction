
execute if entity @s[team=red] run scoreboard players add @a[team=blue] HealBack 32
execute if entity @s[team=red] run scoreboard players set 红队 xianjin_laizishenchu 0

execute if entity @s[team=blue] run scoreboard players add @a[team=red] HealBack 32
execute if entity @s[team=blue] run scoreboard players set 蓝队 xianjin_laizishenchu 0

tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<来自深处>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时让使用该陷阱牌队伍所有玩家回复血量16♥"}}]
execute as @a at @s run playsound minecraft:travis master @s ~ ~ ~ 100 1
