execute store result score 1r p if entity @e[tag=1r]
execute store result score 2r p if entity @e[tag=2r]
execute store result score 3r p if entity @e[tag=3r]
execute store result score 4r p if entity @e[tag=4r]
execute store result score 5r p if entity @e[tag=5r]
execute store result score 6r p if entity @e[tag=6r]
execute store result score 7r p if entity @e[tag=7r]
execute store result score 8r p if entity @e[tag=8r]
execute store result score 9r p if entity @e[tag=9r]
execute store result score 10r p if entity @e[tag=10r]
execute store result score 11r p if entity @e[tag=11r]
execute store result score 12r p if entity @e[tag=12r]
execute store result score 13r p if entity @e[tag=13r]
execute store result score 1b p if entity @e[tag=1b]
execute store result score 2b p if entity @e[tag=2b]
execute store result score 3b p if entity @e[tag=3b]
execute store result score 4b p if entity @e[tag=4b]
execute store result score 5b p if entity @e[tag=5b]
execute store result score 6b p if entity @e[tag=6b]
execute store result score 7b p if entity @e[tag=7b]
execute store result score 8b p if entity @e[tag=8b]
execute store result score 9b p if entity @e[tag=9b]
execute store result score 10b p if entity @e[tag=10b]
execute store result score 11b p if entity @e[tag=11b]
execute store result score 12b p if entity @e[tag=12b]
execute store result score 13b p if entity @e[tag=13b]
execute store result score r_tuteng p if entity @e[tag=r_tuteng]
execute store result score b_tuteng p if entity @e[tag=b_tuteng]
execute store result score b_ttdw p if entity @e[tag=b_ttdw]
execute store result score r_ttdw p if entity @e[tag=r_ttdw]
execute store result score r_dw p if entity @e[tag=r_dw]
execute store result score b_dw p if entity @e[tag=b_dw]
execute store result score 盔甲架上限 p if entity @e[type=armor_stand]

execute if score 1r p matches 2.. run kill @e[tag=1r,limit=1]
execute if score 2r p matches 2.. run kill @e[tag=2r,limit=1]
execute if score 3r p matches 2.. run kill @e[tag=3r,limit=1]
execute if score 4r p matches 2.. run kill @e[tag=4r,limit=1]
execute if score 5r p matches 2.. run kill @e[tag=5r,limit=1]
execute if score 6r p matches 2.. run kill @e[tag=6r,limit=1]
execute if score 7r p matches 2.. run kill @e[tag=7r,limit=1]
execute if score 8r p matches 2.. run kill @e[tag=8r,limit=1]
execute if score 9r p matches 2.. run kill @e[tag=9r,limit=1]
execute if score 10r p matches 2.. run kill @e[tag=10r,limit=1]
execute if score 11r p matches 2.. run kill @e[tag=11r,limit=1]
execute if score 12r p matches 2.. run kill @e[tag=12r,limit=1]
execute if score 13r p matches 2.. run kill @e[tag=13r,limit=1]
execute if score 1b p matches 2.. run kill @e[tag=1b,limit=1]
execute if score 2b p matches 2.. run kill @e[tag=2b,limit=1]
execute if score 3b p matches 2.. run kill @e[tag=3b,limit=1]
execute if score 4b p matches 2.. run kill @e[tag=4b,limit=1]
execute if score 5b p matches 2.. run kill @e[tag=5b,limit=1]
execute if score 6b p matches 2.. run kill @e[tag=6b,limit=1]
execute if score 7b p matches 2.. run kill @e[tag=7b,limit=1]
execute if score 8b p matches 2.. run kill @e[tag=8b,limit=1]
execute if score 9b p matches 2.. run kill @e[tag=9b,limit=1]
execute if score 10b p matches 2.. run kill @e[tag=10b,limit=1]
execute if score 11b p matches 2.. run kill @e[tag=11b,limit=1]
execute if score 12b p matches 2.. run kill @e[tag=12b,limit=1]
execute if score 13b p matches 2.. run kill @e[tag=13b,limit=1]
execute if score r_tuteng p matches 2.. run kill @e[tag=r_tuteng,limit=1]
execute if score b_tuteng p matches 2.. run kill @e[tag=b_tuteng,limit=1]
execute if score b_ttdw p matches 2.. run kill @e[tag=b_ttdw]
execute if score r_ttdw p matches 2.. run kill @e[tag=r_ttdw]
execute if score b_dw p matches 2.. run kill @e[tag=b_dw]
execute if score r_dw p matches 2.. run kill @e[tag=r_dw]

#防止实体盔甲架过多
execute if score 盔甲架上限 p matches 1000.. run kill @e[type=armor_stand]
#检测地图
execute if score system dituxuanze matches 1 run function kards:game/armor_stand/1
execute if score system dituxuanze matches 2 run function kards:game/armor_stand/2
execute if score system dituxuanze matches 3 run function kards:game/armor_stand/3
execute if score system dituxuanze matches 4 run function kards:game/armor_stand/4
execute if score system dituxuanze matches 5 run function kards:game/armor_stand/5
execute if score system dituxuanze matches 6 run function kards:game/armor_stand/6
execute if score system dituxuanze matches 7 run function kards:game/armor_stand/7
execute if score system dituxuanze matches 8 run function kards:game/armor_stand/8
execute if score system dituxuanze matches 9 run function kards:game/armor_stand/9
execute if score system dituxuanze matches 10 run function kards:game/armor_stand/10
execute if score system dituxuanze matches 11 run function kards:game/armor_stand/11
execute if score system dituxuanze matches 12 run function kards:game/armor_stand/12
execute if score system dituxuanze matches 13 run function kards:game/armor_stand/13
execute if score system dituxuanze matches 14 run function kards:game/armor_stand/14
execute if score system dituxuanze matches 15 run function kards:game/armor_stand/15
execute if score system dituxuanze matches 16 run function kards:game/armor_stand/16
execute if score system dituxuanze matches 17 run function kards:game/armor_stand/17
execute if score system dituxuanze matches 18 run function kards:game/armor_stand/18
execute if score system dituxuanze matches 19 run function kards:game/armor_stand/19
execute if score system dituxuanze matches 20 run function kards:game/armor_stand/20