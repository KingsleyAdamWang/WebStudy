package util;

import java.io.*;

/**
 * Created by mengf on 2017/4/22 0022.
 */
public class FileUtil {
    public static void  copy(File sourceFile,File destFile) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(sourceFile));
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(destFile));
        byte[] buf= new byte[1024*8];
        int length = 0 ;
        while ((length=bufferedInputStream.read(buf)) != -1){
            bufferedOutputStream.write(buf,0,length);
            bufferedOutputStream.flush();
        }

        bufferedInputStream.close();
        bufferedOutputStream.close();
    }
}
