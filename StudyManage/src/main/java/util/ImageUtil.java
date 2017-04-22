package util;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.*;


/**
 * Created by mengf on 2017/4/22 0022.
 */
public class ImageUtil {

    public static boolean changeSize(File file,int width,int height){

        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(
              new FileInputStream(file)
            );

            Image image = ImageIO.read(bufferedInputStream);

            BufferedImage bImg = new BufferedImage(100,100,BufferedImage.TYPE_INT_RGB);

            bImg.getGraphics().drawImage(image,0,0,100,100,null);


            BufferedOutputStream outputStream = new BufferedOutputStream(
              new FileOutputStream(file)
            );

            ImageIO.write(bImg,"PNG",outputStream);

            bufferedInputStream.close();
            outputStream.close();

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return true;
    }
}
