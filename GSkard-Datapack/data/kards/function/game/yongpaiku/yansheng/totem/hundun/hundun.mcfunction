tag @s add hunluantuteng
execute store result score @s random_hunluantuteng run random value 1..100
execute if score @s random_hunluantuteng matches 1..20 run function kards:game/yongpaiku/yansheng/totem/hundun/1
execute if score @s random_hunluantuteng matches 21..40 run function kards:game/yongpaiku/yansheng/totem/hundun/2
execute if score @s random_hunluantuteng matches 41..60 run function kards:game/yongpaiku/yansheng/totem/hundun/3
execute if score @s random_hunluantuteng matches 61..80 run function kards:game/yongpaiku/yansheng/totem/hundun/4
execute if score @s random_hunluantuteng matches 81..100 run function kards:game/yongpaiku/yansheng/totem/hundun/5
scoreboard players set @s random_hunluantuteng 0
advancement revoke @s only kards:totem/hundun