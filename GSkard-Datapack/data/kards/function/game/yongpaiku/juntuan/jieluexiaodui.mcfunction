function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=blue] at @e[tag=red_marker_6] run summon pillager ~ 0 ~ {equipment:{mainhand:{id:"minecraft:crossbow"}},Team:blue}
execute if entity @s[team=blue] at @e[tag=red_marker_8] run summon pillager ~ 0 ~ {equipment:{mainhand:{id:"minecraft:crossbow"}},Team:blue}
execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon vindicator ~ 0 ~ {equipment:{mainhand:{id:"minecraft:iron_axe"}},Team:blue,attributes:[{id:"follow_range",base:100}]}
execute if entity @s[team=blue] if entity @e[tag=tuteng,team=red,type=villager] at @e[tag=red_marker_10] run summon vindicator ~ 0 ~ {equipment:{mainhand:{id:"minecraft:iron_axe"}},Team:blue,attributes:[{id:"follow_range",base:100}]}
execute if entity @s[team=blue] if entity @e[tag=tuteng,team=red,type=villager] at @e[tag=red_marker_10] run summon pillager ~ 0 ~ {equipment:{mainhand:{id:"minecraft:crossbow"}},Team:blue}


execute if entity @s[team=red] at @e[tag=blue_marker_6] run summon pillager ~ 0 ~ {equipment:{mainhand:{id:"minecraft:crossbow"}},Team:red}
execute if entity @s[team=red] at @e[tag=blue_marker_8] run summon pillager ~ 0 ~ {equipment:{mainhand:{id:"minecraft:crossbow"}},Team:red}
execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon vindicator ~ 0 ~ {equipment:{mainhand:{id:"minecraft:iron_axe"}},Team:red,attributes:[{id:"follow_range",base:100}]}
execute if entity @s[team=red] if entity @e[tag=tuteng,team=blue,type=villager] at @e[tag=blue_marker_10] run summon vindicator ~ 0 ~ {equipment:{mainhand:{id:"minecraft:iron_axe"}},Team:red,attributes:[{id:"follow_range",base:100}]}
execute if entity @s[team=red] if entity @e[tag=tuteng,team=blue,type=villager] at @e[tag=blue_marker_10] run summon pillager ~ 0 ~ {equipment:{mainhand:{id:"minecraft:crossbow"}},Team:red}

function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jieluexiaodui kardCount
