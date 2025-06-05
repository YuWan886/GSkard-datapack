
summon armor_stand ~ ~ ~ {Tags:["break"],equipment:{mainhand:{id:"diamond_axe"}},Invisible:1b,Invulnerable:1b}
damage @s 0.01 mob_attack by @n[tag=break,type=armor_stand]
kill @n[tag=break,type=armor_stand]
execute unless items entity @s weapon.offhand netherite_sword[custom_data={kards:'凋零太刀'}] run return fail
execute at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/1