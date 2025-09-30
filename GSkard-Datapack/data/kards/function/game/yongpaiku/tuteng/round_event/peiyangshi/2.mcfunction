
execute if entity @s[team=red] run tag @r[team=red,gamemode=adventure] add peiyangshi_shidi
execute if entity @s[team=blue] run tag @r[team=blue,gamemode=adventure] add peiyangshi_shidi

execute as @a[tag=peiyangshi_shidi] run function kards:game/paiku/juntuan/shidi
tellraw @a [{translate: "json.kards.dialog.paiku.tuteng.main.439", fallback: "培养尸",color:"red"},{translate: "kards.function.game.yongpaiku.tuteng.round_event.peiyangshi.2.1", fallback: "进化至",color:"gray"},{translate: "kards.function.game.paiku.tuteng.peiyangshi.5", fallback: "[尸帝]",color:"dark_green"},{translate: "kards.function.game.yongpaiku.tuteng.round_event.peiyangshi.2.2", fallback: "置入",color:"gray"},{selector:"@a[tag=peiyangshi_shidi]"}]
tag @a[tag=peiyangshi_shidi] remove peiyangshi_shidi

execute at @s run particle instant_effect ~ ~ ~ 0.5 0.5 0.5 0 100 force @a
execute at @s run tp @s ~ -100 ~
kill @s