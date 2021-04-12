


import java.io.FileReader;
import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.IOException;
import java.util.Scanner;

public class FileManagement {
    Scanner sc = new Scanner(System.in);

    public FileManagement() {

    }

    public boolean writeFile(String path, String content) throws IOException {
        boolean writerStatus = false;
        try (
                FileWriter fw = new FileWriter(path);
                BufferedWriter bw = new BufferedWriter(fw);
        ) {
            bw.write(content);
            writerStatus = true;
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
        return writerStatus;
    }

    public String readFile(String path) throws IOException {
        String content = null;
        try (
                FileReader fr = new FileReader(path);
                BufferedReader br = new BufferedReader(fr);
        ) {
            content = br.readLine();
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
        return content;
    }


}