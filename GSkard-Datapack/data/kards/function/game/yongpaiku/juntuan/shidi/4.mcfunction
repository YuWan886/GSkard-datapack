particle crimson_spore ~ ~ ~ 0 0 0 0 10 force @a
execute if entity @s[team=red] run summon zombie ~ ~ ~ {Team:red,equipment:{chest:{id:"iron_chestplate"},head:{id:"iron_helmet"},feet:{id:"iron_boots"},legs:{id:"iron_leggings"},mainhand:{id:"iron_sword"}},CustomName:[{text:"尸帝仆从",color:"red"}]}
execute if entity @s[team=blue] run summon zombie ~ ~ ~ {Team:blue,equipment:{chest:{id:"iron_chestplate"},head:{id:"iron_helmet"},feet:{id:"iron_boots"},legs:{id:"iron_leggings"},mainhand:{id:"iron_sword"}},CustomName:[{text:"尸帝仆从",color:"red"}]}
tp @s ~ ~-100 ~
kill @s