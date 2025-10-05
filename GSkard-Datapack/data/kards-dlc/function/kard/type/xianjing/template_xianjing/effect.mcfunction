    execute if entity @s[team=red] run scoreboard players set 红队 xianjin_shufashixiao 0
    execute if entity @s[team=blue] run scoreboard players set 蓝队 xianjin_shufashixiao 0
    tellraw @a [{selector: "@s"},{translate: "kards.function.game.yongpaiku.xianjing.chufa.hewei.1", fallback: "触发了",color: "gray"},{translate: "kards.function.game.yongpaiku.xianjing.chufa.shufashixiao.1", fallback: "<法术失效>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时使该法术失效"}}]
item replace entity @s weapon.offhand with air
execute as @a at @s run playsound minecraft:bra player @s ~ ~ ~ 100 1