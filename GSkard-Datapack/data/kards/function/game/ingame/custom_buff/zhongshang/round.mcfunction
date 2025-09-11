scoreboard players set @a[scores={ZhongShang_Round=1..}] HealBack 0
execute as @a[scores={ZhongShang_Round=0..}] run function kards:game/ingame/custom_buff/zhongshang/bossbar/1

scoreboard players reset @a[scores={ZhongShang_Round=0}] ZhongShang_Round
