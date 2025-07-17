execute if entity @s[team=red] run summon wolf ~ ~ ~ {Team:red,Invulnerable:1b,attributes:[{id:"scale",base:2},{id:"attack_damage",base:0,modifiers:[{amount:-1,id:"1",operation:"add_multiplied_total"}]}],active_effects:[{id:"instant_health",show_particles:0b,duration:-1,amplifier:0}],Tags:["kunanhuashen","kunanhuashen_start"],variant:black,CollarColor:15}
execute if entity @s[team=blue] run summon wolf ~ ~ ~ {Team:blue,Invulnerable:1b,attributes:[{id:"scale",base:2},{id:"attack_damage",base:0,modifiers:[{amount:-1,id:"1",operation:"add_multiplied_total"}]}],active_effects:[{id:"instant_health",show_particles:0b,duration:-1,amplifier:0}],Tags:["kunanhuashen","kunanhuashen_start"],variant:black,CollarColor:15}

data modify entity @n[tag=kunanhuashen_start] Owner set from entity @s UUID
scoreboard players set @n[tag=kunanhuashen_start] kunanhuashen_live 300

scoreboard players remove @s kunanyaolan_hurt_2 400