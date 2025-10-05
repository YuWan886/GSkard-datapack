


execute if entity @s[team=red] run effect give @a[team=blue] absorption 20 9 false
execute if entity @s[team=blue] run effect give @a[team=red] absorption 20 9 false

execute if entity @s[team=red] run scoreboard players set 红队 xianjin_shusifangshou 0
execute if entity @s[team=blue] run scoreboard players set 蓝队 xianjin_shusifangshou 0

tellraw @a [{selector: "@s"},{translate: "kards.function.game.yongpaiku.xianjing.chufa.hewei.1", fallback: "触发了",color: "gray"},{translate: "kards.function.game.yongpaiku.xianjing.chufa.shusifangshou.1", fallback: "<殊死防守>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时给予使用该陷阱的队伍20s额外生命20♥"}}]
execute as @a at @s run playsound minecraft:wilhelm_scream player @s ~ ~ ~ 100 1
