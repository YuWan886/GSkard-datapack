tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<法术失效>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时使该法术失效"}}]
execute as @a at @s run playsound minecraft:bra player @s ~ ~ ~ 100 1

