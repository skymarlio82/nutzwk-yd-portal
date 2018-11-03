package cn.wizzer.app;

import java.math.BigDecimal;
import java.util.Random;

/**
 * Created by hadoop on 2017/6/7.
 */
public class test {

    static int i = 0;

    private Float bargainPriceFn(Float maxPrice) {
        i++;
        if (maxPrice < 0)
            return 0f;
        if (maxPrice <= 5 && maxPrice >= 0)
            return maxPrice;
        Integer randInt = 0;
        Float randFloat = 0f;
        while (true) {
            Random random = new Random();
            randInt = random.nextInt(100);
            randFloat = Float.valueOf(new String((randInt / 10.0 - 1) + ""));
            if (randFloat <= 10 && randFloat >= 1 && randFloat <= maxPrice - 2)
                break;
        }
        return randFloat;
    }

    public static void main(String[] args) {
        while (true) {
            test t = new test();
            Float maxPrice = 59.2f;
            while (true) {
                Float aa = t.bargainPriceFn(maxPrice);
                maxPrice = new BigDecimal(maxPrice).subtract(new BigDecimal(aa)).setScale(1, BigDecimal.ROUND_HALF_UP).floatValue();
                if(aa < 1)
                    return;
                System.out.println("还剩：" + maxPrice);
                System.out.println("砍了：" + aa);
                if (maxPrice < 0)
                    return;
                if (maxPrice <= 0)
                    break;
            }
            System.out.println("一共用了" + i + "砍完");
        }
    }
}
