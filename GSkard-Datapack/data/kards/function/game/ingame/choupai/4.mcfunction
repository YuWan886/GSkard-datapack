execute store result score @s random4 run random value 1..13
execute if score @s random4 matches 1 run function kards:game/paiku/tuteng/yang
execute if score @s random4 matches 2 run function kards:game/paiku/tuteng/niu
execute if score @s random4 matches 3 run function kards:game/paiku/tuteng/zhu
execute if score @s random4 matches 4 run function kards:game/paiku/tuteng/tu
execute if score @s random4 matches 5 run function kards:game/paiku/tuteng/baomao
execute if score @s random4 matches 6 run function kards:game/paiku/tuteng/ji
execute if score @s random4 matches 7 run function kards:game/paiku/tuteng/cunmin
execute if score @s random4 matches 8 run function kards:game/paiku/tuteng/tiekuilei
execute if score @s random4 matches 9 run function kards:game/paiku/tuteng/moguniu
execute if score @s random4 matches 10 run function kards:game/paiku/tuteng/liulangshangren
execute if score @s random4 matches 11 run function kards:game/paiku/tuteng/haigui
execute if score @s random4 matches 12 run function kards:game/paiku/tuteng/zhencebei
execute if score @s random4 matches 13 run function kards:game/paiku/tuteng/peiyangshi
scoreboard players set @s random4 0
scoreboard players remove @s tutengcishu 1
