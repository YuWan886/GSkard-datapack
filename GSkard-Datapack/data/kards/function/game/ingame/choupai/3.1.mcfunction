execute as @s store result score @s random3.1 run random value 1..100
execute as @s if score @s random3.1 matches 1..20 run function kards:game/paiku/zhuangbei/haiguilinjia
execute as @s if score @s random3.1 matches 21..40 run function kards:game/paiku/zhuangbei/posuijianren
execute as @s if score @s random3.1 matches 41..60 run function kards:game/paiku/zhuangbei/xieding
execute as @s if score @s random3.1 matches 61..80 run function kards:game/paiku/zhuangbei/bianxiehuosai
execute as @s if score @s random3.1 matches 81..100 run function kards:game/paiku/zhuangbei/xunjiezhiyu
scoreboard players set @s random3.1 0
