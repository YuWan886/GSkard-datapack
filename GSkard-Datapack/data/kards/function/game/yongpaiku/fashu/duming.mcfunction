function kards:game/yongpaiku/use_general/kard_general




function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_duming kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
execute if entity @s[team=red] run tag @r[team=blue,gamemode=adventure] add DuMing
execute if entity @s[team=blue] run tag @r[team=red,gamemode=adventure] add DuMing

execute store result score @s fashu_duming run random value 1..100
execute store result score @a[tag=DuMing,limit=1] fashu_duming run random value 1..100

tellraw @a [{selector: "@s",bold:false},{translate: "kards.function.game.yongpaiku.fashu.duming.1", fallback: "向",color:"gray"},{selector:"@a[tag=DuMing,limit=1]"},{translate: "kards.function.game.yongpaiku.fashu.duming.2", fallback: "发起了",color:"gray"},{translate: "json.kards.dialog.paiku.fashu.duming.255", fallback: "赌命",color:"gold"}]

tellraw @a {translate: "json.kards.dialog.paiku.wangzhibaoku.diaolingtaidao.808", fallback: "......",color:gray}

execute if score @s fashu_duming > @a[tag=DuMing,limit=1] fashu_duming run tellraw @a [{selector: "@s",bold:false},{translate: "kards.function.game.yongpaiku.fashu.duming.3", fallback: "赢了! ",color:"gold"},{selector:"@a[tag=DuMing,limit=1]"},{translate: "kards.function.game.yongpaiku.fashu.duming.4", fallback: "受到",color:"gold"},{translate: "json.kards.dialog.paiku.fashu.duming.259", fallback: "7.5♥破甲伤害",color:"aqua","italic":false}]
execute if score @s fashu_duming < @a[tag=DuMing,limit=1] fashu_duming run tellraw @a [{selector: "@s",bold:false},{translate: "kards.function.game.yongpaiku.fashu.duming.5", fallback: "输了! ",color:"red"},{translate: "kards.function.game.yongpaiku.fashu.duming.6", fallback: "自己受到",color:"gold"},{translate: "json.kards.dialog.paiku.fashu.duming.259", fallback: "7.5♥破甲伤害",color:"aqua","italic":false}]
execute if score @s fashu_duming = @a[tag=DuMing,limit=1] fashu_duming run tellraw @a [{translate: "kards.function.game.yongpaiku.fashu.duming.7", fallback: "看起来两位的命运相同 没有任何人受到伤害!",color:"gold"}]

execute if score @s fashu_duming > @a[tag=DuMing,limit=1] fashu_duming run damage @a[tag=DuMing,limit=1] 15 kards:duming
execute if score @s fashu_duming < @a[tag=DuMing,limit=1] fashu_duming run damage @s 15 kards:duming

execute if score @s fashu_duming = @a[tag=DuMing,limit=1] fashu_duming run advancement grant @s only kards:advancement/suoyouhuozhe
execute if score @s fashu_duming = @a[tag=DuMing,limit=1] fashu_duming run advancement grant @a[tag=DuMing,limit=1] only kards:advancement/suoyouhuozhe

tag @a remove DuMing
scoreboard players reset @a fashu_duming