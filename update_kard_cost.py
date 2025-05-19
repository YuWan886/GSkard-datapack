import os
import re

# 配置根目录
ROOT = r'GSkard-Datapack\data\kards\function\game\paiku'

def update_cost(card_name, new_cost):
    cost_str = f"{new_cost}K" if not str(new_cost).upper().endswith('K') else str(new_cost).upper()
    filename = card_name.lower() + '.mcfunction'
    found = False
    updated = False
    for root, dirs, files in os.walk(ROOT):
        for file in files:
            if file != filename:
                continue
            path = os.path.join(root, file)
            print(f"匹配到文件: {path}")  # 调试输出
            with open(path, encoding='utf-8') as f:
                content = f.read()
            try:
                new_cost_num = int(re.sub(r'[^0-9]', '', str(new_cost)))
            except Exception:
                print(f"费用格式错误: {new_cost}")
                continue
            already_cost = False
            if re.search(rf'(scoreboard players set\s+#kard_[\w]+\s+kardCount\s+){new_cost_num}\b', content) and \
               re.search(rf'item_name=\[\{{text: "{cost_str}",', content):
                already_cost = True
            new_content = re.sub(
                r'(scoreboard players set\s+#kard_[\w]+\s+kardCount\s+)\d+',
                lambda m: f"{m.group(1)}{new_cost_num}", content
            )
            new_content = re.sub(
                r'item_name=\[\{text: "\d+K",',
                f'item_name=[{{text: "{cost_str}",', new_content
            )
            found = True
            if new_content != content:
                with open(path, 'w', encoding='utf-8') as f:
                    f.write(new_content)
                print(f'已将{card_name}修改为{cost_str}费')
                updated = True
            else:
                if already_cost:
                    print(f'费用已是{cost_str}费')
                else:
                    print(f'已将{card_name}修改为{cost_str}费')
            break
    if not found:
        # 返回未找到和费用
        return ('not_found', new_cost)

def batch_update_cost(batch_input):
    # 支持多行输入，每行一个“牌名 费用”
    lines = [line.strip() for line in batch_input.split('\n') if line.strip()]
    not_found_list = []
    not_found_costs = []
    for line in lines:
        parts = line.split()
        if len(parts) >= 2:
            card, cost = parts[0], ' '.join(parts[1:])
            cost = cost.upper().replace('Ｋ', 'K')
            cost_num = re.sub(r'\D', '', cost)
            cost_final = cost if cost.endswith('K') else (cost_num + 'K')
            result = update_cost(card, cost_final)
            if isinstance(result, tuple) and result[0] == 'not_found':
                not_found_list.append(card)
                not_found_costs.append(result[1])
        else:
            print(f"输入格式错误，应为：牌名 费用（收到：{line}）")
    if not_found_list:
        print("找不到对应牌：" + "、".join(
            f"{name}({cost})" for name, cost in zip(not_found_list, not_found_costs)
        ))
    # 继续输入
    print('请输入牌名和费用，每行一个（如 lieyanren 3K），输入空行结束：')
    batch_lines = []
    while True:
        line = input()
        if not line.strip():
            break
        batch_lines.append(line)
    if batch_lines:
        batch_input = '\n'.join(batch_lines)
        batch_update_cost(batch_input)

if __name__ == '__main__':
    # 支持多行输入
    print('请输入牌名和费用，每行一个（如 lieyanren 3K），输入空行结束：')
    batch_lines = []
    while True:
        line = input()
        if not line.strip():
            break
        batch_lines.append(line)
    if batch_lines:
        batch_input = '\n'.join(batch_lines)
        batch_update_cost(batch_input)
