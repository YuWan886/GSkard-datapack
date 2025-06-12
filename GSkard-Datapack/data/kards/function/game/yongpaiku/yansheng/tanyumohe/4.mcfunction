#红队
data merge entity @s {Tags:["panduolamohe"],CustomName:[{text: "§k1",color:"gray"},{text: "潘多拉魔盒",color:"blue"},{text: "§k1",color:"gray"}]}
team join blue
scoreboard players set @s pingbi 0
execute store result score @s random_panduolamohe run random value 1..15
execute if score @s random_panduolamohe matches 1 run function kards:game/yongpaiku/juntuan/baozhajuntuan
execute if score @s random_panduolamohe matches 2 run function kards:game/yongpaiku/juntuan/morilailing
execute if score @s random_panduolamohe matches 3 run function kards:game/yongpaiku/juntuan/shixuelangqun
execute if score @s random_panduolamohe matches 4 run function kards:game/yongpaiku/juntuan/xiaoguidangjia
execute if score @s random_panduolamohe matches 5 run function kards:game/yongpaiku/juntuan/wojilangchao
execute if score @s random_panduolamohe matches 6 run function kards:game/yongpaiku/juntuan/shenghaikongju
execute if score @s random_panduolamohe matches 7 run function kards:game/yongpaiku/juntuan/wufalianhui
execute if score @s random_panduolamohe matches 8 run function kards:game/yongpaiku/zuzhou/chengmo
execute if score @s random_panduolamohe matches 9 run function kards:game/yongpaiku/zuzhou/diandao
execute if score @s random_panduolamohe matches 10 run function kards:game/yongpaiku/zuzhou/duantui
execute if score @s random_panduolamohe matches 11 run function kards:game/yongpaiku/zuzhou/wuli
execute if score @s random_panduolamohe matches 12 run function kards:game/yongpaiku/zuzhou/zhangyan
execute if score @s random_panduolamohe matches 13 run function kards:game/yongpaiku/fashu/neiheyinbao
execute if score @s random_panduolamohe matches 14 run function kards:game/yongpaiku/fashu/guohechaiqiao/1
execute if score @s random_panduolamohe matches 15 run function kards:game/yongpaiku/fashu/zhouranyingbao
kill @s