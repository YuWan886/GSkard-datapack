execute at @e[limit=1,tag=red_marker_7] run summon creaking ~ 5 ~ {Team:blue,attributes:[{id:"movement_speed",base:2},{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"attack_damage",base:30}],Invulnerable:true,Glowing:1b,PersistenceRequired:true,Tags:["random_creaking"]}


execute at @e[limit=1,tag=blue_marker_7] run summon creaking ~ 5 ~ {Team:red,attributes:[{id:"movement_speed",base:2},{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"attack_damage",base:30}],Invulnerable:true,Glowing:1b,PersistenceRequired:true,Tags:["random_creaking"]}

