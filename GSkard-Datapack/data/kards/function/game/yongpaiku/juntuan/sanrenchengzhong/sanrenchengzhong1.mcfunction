# 每10秒生成小史莱姆
execute as @e[tag=large_slime] at @s run summon slime ~ ~ ~ {Size:0,Tags:["small_slime"]}
schedule function kards:game/yongpaiku/juntuan/sanrenchengzhong/sanrenchengzhong2 5s
