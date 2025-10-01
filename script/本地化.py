import os
import json
import re
import asyncio
import platform


async def traverse_and_replace_texts(
    directory, translations, number, output_file_name="zh_cn.json"
):
    """
    遍历JSON文件，替换text为translate和fallback，并生成翻译文件
    """
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".json"):
                file_path = os.path.join(root, file)

                # 计算相对路径
                rel_path = os.path.relpath(file_path, directory)
                if "data/" in rel_path:
                    rel_path = rel_path[rel_path.index("data/") + len("data/") :]
                rel_path = rel_path.replace("data/", "")
                key_prefix = rel_path.replace(os.sep, ".")
                if key_prefix.endswith(".json"):
                    key_prefix = key_prefix[:-5]

                # 格式化翻译键前缀：将data替换为json
                key_prefix = format_json_translation_key(key_prefix)

                # 读取和处理JSON文件
                try:
                    with open(file_path, "r", encoding="utf-8") as f:
                        data = json.load(f)
                        print(f"正在处理JSON文件: {file_path}")

                        # 替换文本并检查fallback更新
                        replace_text(data, translations, number, key_prefix)

                    # 写回修改后的JSON文件
                    with open(file_path, "w", encoding="utf-8") as f:
                        json.dump(data, f, ensure_ascii=False, indent=4)

                except json.JSONDecodeError as e:
                    print(f"JSON文件 {file_path} 解码错误: {e}")
                    continue
                except Exception as e:
                    print(f"处理JSON文件 {file_path} 时出错: {e}")
                    continue

    # 保存翻译结果到zh_cn.json
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_file_path = os.path.join(script_dir, output_file_name)

    with open(output_file_path, "w", encoding="utf-8") as out_file:
        json.dump(translations, out_file, ensure_ascii=False, indent=4)

    print(f"JSON翻译结果已保存至: {output_file_path}")


def format_translation_key(key):
    """
    格式化翻译键，只保留function前一个部分
    "xxx.xxx.xxx.function.xxx" => "xxx.function.xxx"
    """
    parts = key.split(".")
    if "function" in parts:
        function_index = parts.index("function")
        if function_index > 0:
            # 保留function前一个部分和function及其后面的部分
            return ".".join([parts[function_index - 1]] + parts[function_index:])
    return key


def format_json_translation_key(key):
    """
    格式化JSON文件的翻译键，将data替换为json
    "data.kards.xxx" => "json.kards.xxx"
    """
    if key.startswith("data."):
        return key.replace("data.", "json.", 1)
    return key


def replace_text(data, translations, number, key_prefix):
    """
    递归替换JSON中的text字段为包含translate和fallback的对象
    并检查fallback是否与翻译文件中的值一致
    """
    if isinstance(data, dict):
        # 检查是否有text键且值为字符串
        if "text" in data and isinstance(data["text"], str):
            original_text = data["text"]

            # 查找是否已有相同文本的翻译键
            existing_key = None
            for trans_key, trans_value in translations.items():
                if trans_value == original_text:
                    existing_key = trans_key
                    break

            if existing_key:
                # 使用已存在的翻译键
                translation_key = existing_key
                # 检查fallback是否与翻译文件中的值一致
                if translations[translation_key] != original_text:
                    print(
                        f"更新翻译键 {translation_key}: '{translations[translation_key]}' -> '{original_text}'"
                    )
                    translations[translation_key] = original_text
            else:
                # 创建新的翻译键
                translation_key = f"{key_prefix}.{number[0]}"
                # 格式化最终的翻译键（先应用JSON格式化，再应用function格式化）
                translation_key = format_json_translation_key(translation_key)
                translation_key = format_translation_key(translation_key)
                translations[translation_key] = original_text
                number[0] += 1

            # 删除text键，添加translate和fallback键，保留其他键
            del data["text"]
            data["translate"] = translation_key
            data["fallback"] = original_text
        
        # 递归处理所有字典键值
        for key in list(data.keys()):
            data[key] = replace_text(data[key], translations, number, key_prefix)
            
        return data
        
    elif isinstance(data, list):
        # 递归处理数组中的每个元素
        for i, item in enumerate(data):
            data[i] = replace_text(item, translations, number, key_prefix)
        return data
        
    else:
        return data
    """
    递归替换JSON中的text字段为包含translate和fallback的对象
    并检查fallback是否与翻译文件中的值一致
    """
    if isinstance(data, dict):
        # 检查是否有text键且值为字符串
        if "text" in data and isinstance(data["text"], str):
            original_text = data["text"]

            # 查找是否已有相同文本的翻译键
            existing_key = None
            for trans_key, trans_value in translations.items():
                if trans_value == original_text:
                    existing_key = trans_key
                    break

            if existing_key:
                # 使用已存在的翻译键
                translation_key = existing_key
                # 检查fallback是否与翻译文件中的值一致
                if translations[translation_key] != original_text:
                    print(
                        f"更新翻译键 {translation_key}: '{translations[translation_key]}' -> '{original_text}'"
                    )
                    translations[translation_key] = original_text
            else:
                # 创建新的翻译键
                translation_key = f"{key_prefix}.{number[0]}"
                # 格式化最终的翻译键（先应用JSON格式化，再应用function格式化）
                translation_key = format_json_translation_key(translation_key)
                translation_key = format_translation_key(translation_key)
                translations[translation_key] = original_text
                number[0] += 1

            # 删除text键，添加translate和fallback键，保留其他键
            del data["text"]
            data["translate"] = translation_key
            data["fallback"] = original_text
        else:
            # 递归处理其他键
            for key in list(data.keys()):
                data[key] = replace_text(data[key], translations, number, key_prefix)
        return data
    elif isinstance(data, list):
        return [replace_text(item, translations, number, key_prefix) for item in data]
    else:
        return data


