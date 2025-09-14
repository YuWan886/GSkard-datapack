# Gamemode
gamemode adventure @a[tag=Ready]
gamemode spectator @a[tag=Un_Ready]

# Scoreboard
scoreboard players reset @a
scoreboard players set @a[tag=Ready] kardCountmax 10
scoreboard players add @a Talent_Count 1

# Attribute
execute as @a run attribute @s scale base reset
execute as @a run attribute @s attack_damage base reset
execute as @a run attribute @s attack_knockback base reset
execute as @a run attribute @s attack_speed base reset
execute as @a run attribute @s entity_interaction_range base reset
execute as @a run attribute @s knockback_resistance base reset

# Equipment
clear @a

item replace entity @a[tag=Ready] container.0 with minecraft:golden_carrot[minecraft:custom_name={italic:false,text: "金胡萝卜",color:"gold"},lore=[{text: "老朋友",color:"dark_gray",italic:true},{text: ""},{text: "在主手时：",color:"gray",italic:false},{text: " 4 攻击伤害",color:"dark_green",italic:false},{text: " 3.2 攻击速度",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:3,id:"1",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-0.8,slot:"mainhand",operation:"add_value",id:"1"}],custom_data={kards:'金胡萝卜'},max_stack_size=1,tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
item replace entity @a[tag=Ready] container.1 with minecraft:crossbow[minecraft:custom_name={italic:false,text: "弩",color:"gold"},lore=[{text: "新时代战斗工具!",color:"gray",italic:false}],custom_data={kards:'弩'},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]},charged_projectiles=[{id:"minecraft:arrow",count:1b}]]
item replace entity @a[tag=Ready] container.8 with minecraft:written_book[item_name=[{text: "便携命令书",color:"gold"}],written_book_content={author:"Hart_GS",title:'§6便携命令书',pages:[[{text: "点击文字使用\n\n",color:"gray",bold:true},{text: "发起投降\n\n",color:"gold",click_event:{action:"run_command",command:"/trigger touxiang"},hover_event:{action:"show_text",value:"当投降人数与队伍存活人数相同时判对手胜利,仅在第1回合结束后才能使用"}},{text: "重置游戏\n",color:"red",click_event:{action:"run_command",command:"/trigger reset"},hover_event:{action:"show_text",value:"你真的要这样做吗？"}}]]}]
item replace entity @a[tag=Ready] container.7 with minecraft:bookshelf[minecraft:item_model="minecraft:experience_bottle",item_name={text:"商店",color:"green"},consumable={consume_seconds:0,animation:"bundle",has_consume_particles:false,sound:"minecraft:block.copper_trapdoor.open"},custom_data={kards:'xp_shop_item'},use_cooldown={seconds:0.5}]

item replace entity @a[team=red] armor.head from block 7 -60 -48 container.9
item replace entity @a[team=red] armor.chest from block 7 -60 -48 container.10
item replace entity @a[team=red] armor.legs from block 7 -60 -48 container.11
item replace entity @a[team=red] armor.feet from block 7 -60 -48 container.12

item replace entity @a[team=blue] armor.head from block 7 -60 -48 container.0
item replace entity @a[team=blue] armor.chest from block 7 -60 -48 container.1
item replace entity @a[team=blue] armor.legs from block 7 -60 -48 container.2
item replace entity @a[team=blue] armor.feet from block 7 -60 -48 container.3

# Tag
tag @a remove jishengnianye

# Effect
effect clear @a
effect give @a[tag=Ready] instant_health 1 200 false

# Bossbar
execute as @a run function kards:game/end/bossbar_reset/1