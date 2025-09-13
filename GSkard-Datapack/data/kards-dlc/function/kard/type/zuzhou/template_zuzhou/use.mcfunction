function kards:game/yongpaiku/use_general/kard_general
    execute if entity @s[team=red] as @a[team=blue,gamemode=adventure] run function kards-dlc:kard/type/zuzhou/template_zuzhou/use2
    execute if entity @s[team=blue] as @a[team=red,gamemode=adventure] run function kards-dlc:kard/type/zuzhou/template_zuzhou/use2
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_template_zuzhou kardCount