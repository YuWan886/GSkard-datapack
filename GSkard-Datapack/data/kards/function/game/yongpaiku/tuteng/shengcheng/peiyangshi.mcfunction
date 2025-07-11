execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[培养尸]",color:"red",hover_event:{action:"show_text",value:[{text: "图腾牌",color:"red",italic:false},[{text: "在队伍图腾区生成",color:"gray",italic:false},{text: "培养尸",color:"gold",italic:false}],{text: "图腾存活效果：",color:"gray",italic:false},[{text: "1.队伍玩家获得",color:"gray",italic:false},{text: "防火",color:"gold",italic:false}],[{text: "2.",color:"gray",italic:false},{text: "培养尸",color:"gold",italic:false},{text: "在造成",color:"gray",italic:false},{text: "30♥",color:"gold",italic:false},{text: "的生命之后变为",color:"gray",italic:false},{text: "[尸帝]",color:"dark_green",italic:false},{text: " 置入随机一名友方玩家手中",color:"gray",italic:false}],[{text: "-放置",color:"gray",italic:false},{text: "培养尸",color:"red",italic:false},{text: "时若队伍内有",color:"gray",italic:false},{text: "村民",color:"red",italic:false},{text: " 培养尸",color:"red",italic:false},{text: "会吞噬",color:"gray",italic:false},{text: "村民",color:"red",italic:false},{text: "以提升10♥培养值",color:"gray",italic:false}],[{text: "-回合开始时对敌方随机1名玩家造成",color:"gray",italic:false},{text: "5♥真实伤害",color:"white",italic:false}]]}}]

function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] at @e[tag=r_tuteng,limit=1] run summon zombie ~ 0 ~ {Team:red,Tags:["tuteng","peiyangshi"],attributes:[{id:"minecraft:max_health",base:40.0d}],Health:40.0f,Silent:1b,equipment:{head:{id:leather_helmet},chest:{id:leather_chestplate,components:{dyed_color:16711680}},legs:{id:leather_leggings},feet:{id:leather_boots}}}
execute if entity @s[team=blue] at @e[tag=b_tuteng,limit=1] run summon zombie ~ 0 ~ {Team:blue,Tags:["tuteng","peiyangshi"],attributes:[{id:"minecraft:max_health",base:40.0d}],Health:40.0f,Silent:1b,equipment:{head:{id:leather_helmet},chest:{id:leather_chestplate,components:{dyed_color:1966335}},legs:{id:leather_leggings},feet:{id:leather_boots}}}

execute if entity @s[team=red] if entity @e[type=villager,tag=tuteng,team=red] run scoreboard players add @e[tag=peiyangshi,team=red,limit=1] peiyangshi 20
execute if entity @s[team=blue] if entity @e[type=villager,tag=tuteng,team=blue] run scoreboard players add @e[tag=peiyangshi,team=blue,limit=1] peiyangshi 20

execute if entity @s[team=red] if entity @e[type=villager,tag=tuteng,team=red] run kill @e[type=villager,tag=tuteng,team=red]
execute if entity @s[team=blue] if entity @e[type=villager,tag=tuteng,team=blue] run kill @e[type=villager,tag=tuteng,team=blue]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_peiyangshi kardCount


