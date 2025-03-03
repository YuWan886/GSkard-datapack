execute as @s store result score @s random4 run random value 1..12
execute as @s if score @s random4 matches 1 run function kards:game/paiku/tuteng/yang
execute as @s if score @s random4 matches 2 run function kards:game/paiku/tuteng/niu
execute as @s if score @s random4 matches 3 run function kards:game/paiku/tuteng/zhu
execute as @s if score @s random4 matches 4 run function kards:game/paiku/tuteng/tu
execute as @s if score @s random4 matches 5 run function kards:game/paiku/tuteng/baomao
execute as @s if score @s random4 matches 6 run function kards:game/paiku/tuteng/ji
execute as @s if score @s random4 matches 7 run function kards:game/paiku/tuteng/cunmin
execute as @s if score @s random4 matches 8 run function kards:game/paiku/tuteng/tiekuilei
execute as @s if score @s random4 matches 9 run function kards:game/paiku/tuteng/moguniu
execute as @s if score @s random4 matches 10 run function kards:game/paiku/tuteng/liulangshangren
execute as @s if score @s random4 matches 11 run function kards:game/paiku/tuteng/haigui
execute as @s if score @s random4 matches 12 run function kards:game/paiku/tuteng/zhencebei
scoreboard players set @s random4 0
scoreboard players remove @s tutengcishu 1