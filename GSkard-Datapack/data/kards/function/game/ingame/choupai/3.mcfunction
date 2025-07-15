execute store result score @s random3 run random value 1..390
execute if score @s random3 matches 1..25 run function kards:game/paiku/zhuangbei/jinjian
execute if score @s random3 matches 26..45 run function kards:game/paiku/zhuangbei/tiejian
execute if score @s random3 matches 46..60 run function kards:game/paiku/zhuangbei/zuanshijian
execute if score @s random3 matches 61..65 run function kards:game/paiku/zhuangbei/xiajiehejinjian
execute if score @s random3 matches 66..75 run function kards:game/paiku/zhuangbei/dunpai
execute if score @s random3 matches 76..115 run function kards:game/paiku/zhuangbei/jinshengji
execute if score @s random3 matches 116..140 run function kards:game/paiku/zhuangbei/tieshengji
execute if score @s random3 matches 141..160 run function kards:game/paiku/zhuangbei/zuanshishengji
execute if score @s random3 matches 161..170 run function kards:game/paiku/zhuangbei/xiajiehejinshengji
execute if score @s random3 matches 171..185 run function kards:game/paiku/zhuangbei/tiefu
execute if score @s random3 matches 186..195 run function kards:game/paiku/zhuangbei/zuanshifu
execute if score @s random3 matches 196..205 run function kards:game/paiku/zhuangbei/busituteng
execute if score @s random3 matches 206..225 run function kards:game/paiku/zhuangbei/weihu
execute if score @s random3 matches 226..250 run function kards:game/paiku/zhuangbei/longxi
execute if score @s random3 matches 350..370 run function kards:game/paiku/zhuangbei/zhongchui
execute if score @s random3 matches 371..375 run function kards:game/paiku/zhuangbei/quanxidunpai
execute if score @s random3 matches 376..385 run function kards:game/paiku/zhuangbei/jianduandunpai
execute if score @s random3 matches 386..390 run function kards:game/paiku/zhuangbei/jingjidunpai

execute if score @s random3 matches 251..350 run function kards:game/ingame/choupai/9
scoreboard players set @s random3 0
scoreboard players remove @s zhuangbeicishu 1