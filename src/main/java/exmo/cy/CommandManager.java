package exmo.cy;

import exmo.cy.commands.ReadKardsCommand;
import exmo.cy.commands.SetPathCommand;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CommandManager {
    private final Map<String, Command> commands = new HashMap<>();
    private final List<String> commandHistory = new ArrayList<>();
    private static final int HISTORY_LIMIT = 50;

    // 注册命令
    public void registerCommand(String name, Command command) {
        commands.put(name.toLowerCase(), command);
    }

    // 执行命令
    public void executeCommand(String input) {
        String[] tokens = input.trim().split("\\s+", 2);
        String commandName = tokens[0].toLowerCase();
        String[] args = tokens.length > 1 ? tokens[1].split("\\s+") : new String[0];

        if ("history".equals(commandName)) {
            showHistory();
            return;
        }

        if ("!".equals(commandName) && args.length > 0) {
            executeFromHistory(args[0]);
            return;
        }

        Command command = commands.get(commandName);
        if (command != null) {
            command.execute(args);
            addToHistory(input);
        } else {
            System.out.println("未知命令: " + commandName);
            System.out.println("输入 'help' 查看可用命令");
        }
    }
    private void executeFromHistory(String indexStr) {
        try {
            int index = Integer.parseInt(indexStr);
            if (index >= 0 && index < commandHistory.size()) {
                executeCommand(commandHistory.get(index));
            } else {
                System.out.println("历史记录索引无效: " + index);
            }
        } catch (NumberFormatException e) {
            System.out.println("无效的历史记录格式，使用: !<数字>");
        }
    }



private void addToHistory(String command) {
        if (commandHistory.size() >= HISTORY_LIMIT) {
            commandHistory.remove(0);
        }
        commandHistory.add(command);
    }

    private void showHistory() {
        System.out.println("\n=== 命令历史 ===");
        for (int i = 0; i < commandHistory.size(); i++) {
            System.out.printf("%3d: %s%n", i, commandHistory.get(i));
        }
    }
    public void showHelp() {
        System.out.println("\n=== 可用命令列表 ===");
        System.out.printf("%-10s %-15s %s%n", "命令", "参数", "描述");
        System.out.println("----------------------------------");

        commands.forEach((name, cmd) -> {
            String params = "";
            if (cmd instanceof ReadKardsCommand) params = "[force]";
            else if (cmd instanceof SetPathCommand) params = "<新路径>";

            System.out.printf("%-10s %-15s %s%n", name, params, cmd.getDescription());
        });

        System.out.println("\n附加命令:");
        System.out.printf("%-10s %-15s %s%n", "history", "", "查看命令历史");
        System.out.printf("%-10s %-15s %s%n", "!<num>", "", "执行历史记录中的命令");
        System.out.println("----------------------------------");
    }
}
