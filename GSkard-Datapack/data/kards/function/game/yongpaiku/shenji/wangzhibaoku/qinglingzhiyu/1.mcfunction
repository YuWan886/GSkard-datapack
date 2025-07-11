tag @s add hurt_for_qinglingzhiyu
execute on attacker unless score @s qinglingzhiyu_Time matches 1.. run tag @p[tag=hurt_for_qinglingzhiyu] add XuanZhuan
execute on attacker unless score @s qinglingzhiyu_Time matches 1.. run scoreboard players add @p[tag=hurt_for_qinglingzhiyu] XuanZhuan 35
execute on attacker unless score @s qinglingzhiyu_Time matches 1.. run scoreboard players set @s qinglingzhiyu_Time 200
tag @s remove hurt_for_qinglingzhiyu
advancement revoke @s only kards:shenqi/qinglingzhiyu/1