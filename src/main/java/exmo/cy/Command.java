package exmo.cy;

public interface Command {
    void execute(String[] args);
    String getDescription();
}