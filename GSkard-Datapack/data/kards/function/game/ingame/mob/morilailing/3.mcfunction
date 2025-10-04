particle angry_villager ~ ~-1 ~ 1 0.5 1 0.5 30 force @a
playsound minecraft:entity.zombie.death player @a
execute if entity @s[team=red] run summon creeper ~ 1 ~ {Team:red,ExplosionRadius:2,Fuse:15,attributes:[{id:"follow_range",base:100},{id:"max_health",base:10.0d}],Health:10.0f,CustomName:{"text":"⚡💥",color:"yellow",bold:true}}
execute if entity @s[team=blue] run summon creeper ~ 1 ~ {Team:blue,ExplosionRadius:2,Fuse:15,attributes:[{id:"follow_range",base:100},{id:"max_health",base:10.0d}],Health:10.0f,CustomName:{"text":"⚡💥",color:"yellow",bold:true}}
kill @s