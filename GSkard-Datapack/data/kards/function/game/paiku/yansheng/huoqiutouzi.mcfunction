# 火球骰子
give @s music_disc_mall[item_name=[{text: "6K",color:"aqua"},{text: " 火球骰子",color:"blue"}],lore=[{text: "在敌方随机玩家头顶随机",color:"gray",italic:false},{text: "召唤1~5颗烈焰弹",color:"gold",italic:false}],tooltip_display={hidden_components:["jukebox_playable"]},custom_data={kards:'火球骰子'},tooltip_style="kard/common"]
scoreboard players set #kard_huoqiushaizi kardCount 6

scoreboard players remove @s yanyangdajian_jiben 1
execute if score @s yanyangdajian_jiben matches 1.. run function kards:game/paiku/yansheng/huoqiutouzi