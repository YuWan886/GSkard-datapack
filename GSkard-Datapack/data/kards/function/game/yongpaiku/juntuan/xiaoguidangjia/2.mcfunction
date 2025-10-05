summon text_display ~ ~ ~ {Tags:["xiaoguidangjia","Mob_Start"],text:{translate: "kards.function.game.yongpaiku.juntuan.xiaoguidangjia.2.1", fallback: "🔥",color:"red",bold:false},background:25,alignment:"center",billboard:"vertical"}
execute if entity @s[team=red] run team join red @n[tag=xiaoguidangjia,tag=Mob_Start,type=text_display]
execute if entity @s[team=blue] run team join blue @n[tag=xiaoguidangjia,tag=Mob_Start,type=text_display]
execute as @e[tag=Mob_Start,type=text_display] run data modify entity @s transformation.translation set value [0,0.25,0]
tag @n[tag=xiaoguidangjia,tag=Mob_Start,type=text_display] remove Mob_Start
data modify entity @n[tag=xiaoguidangjia,type=text_display] transformation.scale set value [2f,1.75f,2f]
ride @n[tag=xiaoguidangjia,type=text_display] mount @s