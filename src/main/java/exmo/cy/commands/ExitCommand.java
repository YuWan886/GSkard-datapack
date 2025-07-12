package exmo.cy.commands;

import exmo.cy.Command;

public class ExitCommand implements Command {
    @Override
    public void execute(String[] args) {
        System.out.println("正在退出程序...");
        System.exit(0);
    }

    @Override
    public String getDescription() {
        return "退出程序";
    }
}