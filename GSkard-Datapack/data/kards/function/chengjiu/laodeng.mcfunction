execute as @s[advancements={kards:chengjiu/jiaocheng=false}] run tellraw @a [{selector:"@s"},{text: "达成了进度",color:"white"},{text: "[老登]",color:"green","hover_event":{"action":"show_text",value:"难道他真是搞牌高手?"}}]
advancement grant @s only kards:chengjiu/jiaocheng
tp @s 59 226 -26 -90 0