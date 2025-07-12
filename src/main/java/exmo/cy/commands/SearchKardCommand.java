package exmo.cy.commands;

import exmo.cy.Command;
import exmo.cy.KardManager;

public class SearchKardCommand implements Command {
    @Override
    public void execute(String[] args) {

        KardManager.searchKard(args[0]);
    }

    @Override
    public String getDescription() {
        return "搜索卡牌";
    }
}