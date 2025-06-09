

execute if entity @s[team=red] if score 红队 xianjin_shusifangshou matches 1 run effect give @a[team=blue] absorption 20 9 true
execute if entity @s[team=blue] if score 蓝队 xianjin_shusifangshou matches 1 run effect give @a[team=red] absorption 20 9 true

execute if entity @s[team=red] if score 红队 xianjin_shusifangshou matches 1 run scoreboard players set 红队 xianjin_shusifangshou 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shusifangshou matches 1 run scoreboard players set 蓝队 xianjin_shusifangshou 0

tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<殊死防守>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时给予使用该陷阱的队伍20s额外生命20♥"}}]
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1

