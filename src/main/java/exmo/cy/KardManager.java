package exmo.cy;

import com.google.gson.*;
import com.google.gson.stream.JsonReader;

import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

import java.io.IOException;
import java.nio.file.*;
import java.util.*;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class KardManager {
    private static final Map<String, Kard> kardMap = new HashMap<>();
    private static final Map<Kard.KardType, List<Kard>> typeMap = new EnumMap<>(Kard.KardType.class);
    private static Path lastLoadedPath;
    private static long lastLoadTime;
    private static boolean isLoaded = false;

    public static void addKard(Kard kard) {
        kardMap.put(kard.id().toLowerCase(), kard);
        typeMap.computeIfAbsent(kard.kardType(), k -> new ArrayList<>()).add(kard);
    }

    public static void readKards() {
        readKards(false);
    }
    public static void exportKardList(Path exportPath) {
        if (!isLoaded) {
            System.out.println("卡牌未加载!");
            return;
        }

        try {
            List<String> lines = new ArrayList<>();
            lines.add("卡牌名称,卡牌类型,文件路径");
            kardMap.values().stream()
                    .sorted(Comparator.comparing(Kard::kardType).thenComparing(Kard::id))
                    .forEach(kard -> lines.add(String.format("\"%s\",%s,\"%s\"",
                            kard.id(), kard.kardType(), kard.path())));

            Files.write(exportPath, lines, StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING);
            System.out.println("成功导出 " + kardMap.size() + " 张卡牌到: " + exportPath);
        } catch (IOException e) {
            System.err.println("导出失败: " + e.getMessage());
        }
    }

    public static void readKards(boolean forceReload) {
        try {


            Path mainPath = Main.mainPath;
            if (!forceReload && isLoaded && mainPath.equals(lastLoadedPath)) {
                System.out.println("卡牌已加载，使用 'load force' 强制重新加载");
                return;
            }

            // 重置状态
            kardMap.clear();
            typeMap.clear();
            isLoaded = false;
            lastLoadedPath = mainPath;
            lastLoadTime = System.currentTimeMillis();

            int totalCount = 0;
            // 新的卡牌根目录：data/kards/function/game/paiku
            Path paikuRoot = mainPath.resolve("data").resolve("kards").resolve("function").resolve("game").resolve("paiku");

            if (!Files.exists(paikuRoot)) {
                System.err.println("错误: 找不到卡牌目录 " + paikuRoot);
                return;
            }

            // 遍历paiku目录下的所有子目录
            try (Stream<Path> dirStream = Files.list(paikuRoot)) {
                List<Path> subDirs = dirStream
                        .filter(Files::isDirectory)
                        .collect(Collectors.toList());

                for (Path subDir : subDirs) {
                    String dirName = subDir.getFileName().toString().toUpperCase();

                    // 尝试匹配卡牌类型
                    Kard.KardType type = Kard.KardType.UNKNOWN;
                    for (Kard.KardType t : Kard.KardType.values()) {
                        if (t.name().equalsIgnoreCase(dirName)) {
                            type = t;
                            break;
                        }
                    }

                    if (type == Kard.KardType.UNKNOWN) {
                        System.out.println("跳过未知卡牌类型目录: " + subDir);
                        continue;
                    }

                    int typeCount = loadKardsFromDirectory(subDir, type);
                    totalCount += typeCount;
                    System.out.printf("加载 %-8s 卡牌: %d 张%n", type.getChineseName(), typeCount);
                }
            } catch (IOException e) {
                System.err.println("遍历卡牌目录失败: " + paikuRoot);
                e.printStackTrace();
            }

            isLoaded = true;
            System.out.printf("\n成功加载 %d 种类型共 %d 张卡牌!%n", typeMap.size(), totalCount);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    private static int loadKardsFromDirectory(Path dirPath, Kard.KardType type) {
        if (!Files.exists(dirPath)) return 0;

        int count = 0;
        try (Stream<Path> stream = Files.walk(dirPath)) {
            count = (int) stream
                    .filter(path -> !Files.isDirectory(path))
                    .filter(path -> path.toString().endsWith(".mcfunction"))
                    .map(path -> {
                        try {
                            String content = new String(Files.readAllBytes(path), StandardCharsets.UTF_8);
                            return parseKardFromCommand(path, type, content);
                        } catch (Exception e) {
                            System.err.println("解析卡牌文件失败: " + path);
                            e.printStackTrace();
                            return null;
                        }
                    })
                    .filter(Objects::nonNull)
                    .peek(kard -> {
                        if (kard != null) {
                            KardManager.addKard(kard);
                        }
                    })
                    .count();
        } catch (IOException e) {
            System.err.println("加载目录错误: " + dirPath);
            e.printStackTrace();
        }
        return count;
    }
    private static String extractJsonFromCommand(String command) {
        // 查找命令中的第一个方括号开始位置
        int startIndex = command.indexOf('[');
        if (startIndex == -1) return null;

        // 使用栈结构处理嵌套括号
        Deque<Character> stack = new ArrayDeque<>();
        StringBuilder jsonBuilder = new StringBuilder();
        boolean inString = false;
        char quoteChar = '"';
        char lastChar = 0;

        for (int i = startIndex; i < command.length(); i++) {
            char c = command.charAt(i);

            // 处理字符串边界
            if ((c == '"' || c == '\'') && lastChar != '\\') {
                if (!inString) {
                    inString = true;
                    quoteChar = c;
                } else if (c == quoteChar) {
                    inString = false;
                }
            }

            // 处理括号匹配
            if (!inString) {
                if (c == '[' || c == '{') {
                    stack.push(c);
                } else if (c == ']' && !stack.isEmpty() && stack.peek() == '[') {
                    stack.pop();
                } else if (c == '}' && !stack.isEmpty() && stack.peek() == '{') {
                    stack.pop();
                }
            }

            jsonBuilder.append(c);
            lastChar = c;

            // 当栈为空且不在字符串中时结束
            if (stack.isEmpty() && !inString) {
                break;
            }
        }

        if (!stack.isEmpty() || inString) {
            System.err.println("警告: 提取的JSON可能不完整 - " + jsonBuilder);
        }

        String jsonPart = jsonBuilder.toString();

        // 更健壮的JSON修复
        return fixJsonFormat(jsonPart);
    }

    private static String fixJsonFormat(String jsonPart) {
        // 1. 替换所有单引号为双引号
        String fixed = jsonPart.replace("'", "\"");

        // 2. 给键添加双引号（使用更精确的正则）
        fixed = fixed.replaceAll("(\\s*)([a-zA-Z_][a-zA-Z0-9_]*)(\\s*):", "$1\"$2\"$3:");

        // 3. 修复布尔值和null值
        fixed = fixed.replace(":true", ":true")
                .replace(":false", ":false")
                .replace(":null", ":null");

        // 4. 移除尾部分数板命令
        if (fixed.contains("scoreboard")) {
            fixed = fixed.substring(0, fixed.indexOf("scoreboard"));
        }

        // 5. 处理可能的尾随逗号
        fixed = fixed.replaceAll(",\\s*([\\]\\}])", "$1");

        return fixed;
    }

    private static Kard parseKardFromCommand(Path path, Kard.KardType type, String command) {
        try {
            // 使用命令解析器
            Map<String, String> fields = KardCommandParser.parseCommand(command);

            // 提取基础信息
            String id = path.getFileName().toString().replace(".mcfunction", "");

            // 获取字段值
            String displayName = fields.getOrDefault("item_name", id);
            String description = fields.getOrDefault("lore", "");
            String kardEffect = fields.getOrDefault("kards", "");
            String tooltipStyle = fields.getOrDefault("tooltip_style", "");
            String tooltipDisplay = fields.getOrDefault("tooltip_display", "");

            return new Kard(id, type, path, displayName, description, kardEffect, tooltipStyle, tooltipDisplay);
        } catch (Exception e) {
            System.err.println("解析卡牌失败: " + path);
            System.err.println("命令: " + command);
            e.printStackTrace();
            return null;
        }
    }
    private static String parseTextComponent(JsonArray components) {
        if (components == null) return "";
        StringBuilder sb = new StringBuilder();
        for (JsonElement element : components) {
            if (element.isJsonObject()) {
                JsonObject obj = element.getAsJsonObject();
                if (obj.has("text")) {
                    sb.append(obj.get("text").getAsString());
                }
            }
        }
        return sb.toString().trim();
    }

    private static String parseLore(JsonArray lore) {
        if (lore == null) return "";
        StringBuilder sb = new StringBuilder();
        for (JsonElement element : lore) {
            if (element.isJsonArray()) {
                // 嵌套的描述行
                for (JsonElement subElement : element.getAsJsonArray()) {
                    if (subElement.isJsonObject()) {
                        JsonObject obj = subElement.getAsJsonObject();
                        if (obj.has("text")) {
                            sb.append(obj.get("text").getAsString());
                        }
                    }
                }
                sb.append("\n");
            } else if (element.isJsonObject()) {
                JsonObject obj = element.getAsJsonObject();
                if (obj.has("text")) {
                    sb.append(obj.get("text").getAsString()).append("\n");
                }
            }
        }
        return sb.toString().trim();
    }
    // 辅助方法
    private static String formatFileSize(Path path) {
        try {
            long bytes = Files.size(path);
            if (bytes < 1024) return bytes + " B";
            int exp = (int) (Math.log(bytes) / Math.log(1024));
            char unit = "KMGTPE".charAt(exp-1);
            return String.format("%.1f %sB", bytes / Math.pow(1024, exp), unit);
        } catch (IOException e) {
            return "未知大小";
        }
    }
    public static void showKards() {
        showKards(null, false);
    }

    public static void showKards(String filter, boolean showDetails) {
        if (!isLoaded) {
            System.out.println("卡牌未加载! 请先执行加载命令");
            return;
        }

        System.out.println("\n=== 卡牌列表 ===");
        System.out.printf("路径: %s | 加载时间: %tF %<tT%n", lastLoadedPath, lastLoadTime);

        Predicate<Kard> filterPredicate = kard ->
                filter == null ||
                        kard.id().toLowerCase().contains(filter.toLowerCase()) ||
                        kard.kardType().name().toLowerCase().contains(filter.toLowerCase());

        typeMap.entrySet().stream()
                .sorted(Map.Entry.comparingByKey())
                .forEach(entry -> {
                    Kard.KardType type = entry.getKey();
                    List<Kard> kards = entry.getValue().stream()
                            .filter(filterPredicate)
                            .sorted(Comparator.comparing(Kard::id))
                            .collect(Collectors.toList());

                    if (!kards.isEmpty()) {
                        System.out.printf("\n[%-8s] (%d 张)%n", type, kards.size());
                        for (Kard kard : kards) {
                            if (showDetails) {
                                System.out.printf("  %-20s | 路径: %s%n",
                                        kard.id(), kard.path().getFileName());
                            } else {
                                System.out.printf("  %s%n", kard.id());
                            }
                        }
                    }
                });

        System.out.println("\n总计: " + kardMap.size() + " 张卡牌");
    }

    // 卡牌搜索功能
    public static void  searchKard(String name) {
        if (!isLoaded) {
            System.out.println("卡牌未加载!");
            return;
        }

        Kard kard = kardMap.get(name.toLowerCase());
        if (kard != null) {
            System.out.println("\n=== 卡牌详情 ===");
            System.out.println("ID: " + kard.id());
            System.out.println("显示名称: " + kard.displayName());
            System.out.println("类型: " + kard.kardType().getChineseName());
            System.out.println("效果: " + kard.kardEffect());
            System.out.println("描述: ");
            System.out.println("  " + kard.description().replace("\n", "\n  "));
            System.out.println("提示框样式: " + kard.tooltipStyle());
            System.out.println("路径: " + kard.path());
        } else {
            System.out.println("未找到卡牌: " + name);
            // 尝试模糊搜索
            List<Kard> similar = kardMap.values().stream()
                    .filter(k -> k.id().toLowerCase().contains(name.toLowerCase()))
                    .limit(5)
                    .collect(Collectors.toList());

            if (!similar.isEmpty()) {
                System.out.println("\n可能匹配的卡牌:");
                similar.forEach(k -> System.out.println("  " + k.id()));
            }
        }
    }

    // 统计功能
    public static void showStatistics() {
        if (!isLoaded) {
            System.out.println("卡牌未加载!");
            return;
        }

        System.out.println("\n=== 卡牌统计 ===");
        typeMap.entrySet().stream()
                .sorted(Comparator.comparingInt(entry -> -entry.getValue().size()))
                .forEach(entry ->
                        System.out.printf("%-8s: %2d 张 | %s%n",
                                entry.getKey(),
                                entry.getValue().size(),
                                getProgressBar(entry.getValue().size(), kardMap.size()))
                );

        System.out.printf("\n总计: %d 张卡牌%n", kardMap.size());
    }
    private static String getProgressBar(int count, int total) {
        int width = 20;
        int filled = (int) Math.round(width * (double) count / total);
        return "[" + "=".repeat(filled) + " ".repeat(width - filled) + "]";
    }

    public static boolean isLoaded() {
        return isLoaded;
    }

    public static int getTotalKards() {
        return kardMap.size();
    }

    public static List<Kard> getKardsByType(Kard.KardType type) {
        return typeMap.getOrDefault(type, Collections.emptyList());
    }
}
