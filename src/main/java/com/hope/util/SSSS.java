package com.hope.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class SSSS {
    static int n;
    static List<String> list = new ArrayList<String>();

    public static void get(int x, int[] mm) {
        String sum = "";
        String m = getBinaryValue(x);
        char[] data = m.toCharArray();
        for (int i = 0; i < data.length; i++) {
            if (data[i] == '1') {
                sum += mm[i];
            }

        }
        if (!sum.equals("")) {
            list.add(sum);
        }
    }

    public static String getBinaryValue(int x) {

        StringBuffer sb = new StringBuffer(Integer.toBinaryString(x));
        int length = sb.length();

        for (int j = 0; j < n - length; j++) {
            sb.insert(0, "0");
        }

        return sb.toString();

    }

    public static int getSum(int[] xx) {
        int sum = 0;
        for (int i = 0; i < xx.length; i++) {
            sum += xx[i];
        }
        return sum;
    }

    public static void main(String[] args) {
            int[] mm = {1,2,4,3};

        for (int i = 0; i < Math.pow(2, 4) - 1; i++) {
                get(i, mm);
            }
            System.out.println(list.toString());
    }
}
