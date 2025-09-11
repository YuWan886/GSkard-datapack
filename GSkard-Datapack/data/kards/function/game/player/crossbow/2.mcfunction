execute if items entity @s weapon.mainhand crossbow run item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:0.0275}
execute if items entity @s weapon.offhand crossbow run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:0.0275}

execute if items entity @s[scores={Talent_Combat=1..}] weapon.mainhand crossbow run item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:0.0055}
execute if items entity @s[scores={Talent_Combat=1..}] weapon.offhand crossbow run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:0.0055}

execute if items entity @s[scores={Talent_Combat=2..}] weapon.mainhand crossbow run item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:0.006875}
execute if items entity @s[scores={Talent_Combat=2..}] weapon.offhand crossbow run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:0.006875}

execute if items entity @s[scores={Talent_Combat=3..}] weapon.mainhand crossbow run item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:0.00825}
execute if items entity @s[scores={Talent_Combat=3..}] weapon.offhand crossbow run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:0.00825}

execute if items entity @s[scores={Talent_Combat=4..}] weapon.mainhand crossbow run item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:0.009625}
execute if items entity @s[scores={Talent_Combat=4..}] weapon.offhand crossbow run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:0.009625}

execute if items entity @s[scores={Talent_Combat=5..}] weapon.mainhand crossbow run item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:0.011}
execute if items entity @s[scores={Talent_Combat=5..}] weapon.offhand crossbow run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:0.011}

execute if items entity @s weapon.mainhand crossbow[damage=0,charged_projectiles=[]] run function kards:game/player/crossbow/main/1
execute if items entity @s weapon.offhand crossbow[damage=0,charged_projectiles=[]] run function kards:game/player/crossbow/off/1
