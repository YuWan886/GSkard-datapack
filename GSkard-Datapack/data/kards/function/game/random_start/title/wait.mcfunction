title @a times 1t 20t 2t
execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 100 1
execute store result score #system random_start run random value 1..14
execute if score #system random_start matches 1 run title @a title {translate: "json.kards.dialog.setting.random_start.main.1260", fallback: "宝库现世",color:"gold",bold:true}
execute if score #system random_start matches 1 run title @a subtitle [{"text":"所有玩家抽取","color":"gray"},{"text":"[王之宝库]","color":"green",bold:true}]

execute if score #system random_start matches 2 run title @a title {translate: "json.kards.dialog.setting.random_start.main.1263", fallback: "藏宝库",color:"gold",bold:true}
execute if score #system random_start matches 2 run title @a subtitle [{"text":"开局额外抽取","color":"gray"},{"text":"3张神迹牌 每回合额外抽2张牌","color":"gold",bold:true}]

execute if score #system random_start matches 3 run title @a title {translate: "json.kards.dialog.setting.random_start.main.1266", fallback: "魔法战争",color:"gold",bold:true}
execute if score #system random_start matches 3 run title @a subtitle [{"text":"所有人抽取的卡变为","color":"gray"},{"text":"法术卡\n","color":"light_purple",bold:true},{"text":"每用1张法术牌就对1名敌方玩家造成","color":"gray"},{"text":"5♥魔法伤害","color":"light_purple",bold:true}]

execute if score #system random_start matches 4 run title @a title {translate: "json.kards.dialog.setting.random_start.main.1269", fallback: "神之战",color:"gold",bold:true}
execute if score #system random_start matches 4 run title @a subtitle [{"text":"所有人抽取的卡变为","color":"gray"},{"text":"神迹卡","color":"white",bold:true}]

execute if score #system random_start matches 5 run title @a title {translate: "json.kards.dialog.setting.random_start.main.1271", fallback: "无尽战争",color:"gold",bold:true}
execute if score #system random_start matches 5 run title @a subtitle [{"text":"所有人的","color":"gray"},{"text":"Kmax被设为9999","color":"green",bold:true},{"text":" 每回合额外抽","color":"gray",bold:true},{"text":"3张牌","color":"green",bold:true}]

execute if score #system random_start matches 6 run title @a title {translate: "kards.function.game.random_start.title.end.1", fallback: "噶枝恐惧",color:"gold",bold:true}
execute if score #system random_start matches 6 run title @a subtitle [{"text":"两方场地中央生成一只移速增加的嘎吱怪","color":"red",bold:true}]

execute if score #system random_start matches 7 run title @a title {translate: "json.kards.dialog.paiku.shenji.main.640", fallback: "墓园狂欢",color:"gold",bold:true}
execute if score #system random_start matches 7 run title @a subtitle [{"text":"所有人默认使用[墓园狂欢]","color":"green",bold:true}]

execute if score #system random_start matches 8 run title @a title {translate: "json.kards.dialog.setting.random_start.main.1280", fallback: "狂轰滥炸",color:"gold",bold:true}
execute if score #system random_start matches 8 run title @a subtitle [{"text":"所有人只能抽取到[爆炸军团]","color":"red",bold:true}]

execute if score #system random_start matches 9 run title @a title {translate: "json.kards.dialog.setting.random_start.main.1283", fallback: "灾难之星",color:"gold",bold:true}
execute if score #system random_start matches 9 run title @a subtitle [{"text":"讲述[河豚][雷暴][失重]的故事","color":"gray"}]

execute if score #system random_start matches 10 run title @a title {translate: "json.kards.dialog.setting.random_start.main.1287", fallback: "Move or Die",color:"gold",bold:true}
execute if score #system random_start matches 10 run title @a subtitle [{"text":"不动就会死!","color":"red",bold:true}]

execute if score #system random_start matches 11 run title @a title {translate: "json.kards.dialog.setting.random_start.main.1289", fallback: "死神降临",color:"gold",bold:true}
execute if score #system random_start matches 11 run title @a subtitle [{"text":"10回合后 每回合杀死一个生命最低的玩家","color":"red",bold:true}]

execute if score #system random_start matches 12 run title @a title {translate: "json.kards.dialog.setting.random_start.main.1291", fallback: "舞会",color:"gold",bold:true}
execute if score #system random_start matches 12 run title @a subtitle [{translate: "json.kards.dialog.setting.random_start.main.1281", fallback: "所有人只能抽取到",color:"gray",bold:true},{translate: "json.kards.dialog.setting.random_start.main.1292", fallback: "[舞王僵尸]",color:"dark_green",bold:true}]

execute if score #system random_start matches 13 run title @a title {translate: "json.kards.dialog.setting.random_start.main.1293", fallback: "电表倒转",color:"gold",bold:true}
execute if score #system random_start matches 13 run title @a subtitle [{translate: "json.kards.dialog.setting.random_start.main.1294", fallback: "每使用1张牌 都有概率额外获得",color:"gray",bold:true},{translate: "json.kards.dialog.setting.random_start.main.1295", fallback: "[春暖花开]",color:"light_purple",bold:true},{translate: "json.kards.dialog.setting.random_start.main.1296", fallback: "[好高骛远]",color:"white",bold:true},{translate: "json.kards.dialog.setting.random_start.main.1297", fallback: "6K",color:"gold",bold:true}]

execute if score #system random_start matches 14 run title @a title {translate: "json.kards.dialog.setting.random_start.main.1298", fallback: "无尽贪婪",color:"gold",bold:true}
execute if score #system random_start matches 14 run title @a subtitle [{translate: "json.kards.dialog.setting.random_start.main.1278", fallback: "所有人默认使用",color:"gray",bold:true},{translate: "json.kards.dialog.setting.random_start.main.1299", fallback: "[贪欲魔盒]",color:"white",bold:true}]