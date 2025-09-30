

execute if entity @s[team=red] at @e[tag=red_marker_7,limit=1] run summon creeper ~ 0 ~ {Team:blue,Fuse:15}
execute if entity @s[team=red] run scoreboard players set 红队 xianjin_jingxiahezi 0


execute if entity @s[team=blue] at @e[tag=blue_marker_7,limit=1] run summon creeper ~ 0 ~ {Team:red,Fuse:15}
execute if entity @s[team=blue] run scoreboard players set 蓝队 xianjin_jingxiahezi 0


tellraw @a [{selector: "@s"},{translate: "kards.function.game.yongpaiku.xianjing.chufa.hewei.1", fallback: "触发了",color: "gray"},{translate: "kards.function.game.yongpaiku.xianjing.chufa.jingxiahezi.1", fallback: "<惊吓盒子>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时在触发者场地生成1只略微加速爆炸的苦力怕"}}]
execute as @a at @s run playsound minecraft:travis player @s ~ ~ ~ 100 1
