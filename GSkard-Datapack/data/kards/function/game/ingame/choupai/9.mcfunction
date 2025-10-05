$execute store result score @s random3.1 run random value 1..$(shipin)
execute if score @s random3.1 matches 1..20 run function kards:game/paiku/zhuangbei/haiguilinjia
execute if score @s random3.1 matches 21..40 run function kards:game/paiku/zhuangbei/posuijianren
execute if score @s random3.1 matches 41..60 run function kards:game/paiku/zhuangbei/xieding
execute if score @s random3.1 matches 61..80 run function kards:game/paiku/zhuangbei/bianxiehuosai
execute if score @s random3.1 matches 81..100 run function kards:game/paiku/zhuangbei/xunjiezhiyu
execute if score @s random3.1 matches 101..105 run function kards:game/paiku/zhuangbei/linghunshougeqi

execute if score @s random3.1 matches 106.. run function kards-dlc:kard/type/shipin/ganeral

scoreboard players set @s random3.1 0
