execute if entity @s[team=red] if score 红队 xianjin_youdi matches 1.. run return run scoreboard players remove 红队 xianjin_youdi 1
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches 1.. run return run scoreboard players remove 蓝队 xianjin_youdi 1

tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<诱敌>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时使该法术失效(对于第二张法术牌)"}}]
playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1
