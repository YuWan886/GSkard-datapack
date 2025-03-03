execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[劫掠小队]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤3只劫掠者1只卫道士"}}]

    #红队用
    execute if entity @s[team=blue] as @e[tag=6b] at @s run summon pillager ~ 0 ~ {ArmorItems:[{},{},{},{}],HandItems:[{Count:1b,id:"minecraft:crossbow",tag:{Damage:0}},{}],Team:blue}
    execute if entity @s[team=blue] as @e[tag=8b] at @s run summon pillager ~ 0 ~ {ArmorItems:[{},{},{},{}],HandItems:[{Count:1b,id:"minecraft:crossbow",tag:{Damage:0}},{}],Team:blue}
    execute if entity @s[team=blue] as @e[tag=10b] at @s run summon pillager ~ 0 ~ {ArmorItems:[{},{},{},{}],HandItems:[{Count:1b,id:"minecraft:crossbow",tag:{Damage:0}},{}],Team:blue}
   execute if entity @s[team=blue] as @e[tag=7b] at @s run summon vindicator ~ 0 ~ {HandItems:[{Count:1b,id:"iron_axe"}],Team:blue}
   #蓝队用
   execute if entity @s[team=red] as @e[tag=6r] at @s run summon pillager ~ 0 ~ {ArmorItems:[{},{},{},{}],HandItems:[{Count:1b,id:"minecraft:crossbow",tag:{Damage:0}},{}],Team:red}
   execute if entity @s[team=red] as @e[tag=8r] at @s run summon pillager ~ 0 ~ {ArmorItems:[{},{},{},{}],HandItems:[{Count:1b,id:"minecraft:crossbow",tag:{Damage:0}},{}],Team:red}
   execute if entity @s[team=red] as @e[tag=10r] at @s run summon pillager ~ 0 ~ {ArmorItems:[{},{},{},{}],HandItems:[{Count:1b,id:"minecraft:crossbow",tag:{Damage:0}},{}],Team:red}
   execute if entity @s[team=red] as @e[tag=7r] at @s run summon vindicator ~ 0 ~ {HandItems:[{Count:1b,id:"iron_axe"}],Team:red}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 6
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1