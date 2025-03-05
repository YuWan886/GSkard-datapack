# 热血吸收

scoreboard players add @s yanyangdajian_jisha 1
execute as @s[scores={yanyangdajian_jisha=3..}] run effect give @s absorption 120 0 true
execute as @s[scores={yanyangdajian_jisha=3..}] run scoreboard players set @s yanyangdajian_jisha 0

advancement revoke @s only kards:shenqi/yanyangdajian