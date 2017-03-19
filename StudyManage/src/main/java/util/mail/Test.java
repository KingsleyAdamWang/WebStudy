package util.mail;

import org.springframework.core.io.ClassPathResource;

import java.io.*;
import java.net.URL;

/**
 * Created by mengf on 2017/3/16 0016.
 */
public class Test {

    public static void main(String[] args) throws IOException {
//        URL url =  Test.class.getClassLoader().getResource("");
//        System.out.println(url.getPath());
//        File file = new File(url.getPath()+"test.xml");
//        if (!file.exists()){
//            file.createNewFile();
//        }
//        FileWriter writer = new FileWriter(file);
//        writer.write("hello world");
//        writer.close();
        InputStream streams = new ClassPathResource("test.xml").getInputStream();
        InputStream stream = Test.class.getClassLoader().getResourceAsStream("test.xml");
        FileWriter writer = new FileWriter(new File("src/main/resources/wwwwwww.txt"));
        writer.append("hellwo");
        writer.write("haha");
        writer.close();
    }
}
