function kards:game/yongpaiku/use_general/kard_general
    give @s minecraft:turtle_scute[custom_name={italic:false,text: "海龟鳞甲",color:"gold"},lore=[[{text: "放在背包最右侧一列佩戴 同个配件只生效一个",color:"gray",italic:false}],[{text: "",color:"gray",italic:false}],[{text: "佩戴时：",color:"gray",italic:false}],[{text: "+5 护甲值",color:"blue",italic:false}],[{text: "+1 盔甲韧性",color:"blue",italic:false}]],max_stack_size=1,custom_data={kards:'海龟鳞甲'}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_template_shipin kardCount