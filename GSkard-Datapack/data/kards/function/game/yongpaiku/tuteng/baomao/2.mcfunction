tellraw @a [{text:"[红队]豹猫",color:"red"},{text:"咬了",color:"gray"},{selector:"@s",color:"blue"},{text:"一口 造成4♥伤害",color:"gray"}]
execute store result score @s tuteng_Health run data get entity @s Health
execute if score @s tuteng_Health matches ..8 run tellraw @a [{selector:"@s",color:"blue"},{text:"被咬死了",color:"gray"}]
scoreboard players set @s tuteng_Health 0
damage @s 8 kards:baomao