scoreboard players add @s Talent_yongyuanzhongcheng_Temp 1

execute if predicate {condition:"random_chance",chance:0.3} run function kards:game/player/talent/enable/yongyuanzhongcheng/3

execute if score @s Talent_yongyuanzhongcheng_Temp matches ..-1 run function kards:game/player/talent/enable/yongyuanzhongcheng/2