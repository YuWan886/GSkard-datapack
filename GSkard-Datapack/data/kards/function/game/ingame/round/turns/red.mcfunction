title @a title [{text:"红方回合",color:"red",bold:true}]
bossbar set minecraft:roundtime color red
scoreboard players set @a[team=red] canuse 1
scoreboard players set @a[team=blue] canuse 0
scoreboard players set @a[team=red] tiaoguo 1
scoreboard players set @a[team=blue] tiaoguo 0