execute as @s[team=red] store result score @s Talent_yongyuanzhongcheng if entity @e[team=red]
execute as @s[team=blue] store result score @s Talent_yongyuanzhongcheng if entity @e[team=blue]

scoreboard players operation @s Talent_yongyuanzhongcheng_Temp = @s Talent_yongyuanzhongcheng
scoreboard players operation @s Talent_yongyuanzhongcheng_Temp -= @s Talent_yongyuanzhongcheng_

execute if score @s Talent_yongyuanzhongcheng_Temp matches ..-1 run function kards:game/player/talent/enable/yongyuanzhongcheng/2

scoreboard players operation @s Talent_yongyuanzhongcheng_ = @s Talent_yongyuanzhongcheng
