

data modify entity @s NoAI set value 0b
scoreboard players reset @s wuwangchuchang

summon zombie ~2.5 ~ ~2.5 {Team:blue,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"movement_speed",base:0.3}],IsBaby:false,equipment:{head:{id:"note_block"},chest:{id:"chainmail_chestplate"},legs:{id:"chainmail_leggings"},feet:{id:"chainmail_boots"}}}
summon zombie ~2.5 ~ ~-2.5 {Team:blue,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"movement_speed",base:0.3}],IsBaby:false,equipment:{head:{id:"note_block"},chest:{id:"chainmail_chestplate"},legs:{id:"chainmail_leggings"},feet:{id:"chainmail_boots"}}}
summon zombie ~-2.5 ~ ~-2.5 {Team:blue,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"movement_speed",base:0.3}],IsBaby:false,equipment:{head:{id:"note_block"},chest:{id:"chainmail_chestplate"},legs:{id:"chainmail_leggings"},feet:{id:"chainmail_boots"}}}
summon zombie ~-2.5 ~ ~2.5 {Team:blue,Health:30.0f,attributes:[{id:"follow_range",base:100},{id:"movement_speed",base:0.3}],IsBaby:false,equipment:{head:{id:"note_block"},chest:{id:"chainmail_chestplate"},legs:{id:"chainmail_leggings"},feet:{id:"chainmail_boots"}}}

execute at @r run playsound wuwangzhaohuan block @a ~ ~ ~ 0.75 1 0.75