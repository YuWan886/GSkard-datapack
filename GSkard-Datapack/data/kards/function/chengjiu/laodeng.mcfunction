execute as @s[advancements={kards:chengjiu/jiaocheng=false}] run tellraw @a [{selector:"@s"},{translate: "chengjiu.first_join_game.1",color:"white"},{translate: "chengjiu.laodeng.1",color:"green","hoverEvent":{"action":"show_text","value":"难道他真是搞牌高手?"}}]
advancement grant @s only kards:chengjiu/jiaocheng
tp @s 59 226 -26 -90 0