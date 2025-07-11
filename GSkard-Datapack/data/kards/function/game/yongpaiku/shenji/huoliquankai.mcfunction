execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[火力全开]",color:"white",hover_event:{action:"show_text",value:[{text: "获得",color:"gray",italic:false},{text: "15K",color:"gold",italic:false},{text: "\n若友方存活玩家不大于2 则额外",color:"gray",italic:false},{text: "使队伍所有玩家获得10K",color:"gold",italic:false},{text:"\n使用后本回合内获得",color:"gray",italic:false},{text:"超频",color:"dark_aqua",italic:false,bold:true},{text: "\n超频:每使用1张牌获得1K,使用[法术牌][装备牌]会额外获得1Kmax.",color:"dark_gray",italic:false}]}}]
function kards:game/yongpaiku/xianjing/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general
scoreboard players add @s kardCount 15
execute store result score 人数 b_alive if entity @a[team=blue,gamemode=adventure]
execute store result score 人数 r_alive if entity @a[team=red,gamemode=adventure]
execute if entity @s[team=blue] if score 人数 b_alive matches ..2 run scoreboard players add @a[team=blue,gamemode=adventure] kardCount 10
execute if entity @s[team=red] if score 人数 r_alive matches ..2 run scoreboard players add @a[team=red,gamemode=adventure] kardCount 10
scoreboard players set @s ChaoPin 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_huoliquankai kardCount
