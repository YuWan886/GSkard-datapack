import os
import re

def replace_kardcount_in_file(filepath):
    filename = os.path.splitext(os.path.basename(filepath))[0]
    # 修正正则表达式，去掉多余的转义符
    pattern = re.compile(r'scoreboard players remove @s kardCount \d+')
    replacement = f'scoreboard players operation @s kardCount -= #kard_{filename} kardCount'
    changed = False

    with open(filepath, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    new_lines = []
    for line in lines:
        if pattern.search(line):
            line = pattern.sub(replacement, line)
            changed = True
        new_lines.append(line)

    if changed:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.writelines(new_lines)
        print(f"Replaced in: {filepath}")

def walk_and_replace(root_dir):
    for dirpath, _, filenames in os.walk(root_dir):
        for filename in filenames:
            if filename.endswith('.mcfunction'):
                filepath = os.path.join(dirpath, filename)
                replace_kardcount_in_file(filepath)

if __name__ == "__main__":
    # 修改为你的目标目录
    root_dir = r"C:\Users\Hart_GS\Documents\GitHub\GSkard-datapack\GSkard-Datapack\data\kards\function\game\yongpaiku"
    walk_and_replace(root_dir)
