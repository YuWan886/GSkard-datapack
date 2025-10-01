function kards:game/yongpaiku/use_general/kard_general



give @s minecraft:lightning_rod[custom_name={italic:false,translate: "json.kards.dialog.paiku.zhuangbei.main.1206", fallback: "鞋钉",color:"gray"},lore=[[{translate: "kards.function.game.yongpaiku.zhuangbei.bianxiehuosai.1", fallback: "放在背包最右侧一列佩戴 同个配件只生效一个",color:"gray",italic:false}],[{translate: "json.kards.dialog.first_join.1.71", fallback: "",color:"gray",italic:false}],[{translate: "kards.function.game.yongpaiku.zhuangbei.bianxiehuosai.2", fallback: "佩戴时：",color:"gray",italic:false}],[{translate: "kards.function.game.yongpaiku.zhuangbei.xieding.1", fallback: "+0.2 击退抗性",color:"blue",italic:false}]],max_stack_size=1,custom_data={kards:'鞋钉'}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xieding kardCount
