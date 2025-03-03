execute as @s store result score @s random1 run random value 1..24
execute as @s if score @s random1 matches 1 run function kards:game/paiku/jiben/jiangshi
execute as @s if score @s random1 matches 2 run function kards:game/paiku/jiben/kulou
execute as @s if score @s random1 matches 3 run function kards:game/paiku/jiben/moyingman
execute as @s if score @s random1 matches 4 run function kards:game/paiku/jiben/juduzhizhu
execute as @s if score @s random1 matches 5 run function kards:game/paiku/jiben/zhizhu
execute as @s if score @s random1 matches 6 run function kards:game/paiku/jiben/lieyanren
execute as @s if score @s random1 matches 7 run function kards:game/paiku/jiben/nvwu
execute as @s if score @s random1 matches 8 run function kards:game/paiku/jiben/diaolingkulou
execute as @s if score @s random1 matches 9 run function kards:game/paiku/jiben/youzhushou
execute as @s if score @s random1 matches 10 run function kards:game/paiku/jiben/kulipa
execute as @s if score @s random1 matches 11 run function kards:game/paiku/jiben/shashoutu
execute as @s if score @s random1 matches 12 run function kards:game/paiku/jiben/manbing
execute as @s if score @s random1 matches 13 run function kards:game/paiku/jiben/mifeng
execute as @s if score @s random1 matches 14 run function kards:game/paiku/jiben/naogui
execute as @s if score @s random1 matches 15 run function kards:game/paiku/jiben/liulangzhe
execute as @s if score @s random1 matches 16 run function kards:game/paiku/jiben/xuanfengren
execute as @s if score @s random1 matches 17 run function kards:game/paiku/jiben/moyingren
execute as @s if score @s random1 matches 18 run function kards:game/paiku/jiben/zhaohai
execute as @s if score @s random1 matches 19 run function kards:game/paiku/jiben/weidaoshi
execute as @s if score @s random1 matches 20 run function kards:game/paiku/jiben/wurenji
execute as @s if score @s random1 matches 21 run function kards:game/paiku/jiben/jijingshanyang
execute as @s if score @s random1 matches 22 run function kards:game/paiku/jiben/nishi
execute as @s if score @s random1 matches 23 run function kards:game/paiku/jiben/ehun
execute as @s if score @s random1 matches 24 run function kards:game/paiku/jiben/xiaohuanyi
scoreboard players set @s random1 0
scoreboard players remove @s jibencishu 1