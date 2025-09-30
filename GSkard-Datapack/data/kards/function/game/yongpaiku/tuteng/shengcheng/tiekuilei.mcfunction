

execute if entity @s[team=red] at @e[tag=red_marker_7,limit=1] run summon iron_golem ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:75.0d}],Health:75.0f,Tags:["tuteng"],CustomName: {"extra":[{translate: "json.kards.dialog.first_join.1.71", fallback: ""},{color:"gold",translate: "json.kards.dialog.paiku.tuteng.main.440", fallback: "铁傀儡"}],translate: "json.kards.dialog.first_join.1.71", fallback: ""},CustomNameVisible:1b,PlayerCreated:0b}
execute if entity @s[team=blue] at @e[tag=blue_marker_7,limit=1] run summon iron_golem ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:75.0d}],Health:75.0f,Tags:["tuteng"],CustomName: {"extra":[{translate: "json.kards.dialog.first_join.1.71", fallback: ""},{color:"gold",translate: "json.kards.dialog.paiku.tuteng.main.440", fallback: "铁傀儡"}],translate: "json.kards.dialog.first_join.1.71", fallback: ""},CustomNameVisible:1b,PlayerCreated:0b}
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_tiekuilei kardCount
