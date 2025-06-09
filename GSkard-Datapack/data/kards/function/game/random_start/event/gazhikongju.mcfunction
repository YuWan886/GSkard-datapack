execute at @e[limit=1,tag=red_marker_7] run summon creaking ~ 0 ~ {Team:blue,attributes:[{id:"movement_speed",base:2},{id:"follow_range",base:100},{id:"attack_damage",base:30}],Invulnerable:true,Glowing:1b,PersistenceRequired:true}


execute at @e[limit=1,tag=blue_marker_7] run summon creaking ~ 0 ~ {Team:red,attributes:[{id:"movement_speed",base:2},{id:"follow_range",base:100},{id:"attack_damage",base:30}],Invulnerable:true,Glowing:1b,PersistenceRequired:true}

