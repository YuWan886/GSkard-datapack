execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[赌命]",color:"dark_purple",hover_event:{action:"show_text",value:"使用后双方队伍进行一次随机点数(1~100) 出现更小值的队伍随机一个玩家将受到内核引爆"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_duming kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
execute if entity @s[team=red] run tag @r[team=blue,gamemode=adventure] add DuMing
execute if entity @s[team=blue] run tag @r[team=red,gamemode=adventure] add DuMing

execute store result score @s fashu_duming run random value 1..100
execute store result score @a[tag=DuMing,limit=1] fashu_duming run random value 1..100

tellraw @a [{selector: "@s",bold:false},{text:"向",color:"gray"},{selector:"@a[tag=DuMing,limit=1]"},{text:"发起了",color:"gray"},{text:"赌命",color:"gold"}]

tellraw @a {text:"......",color:gray}

execute if score @s fashu_duming > @a[tag=DuMing,limit=1] fashu_duming run tellraw @a [{selector: "@s",bold:false},{text: "赢了! ",color:"gold"},{selector:"@a[tag=DuMing,limit=1]"},{text:"受到",color:"gold"},{text:"7.5♥破甲伤害",color:"aqua","italic":false}]
execute if score @s fashu_duming < @a[tag=DuMing,limit=1] fashu_duming run tellraw @a [{selector: "@s",bold:false},{text: "输了! ",color:"red"},{text:"自己受到",color:"gold"},{text:"7.5♥破甲伤害",color:"aqua","italic":false}]
execute if score @s fashu_duming = @a[tag=DuMing,limit=1] fashu_duming run tellraw @a [{text:"看起来两位的命运相同 没有任何人受到伤害!",color:"gold"}]

execute if score @s fashu_duming > @a[tag=DuMing,limit=1] fashu_duming run damage @a[tag=DuMing,limit=1] 15 kards:duming
execute if score @s fashu_duming < @a[tag=DuMing,limit=1] fashu_duming run damage @s 15 kards:duming

tag @a remove DuMing
scoreboard players reset @a fashu_duming