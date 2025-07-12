package exmo.cy.commands;


import exmo.cy.Command;
import exmo.cy.CommandManager;

public class HelpCommand implements Command {
    private final CommandManager manager;

    public HelpCommand(CommandManager manager) {
        this.manager = manager;
    }

    @Override
    public void execute(String[] args) {
        manager.showHelp();
    }

    @Override
    public String getDescription() {
        return "显示帮助信息";
    }
}