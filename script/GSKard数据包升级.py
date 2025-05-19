import os
import re

base_dir = r"C:\\Users\\Hart_GS\\Documents\\GitHub\\GSkard-datapack\\GSkard-Datapack\\data\\kards\\function\\game\\yongpaiku"


for root, dirs, files in os.walk(base_dir):
    for file in files:
        if file.endswith('.mcfunction'):
            file_path = os.path.join(root, file)
            card_name = os.path.splitext(file)[0]  # 去掉扩展名
            # 去掉前缀（如有），假设前缀为"前缀_"格式
            if "_" in card_name:
                card_name = card_name.split("_", 1)[1]
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            # 查找item_name后的第一个数字
            match = re.search(r'item_name.*?(\d+)', content)
            if match:
                k_value = match.group(1)
                append_line = f"scoreboard players set #kard_{card_name} kardCount {k_value} {card_name}\n"
                if append_line.strip() not in content:
                    with open(file_path, 'a', encoding='utf-8') as f:
                        f.write('\n' + append_line)