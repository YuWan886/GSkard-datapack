# 酸辣无骨鸡爪



give @s bone[item_name=[{translate: "json.kards.dialog.paiku.fashu.main.189", fallback: "酸辣无骨鸡爪",color:"red"}],lore=[{translate: "json.kards.dialog.paiku.yansheng.suanlawugujizhua.722", fallback: "美味可食用",color:"gold",italic:false},[{translate: "kards.function.game.paiku.yansheng.suanlawugujizhua.1.1", fallback: "食用后回复",color:"gray",italic:false},{translate: "kards.function.game.paiku.yansheng.suanlawugujizhua.1.2", fallback: "5♥",color:"green",italic:false}],[{translate: "kards.function.game.paiku.yansheng.suanlawugujizhua.1.3", fallback: "将1个",color:"gray",italic:false},{translate: "json.kards.dialog.paiku.fashu.main.189", fallback: "酸辣无骨鸡爪",color:"red",italic:false},{translate: "kards.function.game.paiku.yansheng.suanlawugujizhua.1.4", fallback: "置入敌方随机一名玩家手中",color:"gray",italic:false}],{translate: "json.kards.dialog.first_join.1.71", fallback: "",color:"gold",italic:false},{translate: "json.kards.dialog.paiku.yansheng.suanlawugujizhua.725", fallback: "为什么无骨鸡爪是一根骨头?",color:"dark_gray",italic:true}],custom_data={kards:'鸡爪'},consumable={animation:"eat",has_consume_particles:1b}]

execute unless entity @e[tag=suanlawugujizhua] run return fail
title @s times 10t 2s 10t
title @s title [{translate: "kards.function.game.paiku.yansheng.suanlawugujizhua.1.5", fallback: "你得到了",color:"gray"},{translate: "kards.function.game.paiku.yansheng.suanlawugujizhua.1.6", fallback: "[酸辣无骨鸡爪]",color:"red"}]
title @s subtitle [{translate: "kards.function.game.paiku.yansheng.suanlawugujizhua.1.7", fallback: "爱来自",color:"gray"},{selector:"@n[tag=suanlawugujizhua]"}]