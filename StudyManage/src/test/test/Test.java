package test;

import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.io.File;
/**
 * Created by mengf on 2017/3/16 0016.
 */
public class Test {

    @org.junit.Test
    public void test() throws URISyntaxException, IOException {
       URL url =  Test.class.getClassLoader().getResource("");
       System.out.println(url.getPath());
       File file = new File(url.getPath()+ "test.xml");
       if (!file.exists()){
           file.createNewFile();
       }
    }
}
