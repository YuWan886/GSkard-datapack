kill @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{kards:"鸡爪"}}}}]

playsound minecraft:brmm player @a ~ ~ ~ 100 1 1
particle flame ~ ~ ~ 0 0 0 1 1 force @a

summon skeleton ~ ~ ~ {CustomName:{text:"成精鸡爪",bold:true,color:red},attributes:[{id:"movement_speed",base:0.4},{id:"scale",base:0.3},{id:"entity_interaction_range",base:100},{id:"max_health",base:6},{id:"attack_damage",base:1},{id:"attack_knockback",base:5}],equipment:{mainhand:{id:"bone",components:{enchantments:{knockback:2}}}},Tags:["chengjingjizhua"]}

execute if entity @n[type=player,team=red] run team join blue @n[tag=chengjingjizhua]
execute if entity @n[type=player,team=blue] run team join red @n[tag=chengjingjizhua]