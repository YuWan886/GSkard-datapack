tellraw @a [{text: "本局随机事件",color:"gray"}]

execute store result score #system random_start run random value 1..5
# execute if score #system random_start matches 1 run
execute if score #system random_start matches 2 run function kards:game/paiku/jiben/kulou
execute if score #system random_start matches 3 run function kards:game/paiku/jiben/moyingman
execute if score #system random_start matches 4 run function kards:game/paiku/jiben/juduzhizhu
execute if score #system random_start matches 5 run function kards:game/paiku/jiben/zhizhu
execute if score #system random_start matches 6 run function kards:game/paiku/jiben/lieyanren
execute if score #system random_start matches 7 run function kards:game/paiku/jiben/nvwu
execute if score #system random_start matches 8 run function kards:game/paiku/jiben/diaolingkulou
execute if score #system random_start matches 9 run function kards:game/paiku/jiben/youzhushou
execute if score #system random_start matches 10 run function kards:game/paiku/jiben/kulipa
execute if score #system random_start matches 11 run function kards:game/paiku/jiben/shashoutu
execute if score #system random_start matches 12 run function kards:game/paiku/jiben/manbing
execute if score #system random_start matches 13 run function kards:game/paiku/jiben/mifeng
execute if score #system random_start matches 14 run function kards:game/paiku/jiben/naogui
execute if score #system random_start matches 15 run function kards:game/paiku/jiben/liulangzhe
execute if score #system random_start matches 16 run function kards:game/paiku/jiben/xuanfengren
execute if score #system random_start matches 17 run function kards:game/paiku/jiben/moyingren
execute if score #system random_start matches 18 run function kards:game/paiku/jiben/zhaohai
execute if score #system random_start matches 19 run function kards:game/paiku/jiben/weidaoshi
execute if score #system random_start matches 20 run function kards:game/paiku/jiben/wurenji
execute if score #system random_start matches 21 run function kards:game/paiku/jiben/jijingshanyang
scoreboard players set #system random_start 0
