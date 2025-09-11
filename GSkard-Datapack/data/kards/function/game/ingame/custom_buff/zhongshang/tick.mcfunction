scoreboard players remove @a[scores={ZhongShang_Tick=1..}] ZhongShang_Tick 1
execute as @a[scores={ZhongShang_Tick=0..}] run function kards:game/ingame/custom_buff/zhongshang/bossbar/1

scoreboard players set @a[scores={ZhongShang_Tick=1..}] HealBack 0
scoreboard players reset @a[scores={ZhongShang_Tick=0}] ZhongShang_Tick
