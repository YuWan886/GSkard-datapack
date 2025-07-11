#自爆军团

execute on attacker if entity @s[team=red] at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2,ignited:true,CustomNameVisible:true,Team:red,active_effects:[{id:"invisibility",show_particles:0b}]}
execute on attacker if entity @s[team=blue] at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2,ignited:true,CustomNameVisible:true,Team:blue,active_effects:[{id:"invisibility",show_particles:0b}]}

advancement revoke @s only kards:mob/zibaojuntuan