# 酸辣无骨鸡爪



give @s bone[item_name=[{text: "酸辣无骨鸡爪",color:"red"}],lore=[{text: "美味可食用",color:"gold",italic:false},[{text: "食用后回复",color:"gray",italic:false},{text: "5♥",color:"green",italic:false}],[{text: "将1个",color:"gray",italic:false},{text: "酸辣无骨鸡爪",color:"red",italic:false},{text: "置入敌方随机一名玩家手中",color:"gray",italic:false}],{text: "",color:"gold",italic:false},{text: "为什么无骨鸡爪是一根骨头?",color:"dark_gray",italic:true}],custom_data={kards:'鸡爪'},consumable={animation:"eat",has_consume_particles:1b}]

execute unless entity @e[tag=suanlawugujizhua] run return fail
title @s times 10t 2s 10t
title @s title [{text:"你得到了",color:"gray"},{text:"[酸辣无骨鸡爪]",color:"red"}]
title @s subtitle [{text:"爱来自",color:"gray"},{selector:"@n[tag=suanlawugujizhua]"}]