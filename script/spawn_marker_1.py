# 生成红队盔甲架指令
def gen_red_team(r_dw, r_ttdw, r_tuteng):
    x0, y0, z0 = r_dw
    xt, yt, zt = r_ttdw
    xu, yu, zu = r_tuteng

    # 1b~3b 在一条线上，步长为 d1
    d1 = (xt - x0) // 2 if xt != x0 else (zt - z0) // 2
    coords = []
    for i in range(3):
        x = x0 + d1 * i if xt != x0 else x0
        z = z0 + d1 * i if xt == x0 else z0
        coords.append((x, y0, z))

    # 4b、5b~9b、10b~13b 可根据实际规律调整
    # 这里只做简单示例，具体规律需根据你的实际数据调整
    # 你可以用类似的方式推算其它点

    # 输出指令
    print(f'execute if score r_dw p matches 0 run summon minecraft:armor_stand {x0} {y0} {z0} {{Tags:["r_dw"]}}')
    print(f'execute if score r_ttdw p matches 0 run summon minecraft:armor_stand {xt} {yt} {zt} {{Tags:["r_ttdw"]}}')
    print(f'execute if score r_tuteng p matches 0 run summon minecraft:armor_stand {xu} {yu} {zu} {{Tags:["r_tuteng"]}}')
    for idx, (x, y, z) in enumerate(coords, 1):
        print(f'execute if score {idx}b p matches 0 run summon minecraft:armor_stand {x} {y} {z} {{Tags:["{idx}b"]}}')

def gen_pattern1(center_coord):
    # 支持不同中心点，所有点相对中心点(-13, y, 33)的偏移与1.mcfunction一致
    cx, y0, cz = center_coord

    # 偏移量定义（以-13, y, 33为中心点）
    # 红队
    r_dw_offset = (-12, 2)
    r_ttdw_offset = (14, 2)
    r_tuteng_offset = (16, 14)
    r_coords_offset = [
        (-9, 5),   # 1b
        (0, 5),    # 2b
        (9, 5),    # 3b
        (0, 9),    # 4b
        (-9, 14),  # 5b
        (-5, 14),  # 6b
        (0, 14),   # 7b
        (5, 14),   # 8b
        (9, 14),   # 9b
        (0, 19),   # 10b
        (-9, 23),  # 11b
        (0, 23),   # 12b
        (9, 23),   # 13b
    ]
    # 蓝队
    b_dw_offset = (-12, -26)
    b_ttdw_offset = (14, -26)
    b_tuteng_offset = (16, -14)
    b_coords_offset = [
        (9, -5),    # 1r
        (0, -5),    # 2r
        (-9, -5),   # 3r
        (0, -9),    # 4r
        (9, -14),   # 5r
        (5, -14),   # 6r
        (0, -14),   # 7r
        (-5, -14),  # 8r
        (-9, -14),  # 9r
        (0, -19),   # 10r
        (9, -23),   # 11r
        (0, -23),   # 12r
        (-9, -23),  # 13r
    ]

    # 红队
    r_dw = (cx + r_dw_offset[0], y0, cz + r_dw_offset[1])
    r_ttdw = (cx + r_ttdw_offset[0], y0, cz + r_ttdw_offset[1])
    r_tuteng = (cx + r_tuteng_offset[0], y0, cz + r_tuteng_offset[1])
    r_coords = [(cx + dx, y0, cz + dz) for dx, dz in r_coords_offset]

    # 蓝队
    b_dw = (cx + b_dw_offset[0], y0, cz + b_dw_offset[1])
    b_ttdw = (cx + b_ttdw_offset[0], y0, cz + b_ttdw_offset[1])
    b_tuteng = (cx + b_tuteng_offset[0], y0, cz + b_tuteng_offset[1])
    b_coords = [(cx + dx, y0, cz + dz) for dx, dz in b_coords_offset]

    lines = []
    # 蓝队
    lines.append(f'execute if score b_dw p matches 0 run summon minecraft:marker {b_dw[0]} {b_dw[1]} {b_dw[2]} {{Tags:["b_dw"]}}')
    lines.append(f'execute if score b_ttdw p matches 0 run summon minecraft:marker {b_ttdw[0]} {b_ttdw[1]} {b_ttdw[2]} {{Tags:["b_ttdw"]}}')
    lines.append(f'execute if score b_tuteng p matches 0 run summon minecraft:marker {b_tuteng[0]} {b_tuteng[1]} {b_tuteng[2]} {{Tags:["b_tuteng"]}}')
    for idx, (x, y, z) in enumerate(b_coords, 1):
        lines.append(f'execute if score {idx}r p matches 0 run summon minecraft:marker {x} {y} {z} {{Tags:["{idx}r"]}}')
    # 红队
    lines.append(f'execute if score r_dw p matches 0 run summon minecraft:marker {r_dw[0]} {r_dw[1]} {r_dw[2]} {{Tags:["r_dw"]}}')
    lines.append(f'execute if score r_ttdw p matches 0 run summon minecraft:marker {r_ttdw[0]} {r_ttdw[1]} {r_ttdw[2]} {{Tags:["r_ttdw"]}}')
    lines.append(f'execute if score r_tuteng p matches 0 run summon minecraft:marker {r_tuteng[0]} {r_tuteng[1]} {r_tuteng[2]} {{Tags:["r_tuteng"]}}')
    for idx, (x, y, z) in enumerate(r_coords, 1):
        lines.append(f'execute if score {idx}b p matches 0 run summon minecraft:marker {x} {y} {z} {{Tags:["{idx}b"]}}')
    return "\n".join(lines)

def main():
    user_input = input("请输入中心点坐标（如 -13 -10 22）：").strip().split()
    if len(user_input) != 3:
        print("输入格式错误，应为：x y z")
        return
    try:
        coord = tuple(map(int, user_input))
    except Exception:
        print("坐标格式错误，应为 x y z")
        return
    filepath = r"c:\Users\Hart_GS\Documents\GitHub\GSkard-datapack\output.txt"
    content = gen_pattern1(coord)
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(content)
    print(f"已覆盖 {filepath}")

if __name__ == "__main__":
    main()