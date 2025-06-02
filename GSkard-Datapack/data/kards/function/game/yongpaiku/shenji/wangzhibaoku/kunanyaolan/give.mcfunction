execute unless score #system GameStatus matches 0 run tellraw @a [{selector:"@s"},{text: "获得了",color:"gold"},{text: "苦难摇篮",color:"dark_red"}]

give @s chainmail_chestplate[custom_name={italic:false,color:"dark_red",text: "苦难摇篮"},lore=[{color:"dark_gray",text: "有75%的概率对攻击者随机造成0.5♥~2.5♥伤害",italic:false},{color:"gray",text: "长途荆棘",italic:false},{color:"dark_gray",text: "你每受到10♥伤害 就对1个随机敌方玩家造成8♥反伤",italic:false},{color:"gray",text: "苦痛转化",italic:false},[{color:"dark_gray",text: "主动技能:",italic:false},{color:"gold",text: "长按shift ",italic:false},{color:"dark_gray",text: "开启苦痛转化 ",italic:false},{color:"gold",text: "持续10s",italic:false}],{color:"dark_gray",text: "技能开始时至时间结束记录你受到的所有伤害",italic:false},[{color:"dark_gray",text: "技能结束后",italic:false},{color:"gold",text: "恢复技能期间受到伤害总量的血量",italic:false},{color:"dark_gray",text: "并对范围内5格敌人",italic:false},{color:"gold",text: "分配受到伤害总量的伤害",italic:false}],{color:"white",text: "传奇护具",italic:false},{text: ""},{color:"gray",text: "穿在身上时：",italic:false},{color:"blue",text: "+5 护甲值",italic:false}],attribute_modifiers=[{type:"armor",amount:5.0d,slot:"chest",operation:"add_value",id:"1"}],unbreakable={},custom_data={kards:'苦难摇篮'},enchantments={thorns:5},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]

#荆棘4-5 （60%概率反伤-75%概率反伤）
#苦痛转化效果更改：
#穿戴时 使用xx键触发
#在xx秒内记录受到的所有伤害 结束时恢复受到的伤害的血量并对周围xx格敌人造成受到伤害*0.8的伤害 （板甲同款）