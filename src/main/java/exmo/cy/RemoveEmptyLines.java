package exmo.cy;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class RemoveEmptyLines {
    public static void removeEmptyLines(Path rootPath, String  extension) throws IOException {
//        args = new String[]{"G:\\MC\\GSkard-datapack", ".mcfunction"};
//        if (args.length < 2) {
//            System.out.println("Usage: java Main <directory> <file extension>");
//            System.out.println("Example: java Main G:\\projects\\.txt");
//            return;
//        }

//        Path rootPath = Paths.get(args[0]);
//        String extension = args[1].startsWith(".") ? args[1] : "." + args[1];

        try {
            List<Path> files = findFiles(rootPath, extension);
            System.out.println("Found " + files.size() + " files to process");

            for (Path file : files) {
                deleteEmptyLines(file);
            }
            System.out.println("Processing completed");
        } catch (IOException e) {
            System.err.println("Error: " + e.getMessage());
        }
    }
    private static List<Path> findFiles(Path rootPath, String extension) throws IOException {
        try (Stream<Path> paths = Files.walk(rootPath)) {
            return paths
                    .filter(Files::isRegularFile)
                    .filter(p -> p.toString().toLowerCase().endsWith(extension))
                    .collect(Collectors.toList());
        }
    }

    private static void deleteEmptyLines(Path filePath) throws IOException {
        List<String> lines = Files.readAllLines(filePath);
        List<String> nonEmptyLines = new ArrayList<>();

        for (String line : lines) {
            if (!line.trim().isEmpty()) {
                nonEmptyLines.add(line);
            }
        }

        Files.write(filePath, nonEmptyLines, StandardOpenOption.TRUNCATE_EXISTING);
    }
}
