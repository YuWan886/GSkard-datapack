scoreboard players add @a shengji_jhlb 0
scoreboard players add @a shengji_jinjian 0
scoreboard players add @a shengji_tiejian 0
scoreboard players add @a shengji_zuanshijian 0
scoreboard players add @a shengji_xiajiehejinjian 0
scoreboard players add @a shengji_tiefu 0
scoreboard players add @a shengji_zuanshifu 0
scoreboard players add @a shengji_zhongchui 0
scoreboard players add @a level_jhlb 0
scoreboard players add @a level_jinjian 0
scoreboard players add @a level_tiejian 0
scoreboard players add @a level_zuanshijian 0
scoreboard players add @a level_xiajiehejinjian 0
scoreboard players add @a level_tiefu 0
scoreboard players add @a level_zuanshifu 0
scoreboard players add @a level_zhongchui 0
scoreboard players set @a[tag=!linghunshougeqi] linghunshougeqi 0
scoreboard players set @a[tag=!linghunshouge] linghunshouge 0

execute as @a[scores={linghunshougeqi=1..}] run scoreboard players add @s killed_entity 1
execute as @a[scores={linghunshougeqi=1..}] run scoreboard players remove @s linghunshougeqi 1

execute as @a[scores={linghunshouge=1..}] run scoreboard players add @s killed_entity 3
execute as @a[scores={linghunshouge=1..}] run scoreboard players remove @s linghunshouge 1


execute as @a[scores={killed_entity=1..}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金胡萝卜'}] run scoreboard players add @s shengji_jhlb 1
execute as @a[scores={killed_entity=1..}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金剑'}] run scoreboard players add @s shengji_jinjian 1
execute as @a[scores={killed_entity=1..}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'铁剑'}] run scoreboard players add @s shengji_tiejian 1
execute as @a[scores={killed_entity=1..}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'钻石剑'}] run scoreboard players add @s shengji_zuanshijian 1
execute as @a[scores={killed_entity=1..}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run scoreboard players add @s shengji_xiajiehejinjian 1
execute as @a[scores={killed_entity=1..}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'铁斧'}] run scoreboard players add @s shengji_tiefu 1
execute as @a[scores={killed_entity=1..}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'钻石斧'}] run scoreboard players add @s shengji_zuanshifu 1
execute as @a[scores={killed_entity=1..}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'重锤'}] run scoreboard players add @s shengji_zhongchui 1
execute as @a[scores={killed_entity=1..}] if items entity @s weapon.mainhand #kards:jinzhanwuqi unless items entity @s weapon.mainhand mace[custom_data={kards:'风暴战锤'}] run scoreboard players remove @s killed_entity 1
execute as @a run xp set @s 0 levels
#经验值
execute as @a[gamemode=adventure] if score #system GameStatus matches 1..2 if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金胡萝卜'}] run title @s actionbar [{text: "近战武器击杀数  ",color:"dark_green"},{score:{objective:"shengji_jhlb",name:"@s"},color:"red"}]
execute as @a[gamemode=adventure] if score #system GameStatus matches 1..2 if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金剑'}] run title @s actionbar [{text: "近战武器击杀数  ",color:"dark_green"},{score:{objective:"shengji_jinjian",name:"@s"},color:"red"}]
execute as @a[gamemode=adventure] if score #system GameStatus matches 1..2 if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'铁剑'}] run title @s actionbar [{text: "近战武器击杀数  ",color:"dark_green"},{score:{objective:"shengji_tiejian",name:"@s"},color:"red"}]
execute as @a[gamemode=adventure] if score #system GameStatus matches 1..2 if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'钻石剑'}] run title @s actionbar [{text: "近战武器击杀数  ",color:"dark_green"},{score:{objective:"shengji_zuanshijian",name:"@s"},color:"red"}]
execute as @a[gamemode=adventure] if score #system GameStatus matches 1..2 if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run title @s actionbar [{text: "近战武器击杀数  ",color:"dark_green"},{score:{objective:"shengji_xiajiehejinjian",name:"@s"},color:"red"}]
execute as @a[gamemode=adventure] if score #system GameStatus matches 1..2 if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'铁斧'}] run title @s actionbar [{text: "近战武器击杀数  ",color:"dark_green"},{score:{objective:"shengji_tiefu",name:"@s"},color:"red"}]
execute as @a[gamemode=adventure] if score #system GameStatus matches 1..2 if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'钻石斧'}] run title @s actionbar [{text: "近战武器击杀数  ",color:"dark_green"},{score:{objective:"shengji_zuanshifu",name:"@s"},color:"red"}]
execute as @a[gamemode=adventure] if score #system GameStatus matches 1..2 if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'重锤'}] run title @s actionbar [{"text":"近战武器击杀数  ","color":"dark_green"},{"score":{"objective":"shengji_zhongchui","name":"@s"},"color":"red"}]
#
execute as @a[scores={shengji_jhlb=10..,level_jhlb=0}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金胡萝卜'}] run function kards:game/ingame/shengji/jinzhan/1
execute as @a[scores={shengji_jhlb=20..,level_jhlb=1}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金胡萝卜'}] run function kards:game/ingame/shengji/jinzhan/2
execute as @a[scores={shengji_jhlb=30..,level_jhlb=2}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金胡萝卜'}] run function kards:game/ingame/shengji/jinzhan/3
execute as @a[scores={shengji_jhlb=40..,level_jhlb=3}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金胡萝卜'}] run function kards:game/ingame/shengji/jinzhan/4
execute as @a[scores={shengji_jhlb=50..,level_jhlb=4}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金胡萝卜'}] run function kards:game/ingame/shengji/jinzhan/5

execute as @a[scores={shengji_jinjian=10,level_jinjian=0}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金剑'}] run function kards:game/ingame/shengji/jinzhan/1
execute as @a[scores={shengji_jinjian=20,level_jinjian=1}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金剑'}] run function kards:game/ingame/shengji/jinzhan/2
execute as @a[scores={shengji_jinjian=30,level_jinjian=2}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金剑'}] run function kards:game/ingame/shengji/jinzhan/3
execute as @a[scores={shengji_jinjian=40,level_jinjian=3}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金剑'}] run function kards:game/ingame/shengji/jinzhan/4
execute as @a[scores={shengji_jinjian=50,level_jinjian=4}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'金剑'}] run function kards:game/ingame/shengji/jinzhan/5

execute as @a[scores={shengji_tiejian=15,level_tiejian=0}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'铁剑'}] run function kards:game/ingame/shengji/jinzhan/1
execute as @a[scores={shengji_tiejian=30,level_tiejian=1}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'铁剑'}] run function kards:game/ingame/shengji/jinzhan/2
execute as @a[scores={shengji_tiejian=45,level_tiejian=2}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'铁剑'}] run function kards:game/ingame/shengji/jinzhan/3
execute as @a[scores={shengji_tiejian=60,level_tiejian=3}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'铁剑'}] run function kards:game/ingame/shengji/jinzhan/4
execute as @a[scores={shengji_tiejian=75,level_tiejian=4}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'铁剑'}] run function kards:game/ingame/shengji/jinzhan/5

execute as @a[scores={shengji_zuanshijian=20,level_zuanshijian=0}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'钻石剑'}] run function kards:game/ingame/shengji/jinzhan/1
execute as @a[scores={shengji_zuanshijian=40,level_zuanshijian=1}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'钻石剑'}] run function kards:game/ingame/shengji/jinzhan/2
execute as @a[scores={shengji_zuanshijian=60,level_zuanshijian=2}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'钻石剑'}] run function kards:game/ingame/shengji/jinzhan/3
execute as @a[scores={shengji_zuanshijian=80,level_zuanshijian=3}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'钻石剑'}] run function kards:game/ingame/shengji/jinzhan/4
execute as @a[scores={shengji_zuanshijian=100,level_zuanshijian=4}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'钻石剑'}] run function kards:game/ingame/shengji/jinzhan/5

