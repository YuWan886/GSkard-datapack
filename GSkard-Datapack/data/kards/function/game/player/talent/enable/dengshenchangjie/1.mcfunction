# 登神长阶天赋设置
# 本局游戏 你每击杀1个生物 增加1%攻击力

attribute @s attack_damage modifier remove talent-1
$attribute @s attack_damage modifier add talent-1 $(dengshenchangjie) add_multiplied_total
$tellraw @s [{text:"登神长阶",color:"gold"},{text:" 伤害加成",color:green},{text:"$(dengshenchangjie_tellraw)%",color:gold}]
