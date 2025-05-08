execute store result score @s random7 run random value 1..10
execute if score @s random7 matches 1 run function kards:game/paiku/zuzhou/duantui
execute if score @s random7 matches 2 run function kards:game/paiku/zuzhou/zhangyan
execute if score @s random7 matches 3 run function kards:game/paiku/zuzhou/wuli
execute if score @s random7 matches 4 run function kards:game/paiku/zuzhou/jieduan
execute if score @s random7 matches 5 run function kards:game/paiku/zuzhou/hunluan
execute if score @s random7 matches 6 run function kards:game/paiku/zuzhou/chengmo
execute if score @s random7 matches 7 run function kards:game/paiku/zuzhou/wuxing
execute if score @s random7 matches 8 run function kards:game/paiku/zuzhou/kujie
execute if score @s random7 matches 9 run function kards:game/paiku/zuzhou/diandao
execute if score @s random7 matches 10 run function kards:game/paiku/zuzhou/pingbi
scoreboard players set @s random7 0
scoreboard players remove @s zuzhoucishu 1