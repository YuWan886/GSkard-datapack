execute if items entity @s weapon.mainhand crossbow run item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:0.02}
execute if items entity @s weapon.offhand crossbow run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:0.02}

execute if items entity @s[scores={Talent_Combat=1..}] weapon.mainhand crossbow run item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:0.004}
execute if items entity @s[scores={Talent_Combat=1..}] weapon.offhand crossbow run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:0.004}

execute if items entity @s[scores={Talent_Combat=2..}] weapon.mainhand crossbow run item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:0.005}
execute if items entity @s[scores={Talent_Combat=2..}] weapon.offhand crossbow run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:0.005}

execute if items entity @s[scores={Talent_Combat=3..}] weapon.mainhand crossbow run item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:0.006}
execute if items entity @s[scores={Talent_Combat=3..}] weapon.offhand crossbow run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:0.006}

execute if items entity @s[scores={Talent_Combat=4..}] weapon.mainhand crossbow run item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:0.007}
execute if items entity @s[scores={Talent_Combat=4..}] weapon.offhand crossbow run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:0.007}

execute if items entity @s[scores={Talent_Combat=5..}] weapon.mainhand crossbow run item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:0.008}
execute if items entity @s[scores={Talent_Combat=5..}] weapon.offhand crossbow run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:0.008}

execute if items entity @s weapon.mainhand crossbow[damage=0,charged_projectiles=[]] run function kards:game/player/crossbow/main/1
execute if items entity @s weapon.offhand crossbow[damage=0,charged_projectiles=[]] run function kards:game/player/crossbow/off/1
