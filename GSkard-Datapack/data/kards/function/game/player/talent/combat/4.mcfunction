scoreboard players remove @s Talent_Count 4
tellraw @s [{text:"[天赋]",color:"green"},{text:"您消耗了",color:"gray"},{text:"4点构想",color:"gold"},{text:"升级了",color:"gray"},{text:"战斗",color:"gold"}]
attribute @s attack_damage base set 4
attribute @s armor base set 5
