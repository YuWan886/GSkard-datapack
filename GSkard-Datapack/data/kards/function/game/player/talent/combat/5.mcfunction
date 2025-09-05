scoreboard players remove @s Talent_Count 5
tellraw @s [{text:"[天赋]",color:"green"},{text:"您消耗了",color:"gray"},{text:"5点构想",color:"gold"},{text:"升级了",color:"gray"},{text:"战斗",color:"gold"}]
attribute @s attack_damage base set 6
attribute @s armor_toughness base set 2
