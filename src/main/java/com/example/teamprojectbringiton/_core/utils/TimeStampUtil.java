package com.example.teamprojectbringiton._core.utils;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class TimeStampUtil {

    public static String timestampToString(Timestamp time) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(time);
    }
}
