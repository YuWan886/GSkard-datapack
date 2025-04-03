<<<<<<< HEAD
execute unless score #system GameStatus matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.shenji.wangzhibaoku.feishenghufu.1",color:"gold"},{translate: "game.yongpaiku.shenji.wangzhibaoku.jinghuashuijing.1",color:"dark_aqua"}]

give @s emerald[item_name={color:"dark_aqua",translate: "game.yongpaiku.shenji.wangzhibaoku.jinghuashuijing.1"},lore=[[{translate: "game.yongpaiku.shenji.wangzhibaoku.jinghuashuijing.2",color:"gray",italic:false}],[{translate: "game.yongpaiku.shenji.wangzhibaoku.jinghuashuijing.3",color:"dark_gray",italic:false}],[{translate: "game.yongpaiku.shenji.wangzhibaoku.jinghuashuijing.4",color:"gray",italic:false}],[{translate: "game.yongpaiku.shenji.wangzhibaoku.jinghuashuijing.5",color:"dark_gray",italic:false}],[{translate: "game.yongpaiku.shenji.wangzhibaoku.jinghuashuijing.6",color:"gray",italic:false}],[{translate: "game.yongpaiku.shenji.wangzhibaoku.jinghuashuijing.7",color:"dark_gray",italic:false}],{color:"white",translate: "game.yongpaiku.shenji.wangzhibaoku.feishenghufu.8",italic:false}],max_stack_size=1,custom_data={kards:'净化水晶'}]
scoreboard players set @s jinghuashuijing 1199
=======
execute unless score system status matches 0 run tellraw @a [{"selector":"@s"},{"text":"获得了","color":"gold"},{"text":"净化水晶","color":"dark_aqua"}]

give @s emerald[item_name='{"color":"dark_aqua","text":"净化水晶"}',lore=['[{"text":"免疫","color":"gold","italic":false},{"text":"负面效果","color":"gray","italic":false}]','[{"text":"每回合开始时获得","color":"gray","italic":false},{"text":"10♥","color":"gold","italic":false}]','[{"text":"周围敌对生物持续获得","color":"gray","italic":false},{"text":"缓慢III","color":"dark_gray","italic":false}]','{"color":"white","text":"传奇护符(背包内生效)","italic":false}'],max_stack_size=1,custom_data={kards:'净化水晶'}]
>>>>>>> c337d2e (加入一些卡牌)
