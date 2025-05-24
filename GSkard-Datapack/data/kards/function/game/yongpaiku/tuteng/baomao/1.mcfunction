tellraw @a [{translate: "game.yongpaiku.tuteng.baomao.1.1",color:"blue"},{translate: "game.yongpaiku.tuteng.baomao.1.2",color:"gray"},{selector:"@s",color:"red"},{translate: "game.yongpaiku.tuteng.baomao.1.3",color:"gray"}]
execute store result score @s tuteng_Health run data get entity @s Health
execute if score @s tuteng_Health matches ..8 run tellraw @a [{selector:"@s",color:"red"},{translate: "game.yongpaiku.tuteng.baomao.1.4",color:"gray"}]
scoreboard players set @s tuteng_Health 0
damage @s 8 kards:baomao