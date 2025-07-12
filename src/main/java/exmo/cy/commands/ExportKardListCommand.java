package exmo.cy.commands;

import exmo.cy.Command;
import exmo.cy.KardManager;
import exmo.cy.Main;

import java.nio.file.Path;

public class ExportKardListCommand implements Command {
    @Override
    public void execute(String[] args) {

        if (args.length < 1) KardManager.exportKardList(Main.mainPath);
        else KardManager.exportKardList(Path.of(args[0]));
    }

    @Override
    public String getDescription() {
        return "导出卡牌";
    }
}