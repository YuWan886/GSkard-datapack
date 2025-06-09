# 定义基准点坐标
base_x, base_y, base_z = 286, -11, 55  # 位于2b(286 -11 45)和2r(286 -11 65)中间

def gen_markers(center_x, center_y, center_z):
    # 蓝队偏移量（完全匹配101.mcfunction）
    blue_offsets = [
        ("b_dw", -8, 0, 2),   # 278 -11 57
        ("b_ttdw", 30, 0, 2),  # 316 -11 57
        ("b_tuteng", 32, 0, 19),  # 318 -11 74
        ("1r", 9, 0, 3),  # 295 -11 58
        ("2r", 0, 0, 10),  # 286 -11 65
        ("3r", 9, 0, 10),  # 295 -11 65
        ("4r", 18, 0, 10),  # 304 -11 65
        ("5r", -7, 0, 19),  # 279 -11 74
        ("6r", 0, 0, 19),  # 286 -11 74
        ("7r", 9, 0, 19),  # 295 -11 74
        ("8r", 18, 0, 19),  # 304 -11 74
        ("9r", 25, 0, 19),  # 311 -11 74
        ("10r", 0, 0, 28),  # 286 -11 83
        ("11r", 9, 0, 28),  # 295 -11 83
        ("12r", 18, 0, 28),  # 304 -11 83
        ("13r", 9, 0, 35)  # 295 -11 90
    ]

    # 红队偏移量（完全匹配101.mcfunction）
    red_offsets = [
        ("r_dw", -8, 0, -36),  # 278 -11 19
        ("r_ttdw", 30, 0, -36),  # 316 -11 19
        ("r_tuteng", 32, 0, -19),  # 318 -11 36
        ("1b", 9, 0, -3),  # 295 -11 52
        ("2b", 0, 0, -10),  # 286 -11 45
        ("3b", 9, 0, -10),  # 295 -11 45
        ("4b", 18, 0, -10),  # 304 -11 45
        ("5b", -7, 0, -19),  # 279 -11 36
        ("6b", 0, 0, -19),  # 286 -11 36
        ("7b", 9, 0, -19),  # 295 -11 36
        ("8b", 18, 0, -19),  # 304 -11 36
        ("9b", 25, 0, -19),  # 311 -11 36
        ("10b", 0, 0, -28),  # 286 -11 27
        ("11b", 9, 0, -28),  # 295 -11 27
        ("12b", 18, 0, -28),  # 304 -11 27
        ("13b", 9, 0, -35)  # 295 -11 20
    ]

    lines = []
    # 蓝队
    for name, dx, dy, dz in blue_offsets:
        x, y, z = center_x + dx, center_y + dy, center_z + dz
        lines.append(f'execute if score {name} p matches 0 run summon minecraft:marker {x} {y} {z} {{Tags:["{name}"]}}')

    # 红队
    for name, dx, dy, dz in red_offsets:
        x, y, z = center_x + dx, center_y + dy, center_z + dz
        lines.append(f'execute if score {name} p matches 0 run summon minecraft:marker {x} {y} {z} {{Tags:["{name}"]}}')

    return "\n".join(lines)

def main():
    try:
        user_input = input("请输入中心点坐标（如 -13 -10 22）：").strip().split()
        if len(user_input) != 3:
            print("输入格式错误，应为：x y z")
            return
        center_x, center_y, center_z = map(int, user_input)
    except Exception:
        print("坐标格式错误，应为 x y z")
        return

    filepath = r"c:\Users\Hart_GS\Documents\GitHub\GSkard-datapack\output.txt"
    content = gen_markers(center_x, center_y, center_z)
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(content)
    print(f"已覆盖 {filepath}")

if __name__ == "__main__":
    main()