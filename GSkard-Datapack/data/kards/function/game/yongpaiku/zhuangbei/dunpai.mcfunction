#懒得重写图案了 以前做的图案网站也不记得了 于是用的item replace from block
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.dunpai.1",color:"gold"}]
item replace entity @s weapon.offhand from block 7 -60 -48 container.8
scoreboard players remove @s kardCount 10
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1