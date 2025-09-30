function kards:game/yongpaiku/use_general/kard_general



give @s minecraft:sticky_piston[custom_name={italic:false,translate: "json.kards.dialog.paiku.zhuangbei.main.779", fallback: "便携活塞",color:"green"},lore=[[{translate: "kards.function.game.yongpaiku.zhuangbei.bianxiehuosai.1", fallback: "放在背包最右侧一列佩戴 同个配件只生效一个",color:"gray",italic:false}],[{translate: "json.kards.dialog.first_join.1.71", fallback: "",color:"gray",italic:false}],[{translate: "kards.function.game.yongpaiku.zhuangbei.bianxiehuosai.2", fallback: "佩戴时：",color:"gray",italic:false}],[{translate: "kards.function.game.yongpaiku.zhuangbei.bianxiehuosai.3", fallback: "+1 击退",color:"blue",italic:false}]],max_stack_size=1,custom_data={kards:'便携活塞'}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_bianxiehuosai kardCount
