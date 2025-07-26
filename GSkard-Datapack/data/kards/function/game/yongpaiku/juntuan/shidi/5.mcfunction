
playsound minecraft:entity.zombie_villager.cure player @a[distance=..20] ~ ~ ~ 100 2
particle crimson_spore ~ ~ ~ 0 0 0 0 100 force @a
execute if entity @s[team=red] run summon zombie ~2 ~ ~ {Team:red,equipment:{chest:{id:diamond_chestplate},head:{id:"diamond_helmet"},feet:{id:"diamond_boots"},legs:{id:"diamond_leggings"},mainhand:{id:"diamond_sword"},offhand:{id:shield}},CustomName:[{text:"尸帝护卫",color:"red"}]}
execute if entity @s[team=red] run summon zombie ~-2 ~ ~ {Team:red,equipment:{chest:{id:diamond_chestplate},head:{id:"diamond_helmet"},feet:{id:"diamond_boots"},legs:{id:"diamond_leggings"},mainhand:{id:"diamond_sword"},offhand:{id:shield}},CustomName:[{text:"尸帝护卫",color:"red"}]}

execute if entity @s[team=blue] run summon zombie ~2 ~ ~ {Team:blue,equipment:{chest:{id:"diamond_chestplate"},head:{id:"diamond_helmet"},feet:{id:"diamond_boots"},legs:{id:"diamond_leggings"},mainhand:{id:"diamond_sword"},offhand:{id:shield}},CustomName:[{text:"尸帝护卫",color:"red"}]}
execute if entity @s[team=blue] run summon zombie ~-2 ~ ~ {Team:blue,equipment:{chest:{id:"diamond_chestplate"},head:{id:"diamond_helmet"},feet:{id:"diamond_boots"},legs:{id:"diamond_leggings"},mainhand:{id:"diamond_sword"},offhand:{id:shield}},CustomName:[{text:"尸帝护卫",color:"red"}]}