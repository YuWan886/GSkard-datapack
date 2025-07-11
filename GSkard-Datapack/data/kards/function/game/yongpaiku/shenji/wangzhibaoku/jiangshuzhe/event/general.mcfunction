#雷暴
execute if score 红队_讲述者 jiangshuzhe_leibao matches 1 run weather thunder
execute if score 蓝队_讲述者 jiangshuzhe_leibao matches 1 run weather thunder
execute if score 红队_讲述者 jiangshuzhe_leibao matches 1 if predicate kards:random0.01 as @r[gamemode=adventure,team=blue] at @s run summon lightning_bolt ~ ~ ~
execute if score 蓝队_讲述者 jiangshuzhe_leibao matches 1 if predicate kards:random0.01 as @r[gamemode=adventure,team=red] at @s run summon lightning_bolt ~ ~ ~
execute if score 红队_讲述者 jiangshuzhe_leibao matches 0 run weather clear
execute if score 蓝队_讲述者 jiangshuzhe_leibao matches 0 run weather clear
#失重
execute if score 红队_讲述者 jiangshuzhe_shizhong matches 1 if predicate kards:random0.01 run effect give @r[gamemode=adventure,team=blue] levitation 3 3 true
execute if score 蓝队_讲述者 jiangshuzhe_shizhong matches 1 if predicate kards:random0.01 run effect give @r[gamemode=adventure,team=red] levitation 3 3 true
#河豚
execute if score 红队_讲述者 jiangshuzhe_hetun matches 1 if predicate kards:random0.005 as @r[gamemode=adventure,team=blue] at @s run summon minecraft:pufferfish ~ ~2 ~ {FromBucket:1b,PuffState:2,Team:red}
execute if score 蓝队_讲述者 jiangshuzhe_hetun matches 1 if predicate kards:random0.005 as @r[gamemode=adventure,team=red] at @s run summon minecraft:pufferfish ~ ~2 ~ {FromBucket:1b,PuffState:2,Team:blue}
#驳论
execute if score 红队_讲述者 jiangshuzhe_bolun matches 1 if predicate kards:random0.005 as @r[gamemode=adventure,team=blue] at @s run function kards:game/yongpaiku/fashu/shijiaoganrao/2
execute if score 蓝队_讲述者 jiangshuzhe_bolun matches 1 if predicate kards:random0.005 as @r[gamemode=adventure,team=red] at @s run function kards:game/yongpaiku/fashu/shijiaoganrao/2
#力量
execute if score 红队_讲述者 jiangshuzhe_liliang matches 1 run effect give @e[team=red] strength 1 0 true
execute if score 蓝队_讲述者 jiangshuzhe_liliang matches 1 run effect give @e[team=blue] strength 1 0 true
#速度
execute if score 红队_讲述者 jiangshuzhe_sudu matches 1 run effect give @e[team=red] speed 1 0 true
execute if score 蓝队_讲述者 jiangshuzhe_sudu matches 1 run effect give @e[team=blue] speed 1 0 true
#隐身
execute if score 红队_讲述者 jiangshuzhe_yinshen matches 1 run scoreboard players add 红队_讲述者 jiangshuzhe_yinshen_jishi 1
execute if score 红队_讲述者 jiangshuzhe_yinshen matches 1 if score 红队_讲述者 jiangshuzhe_yinshen_jishi matches 100 run effect give @e[team=red] invisibility 3 1 true
execute if score 红队_讲述者 jiangshuzhe_yinshen matches 1 if score 红队_讲述者 jiangshuzhe_yinshen_jishi matches 100 run scoreboard players set 红队_讲述者 jiangshuzhe_yinshen_jishi 0
execute if score 蓝队_讲述者 jiangshuzhe_yinshen matches 1 run scoreboard players add 蓝队_讲述者 jiangshuzhe_yinshen_jishi 1
execute if score 蓝队_讲述者 jiangshuzhe_yinshen matches 1 if score 蓝队_讲述者 jiangshuzhe_yinshen_jishi matches 100 run effect give @e[team=red] invisibility 3 1 true
execute if score 蓝队_讲述者 jiangshuzhe_yinshen matches 1 if score 蓝队_讲述者 jiangshuzhe_yinshen_jishi matches 100 run scoreboard players set 蓝队_讲述者 jiangshuzhe_yinshen_jishi 0
#抵御
execute if score 红队_讲述者 jiangshuzhe_diyu matches 1 run effect give @e[team=red] minecraft:resistance 1 0 true
execute if score 蓝队_讲述者 jiangshuzhe_diyu matches 1 run effect give @e[team=blue] minecraft:resistance 1 0 true
#畸形
execute if score 红队_讲述者 jiangshuzhe_jixing matches 1 as @e[team=blue,type=!player,tag=!tuteng] run attribute @s minecraft:scale modifier add 0-0-1 -0.3 add_value
execute if score 蓝队_讲述者 jiangshuzhe_jixing matches 1 as @e[team=red,type=!player,tag=!tuteng] run attribute @s minecraft:scale modifier add 0-0-1 -0.3 add_value
execute if score 红队_讲述者 jiangshuzhe_jixing matches 0 as @e[team=blue,type=!player,tag=!tuteng] run attribute @s minecraft:scale modifier remove 0-0-1
execute if score 蓝队_讲述者 jiangshuzhe_jixing matches 0 as @e[team=red,type=!player,tag=!tuteng] run attribute @s minecraft:scale modifier remove 0-0-1
#撕裂
execute if score 红队_讲述者 jiangshuzhe_silie matches 1 as @a[team=blue] if score @s jiangshuzhe_silie1 matches 1.. run scoreboard players set @s jiangshuzhe_silie2 10
execute if score 蓝队_讲述者 jiangshuzhe_silie matches 1 as @a[team=red] if score @s jiangshuzhe_silie1 matches 1.. run scoreboard players set @s jiangshuzhe_silie2 10
execute as @a if score @s jiangshuzhe_silie1 matches 1.. run scoreboard players set @s jiangshuzhe_silie1 0
execute as @a if score @s jiangshuzhe_silie2 matches 1 run damage @s 1 kards:silie
execute as @a if score @s jiangshuzhe_silie2 matches 1 run scoreboard players set @s jiangshuzhe_silie1 0
execute as @a if score @s jiangshuzhe_silie2 matches 1.. run scoreboard players remove @s jiangshuzhe_silie2 1