execute as @a[scores={shengji_xiajiehejinjian=25,level_xiajiehejinjian=0}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run function kards:game/ingame/shengji/jinzhan/1
execute as @a[scores={shengji_xiajiehejinjian=50,level_xiajiehejinjian=1}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run function kards:game/ingame/shengji/jinzhan/2
execute as @a[scores={shengji_xiajiehejinjian=75,level_xiajiehejinjian=2}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run function kards:game/ingame/shengji/jinzhan/3
execute as @a[scores={shengji_xiajiehejinjian=100,level_xiajiehejinjian=3}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run function kards:game/ingame/shengji/jinzhan/4
execute as @a[scores={shengji_xiajiehejinjian=125,level_xiajiehejinjian=4}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run function kards:game/ingame/shengji/jinzhan/5
execute as @a[scores={shengji_xiajiehejinjian=150,level_xiajiehejinjian=5}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run function kards:game/ingame/shengji/jinzhan/6
execute as @a[scores={shengji_xiajiehejinjian=175,level_xiajiehejinjian=6}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run function kards:game/ingame/shengji/jinzhan/7
execute as @a[scores={shengji_xiajiehejinjian=200,level_xiajiehejinjian=7}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run function kards:game/ingame/shengji/jinzhan/8
execute as @a[scores={shengji_xiajiehejinjian=225,level_xiajiehejinjian=8}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run function kards:game/ingame/shengji/jinzhan/9
execute as @a[scores={shengji_xiajiehejinjian=250,level_xiajiehejinjian=9}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run function kards:game/ingame/shengji/jinzhan/10

execute as @a[scores={shengji_tiefu=15..,level_tiefu=0}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'铁斧'}] run function kards:game/ingame/shengji/jinzhan/1
execute as @a[scores={shengji_tiefu=30..,level_tiefu=1}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'铁斧'}] run function kards:game/ingame/shengji/jinzhan/2
execute as @a[scores={shengji_tiefu=45..,level_tiefu=2}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'铁斧'}] run function kards:game/ingame/shengji/jinzhan/3

execute as @a[scores={shengji_zhongchui=12..,level_zhongchui=0}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'重锤'}] run function kards:game/ingame/shengji/jinzhan/1
execute as @a[scores={shengji_zhongchui=24..,level_zhongchui=1}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'重锤'}] run function kards:game/ingame/shengji/jinzhan/2
execute as @a[scores={shengji_zhongchui=36..,level_zhongchui=2}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'重锤'}] run function kards:game/ingame/shengji/jinzhan/3
execute as @a[scores={shengji_zhongchui=48..,level_zhongchui=3}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'重锤'}] run function kards:game/ingame/shengji/jinzhan/4
execute as @a[scores={shengji_zhongchui=60..,level_zhongchui=4}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'重锤'}] run function kards:game/ingame/shengji/jinzhan/5
execute as @a[scores={shengji_zhongchui=72..,level_zhongchui=5}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'重锤'}] run function kards:game/ingame/shengji/jinzhan/6

execute as @a[scores={shengji_zuanshifu=20..,level_zuanshifu=0}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'钻石斧'}] run function kards:game/ingame/shengji/jinzhan/1
execute as @a[scores={shengji_zuanshifu=40..,level_zuanshifu=1}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'钻石斧'}] run function kards:game/ingame/shengji/jinzhan/2
execute as @a[scores={shengji_zuanshifu=60..,level_zuanshifu=2}] if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'钻石斧'}] run function kards:game/ingame/shengji/jinzhan/3