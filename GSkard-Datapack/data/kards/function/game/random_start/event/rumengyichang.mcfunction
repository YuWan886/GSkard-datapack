scoreboard players set #system r_death 0
scoreboard players set #system b_death 0

tellraw @a [{text: "[如梦一场]",color:"white"},{text: "往事种种 亦是梦境",color:"gold"}]

tp @a[team=red,gamemode=spectator] @r[gamemode=adventure,team=red]
tp @a[team=blue,gamemode=spectator] @r[gamemode=adventure,team=blue]

#发初始武器
item replace entity @a[gamemode=spectator,team=!Spectator] container.0 with minecraft:golden_carrot[minecraft:custom_name={italic:false,text: "金胡萝卜",color:"gold"},lore=[{text: "每击杀10只生物升级[最高5级]",color:"gray",italic:false},{text: "老朋友",color:"dark_gray",italic:true},{text: ""},{text: "在主手时：",color:"gray",italic:false},{text: " 3 攻击伤害",color:"dark_green",italic:false},{text: " 3.5 攻击速度",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:3,id:"1",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-0.5,slot:"mainhand",operation:"add_value",id:"1"}],custom_data={kards:'金胡萝卜'},max_stack_size=1,tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
#发初始装备
#红
item replace entity @a[team=red,gamemode=spectator] armor.head from block 7 -60 -48 container.9
item replace entity @a[team=red,gamemode=spectator] armor.chest from block 7 -60 -48 container.10
item replace entity @a[team=red,gamemode=spectator] armor.legs from block 7 -60 -48 container.11
item replace entity @a[team=red,gamemode=spectator] armor.feet from block 7 -60 -48 container.12
#蓝
item replace entity @a[team=blue,gamemode=spectator] armor.head from block 7 -60 -48 container.0
item replace entity @a[team=blue,gamemode=spectator] armor.chest from block 7 -60 -48 container.1
item replace entity @a[team=blue,gamemode=spectator] armor.legs from block 7 -60 -48 container.2
item replace entity @a[team=blue,gamemode=spectator] armor.feet from block 7 -60 -48 container.3

execute as @a[gamemode=spectator,team=!Spectator] run attribute @s max_health base set 200

gamemode adventure @a[gamemode=spectator,team=red]
gamemode adventure @a[gamemode=spectator,team=blue]

effect give @a instant_health 1 200 true