scoreboard players set @s Talent_zhongyanzhixing 0

scoreboard players operation @s Talent_zhongyanzhixing += @s Use_K_Round
scoreboard players operation @s Talent_zhongyanzhixing += @s Use_Kmax_Round

scoreboard players set #system Talent_zhongyanzhixing 2
scoreboard players operation @s Talent_zhongyanzhixing /= #system Talent_zhongyanzhixing

tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"「终焉之行」",color:light_purple,hover_event:{action:"show_text",value:[{text:"每回合结束时\n统计本回合消耗的K/Kmax 取两值之和的一半\n分配等额无视护甲的伤害于敌方玩家",color:"gray"}]}}]
tellraw @a [{selector:"@s"},{text:"造成了",color:"gold"},{score:{name:"@s",objective:"Talent_zhongyanzhixing"},color:green},{text:"点伤害",color:"gold"}]

function kards:game/player/talent/enable/zhongyanzhixing/2