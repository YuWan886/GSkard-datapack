execute summon marker at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/yiwen/bolun/summon

execute rotated as @n[tag=jiangshuzhe_bolun] run rotate @s ~ ~

tellraw @s [{text:"很遗憾的通知您 ",color:"red"},{text:"您的视角异常了",color:"gold"}]

kill @n[tag=jiangshuzhe_bolun]