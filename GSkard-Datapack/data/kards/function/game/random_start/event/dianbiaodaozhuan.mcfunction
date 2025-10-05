execute store result score @s temp run random value 1..100
execute if score @s temp matches 1..10 run function kards:game/paiku/fashu/chunnuanhuakai
execute if score @s temp matches 11..13 run function kards:game/paiku/shenji/haogaowuyuan
execute if score @s temp matches 14..33 run scoreboard players add @s kardCount 6

execute if score @s temp matches 1..10 run tellraw @s [{translate: "kards.function.game.random_start.event.dianbiaodaozhuan.1", fallback: "[电表倒转]",color:"green"},{translate: "json.kards.dialog.paiku.fashu.jinjidiaoqian.277", fallback: "获得",color:"gray"},{translate: "json.kards.dialog.setting.random_start.main.1295", fallback: "[春暖花开]",color:"light_purple"}]
execute if score @s temp matches 11..13 run tellraw @s [{translate: "kards.function.game.random_start.event.dianbiaodaozhuan.1", fallback: "[电表倒转]",color:"green"},{translate: "json.kards.dialog.paiku.fashu.jinjidiaoqian.277", fallback: "获得",color:"gray"},{translate: "json.kards.dialog.setting.random_start.main.1296", fallback: "[好高骛远]",color:"white"}]
execute if score @s temp matches 14..33 run tellraw @s [{translate: "kards.function.game.random_start.event.dianbiaodaozhuan.1", fallback: "[电表倒转]",color:"green"},{translate: "json.kards.dialog.paiku.fashu.jinjidiaoqian.277", fallback: "获得",color:"gray"},{translate: "json.kards.dialog.setting.random_start.main.1297", fallback: "6K",color:"gold"}]