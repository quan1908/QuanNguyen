

import java.io.IOException;
import java.util.Scanner;

public class WriterProgram {
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        FileManagement fm = new FileManagement();
        boolean writeFileLoop = true;
        System.out.println("================ Writer Program ================");
        System.out.println("Do you want to write file?(Y/N or y/n): ");
        while (writeFileLoop) {
            char confirmWrite = sc.nextLine().charAt(0);
            switch (confirmWrite) {
                case 'Y', 'y' -> {
                    System.out.println("Please input file");
                    String filePath = sc.nextLine();
                    System.out.println("Save file with content <save> or <Save>");
                    System.out.println("Please input file content:");
                    String fileContent = sc.nextLine();
                    var action = fm.writeFile(filePath, fileContent);
                    if (action) {
                        System.out.println("File written successfully");
                    } else {
                        System.out.println("File written failed");
                    }
                    System.out.println("Do you want to write another file?(Y/N or y/n):");
                }
                case 'N', 'n' -> {
                    writeFileLoop = false;
                }
                default -> {
                    System.out.println("IN! Please choose one available option.");
                    System.out.println("Do you want to write file?(Y/N or y/n): ");
                }
            }
        }
        System.out.println("Do you want to read file?(Y/N or y/n):");
        boolean readFileLoop = true;
        while (readFileLoop) {
            char confirmReadFile = sc.nextLine().charAt(0);
            switch (confirmReadFile) {
                case 'Y', 'y' -> {
                    System.out.print("Please input path file: ");
                    String path = sc.nextLine();
                    System.out.println("Content in file: ");
                    System.out.println(fm.readFile(path));
                    System.out.println("Do you want to read another file?(Y/N or y/n):");
                }
                case 'N', 'n' -> {
                    readFileLoop = false;
                }
                default -> {
                    System.out.println("Invalid choice! Please choose one available option.");
                    System.out.println("Do you want to read file?(Y/N or y/n):");
                }
            }
        }
        System.out.println("================ Program has ended ================");
    }
}