async def localize_mcfunction(directory, translations, output_file_name="zh_cn.json"):
    """
    处理.mcfunction文件，替换text为translate和fallback
    """
    # 修改正则表达式以匹配可能的fallback格式
    text_pattern = re.compile(r'(text:\s*)([\'"])([^\2]*?)\2')
    fallback_pattern = re.compile(r'fallback:\s*([\'"])([^\1]*?)\1')
    namespace_counts = {}

    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".mcfunction"):
                file_path = os.path.join(root, file)
                print(f"正在处理mcfunction文件: {file_path}")

                relative_path = os.path.relpath(file_path, directory)
                data_position = relative_path.find("data.")
                if data_position != -1:
                    relative_path = relative_path[data_position + len("data.") :]

                namespace_prefix = relative_path.replace(os.path.sep, ".").replace(
                    ".mcfunction", ""
                )
                # 格式化命名空间前缀（只应用function格式化，不应用JSON格式化）
                namespace_prefix = format_translation_key(namespace_prefix)

                if namespace_prefix not in namespace_counts:
                    namespace_counts[namespace_prefix] = 1

                try:
                    with open(file_path, "r", encoding="utf-8") as f:
                        content = f.read()

                    # 首先检查是否已经是translate格式
                    translate_matches = list(
                        re.finditer(r'translate:\s*([\'"])([^\1]*?)\1', content)
                    )
                    fallback_matches = list(fallback_pattern.finditer(content))

                    # 处理已存在的translate格式，检查fallback是否更新
                    for i, (translate_match, fallback_match) in enumerate(
                        zip(translate_matches, fallback_matches)
                    ):
                        translation_key = translate_match.group(2)
                        current_fallback = fallback_match.group(2)

                        if translation_key in translations:
                            if translations[translation_key] != current_fallback:
                                print(
                                    f"更新mcfunction翻译键 {translation_key}: '{translations[translation_key]}' -> '{current_fallback}'"
                                )
                                translations[translation_key] = current_fallback

                    # 处理普通的text格式
                    matches = list(text_pattern.finditer(content))
                    if not matches:
                        continue

                    new_content = content
                    offset = 0

                    for match in matches:
                        original_text = match.group(3)
                        quote_type = match.group(2)

                        if "$" in original_text:
                            continue

                        # 查找是否已有相同文本的翻译键
                        existing_key = None
                        for trans_key, trans_value in translations.items():
                            if trans_value == original_text:
                                existing_key = trans_key
                                break

                        if existing_key:
                            # 使用已存在的翻译键
                            translation_key = existing_key
                            # 检查fallback是否与翻译文件中的值一致
                            if translations[translation_key] != original_text:
                                print(
                                    f"更新mcfunction翻译键 {translation_key}: '{translations[translation_key]}' -> '{original_text}'"
                                )
                                translations[translation_key] = original_text
                        else:
                            # 创建新的翻译键
                            translation_key = f"{namespace_prefix}.{namespace_counts[namespace_prefix]}"
                            # 格式化最终的翻译键（只应用function格式化）
                            translation_key = format_translation_key(translation_key)
                            translations[translation_key] = original_text
                            namespace_counts[namespace_prefix] += 1

                        # 构建替换文本
                        replacement = f"translate: {quote_type}{translation_key}{quote_type}, fallback: {quote_type}{original_text}{quote_type}"

                        # 计算偏移量并替换
                        start = match.start() + offset
                        end = match.end() + offset
                        new_content = (
                            new_content[:start] + replacement + new_content[end:]
                        )
                        offset += len(replacement) - (end - start)

                    with open(file_path, "w", encoding="utf-8") as f:
                        f.write(new_content)

                except Exception as e:
                    print(f"处理mcfunction文件 {file_path} 时出错: {e}")

    # 保存翻译结果到zh_cn.json
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_file_path = os.path.join(script_dir, output_file_name)

    if translations:
        with open(output_file_path, "w", encoding="utf-8") as out_file:
            json.dump(translations, out_file, ensure_ascii=False, indent=4)

        print(f"mcfunction翻译结果已保存至: {output_file_path}")
    else:
        print("未找到mcfunction翻译键。")


async def main():
    """
    主函数，协调JSON和mcfunction处理
    """
    directory = input("请输入要遍历的目录路径：")
    translations = {}
    number = [1]

    # 首先检查是否已存在翻译文件，如果存在则加载
    script_dir = os.path.dirname(os.path.abspath(__file__))
    zh_cn_file_path = os.path.join(script_dir, "zh_cn.json")

    if os.path.exists(zh_cn_file_path):
        try:
            with open(zh_cn_file_path, "r", encoding="utf-8") as f:
                translations = json.load(f)
            print("已加载现有的翻译文件")
        except Exception as e:
            print(f"加载现有翻译文件时出错: {e}")
            translations = {}
    else:
        print("未找到现有翻译文件，将创建新文件")

    # 运行JSON和mcfunction处理
    await traverse_and_replace_texts(directory, translations, number)
    await localize_mcfunction(directory, translations)


if __name__ == "__main__":
    if platform.system() == "Emscripten":
        asyncio.ensure_future(main())
    else:
        asyncio.run(main())