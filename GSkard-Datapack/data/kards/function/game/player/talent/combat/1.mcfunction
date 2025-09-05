scoreboard players remove @s Talent_Count 1
tellraw @s [{text:"[天赋]",color:"green"},{text:"您消耗了",color:"gray"},{text:"1点构想",color:"gold"},{text:"升级了",color:"gray"},{text:"战斗",color:"gold"}]

attribute @s attack_damage base set 2
attribute @s attack_speed modifier add talent 0.1 add_multiplied_base

