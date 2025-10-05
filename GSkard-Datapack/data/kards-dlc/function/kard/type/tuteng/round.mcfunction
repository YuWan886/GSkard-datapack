# 模板：图腾
    execute if entity @e[team=blue,tag=tuteng,tag=tuteng.template,type=sheep] run scoreboard players add @a[team=blue] HealBack 8
    execute if entity @e[team=blue,tag=tuteng,tag=tuteng.template,type=sheep] run effect give @e[team=blue,tag=tuteng] minecraft:regeneration 3 1

    execute if entity @e[team=red,tag=tuteng,tag=tuteng.template,type=sheep] run scoreboard players add @a[team=red] HealBack 8
    execute if entity @e[team=red,tag=tuteng,tag=tuteng.template,type=sheep] run effect give @e[team=red,tag=tuteng] minecraft:regeneration 3 1