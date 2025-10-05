

data modify entity @s NoAI set value 0b
scoreboard players reset @s wuwangchuchang

summon zombie ~5 ~ ~5 {Team:red,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"movement_speed",base:0.3}],IsBaby:false,equipment:{head:{id:"note_block"},chest:{id:"chainmail_chestplate"},legs:{id:"chainmail_leggings"},feet:{id:"chainmail_boots"}},Tags:["Mob_Start"]}
summon zombie ~5 ~ ~-5 {Team:red,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"movement_speed",base:0.3}],IsBaby:false,equipment:{head:{id:"note_block"},chest:{id:"chainmail_chestplate"},legs:{id:"chainmail_leggings"},feet:{id:"chainmail_boots"}},Tags:["Mob_Start"]}
summon zombie ~-5 ~ ~-5 {Team:red,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"movement_speed",base:0.3}],IsBaby:false,equipment:{head:{id:"note_block"},chest:{id:"chainmail_chestplate"},legs:{id:"chainmail_leggings"},feet:{id:"chainmail_boots"}},Tags:["Mob_Start"]}
summon zombie ~-5 ~ ~5 {Team:red,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"movement_speed",base:0.3}],IsBaby:false,equipment:{head:{id:"note_block"},chest:{id:"chainmail_chestplate"},legs:{id:"chainmail_leggings"},feet:{id:"chainmail_boots"}},Tags:["Mob_Start"]}

tp @e[tag=Mob_Start] @s

item replace entity @s armor.chest with leather_chestplate[dyed_color=8826796,trim={material:"quartz",pattern:"vex"}]
item replace entity @s armor.legs with leather_leggings[dyed_color=16777215,trim={material:"netherite",pattern:"vex"}]
item replace entity @s armor.feet with leather_boots[dyed_color=8826796,trim={material:"netherite",pattern:"vex"}]
item replace entity @s weapon.mainhand with music_disc_chirp

tag @e[tag=Mob_Start] remove Mob_Start

execute at @r run playsound wuwangzhaohuan block @a ~ ~ ~ 0.75 1 0.75