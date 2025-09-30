# 再来一罐
tellraw @a [{translate: "kards.function.game.paiku.yansheng.suanlawugujizhua.2.1", fallback: "哇！大奖！",color:"gray"},{translate: "kards.function.game.paiku.yansheng.suanlawugujizhua.2.2", fallback: "再来一罐！",color:"gold"}]
execute at @s run playsound entity.evoker.prepare_wololo player @s ~ ~ ~ 100 1

give @s minecraft:magenta_shulker_box[item_name=[{translate: "kards.function.game.paiku.fashu.jielue.1", fallback: "4K",color:"aqua"},{translate: "json.kards.dialog.jiaocheng.wanfa.1.95", fallback: " "},{translate: "kards.function.game.paiku.yansheng.suanlawugujizhua.2.3", fallback: "再来一罐",color:"light_purple"}],lore=[[{translate: "kards.function.game.paiku.yansheng.suanlawugujizhua.2.4", fallback: "获得两个",color:"gray",italic:false},{translate: "json.kards.dialog.paiku.fashu.main.189", fallback: "酸辣无骨鸡爪",color:"red",italic:false}]],custom_data={kards:'再来一罐',K:4}]

scoreboard players set #kard_zailaiyiguan kardCount 4