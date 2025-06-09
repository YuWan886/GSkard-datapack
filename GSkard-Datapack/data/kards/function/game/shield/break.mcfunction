
summon armor_stand ~ ~ ~ {Tags:["break"],equipment:{mainhand:{id:"diamond_axe"}},Invisible:1b,Invulnerable:1b}

damage @s 0.01 mob_attack by @n[tag=break,type=armor_stand]

kill @n[tag=break,type=armor_stand]
