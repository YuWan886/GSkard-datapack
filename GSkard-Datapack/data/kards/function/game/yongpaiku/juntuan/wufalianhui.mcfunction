execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[巫法联会]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤四只女巫"}}]
   #红队用
   execute if entity @s[team=blue] as @e[tag=2b] at @s run summon witch ~ 0 ~ {Team:blue}
   execute if entity @s[team=blue] as @e[tag=5b] at @s run summon witch ~ 0 ~ {Team:blue}
   execute if entity @s[team=blue] as @e[tag=9b] at @s run summon witch ~ 0 ~ {Team:blue}
   execute if entity @s[team=blue] as @e[tag=12b] at @s run summon witch ~ 0 ~ {Team:blue}
   #蓝队用
   execute if entity @s[team=red] as @e[tag=2r] at @s run summon witch ~ 0 ~ {Team:red}
   execute if entity @s[team=red] as @e[tag=5r] at @s run summon witch ~ 0 ~ {Team:red}
   execute if entity @s[team=red] as @e[tag=9r] at @s run summon witch ~ 0 ~ {Team:red}
   execute if entity @s[team=red] as @e[tag=12r] at @s run summon witch ~ 0 ~ {Team:red}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wufalianhui kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1