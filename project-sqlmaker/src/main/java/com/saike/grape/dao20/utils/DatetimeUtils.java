package com.saike.grape.dao20.utils;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

public class DatetimeUtils {

    private static final Logger logger = LoggerFactory
            .getLogger(DatetimeUtils.class);

    private static final long ONE_DAY_IN_MILISECONDS = 24 * 60 * 60 * 1000;

    private static final String[] WEEK_NAMES = { "", "周日", "周一", "周二", "周三",
            "周四", "周五", "周六" };
    
    private static final String[] WEEK_NAMESS = { "", "星期日", "星期一", "星期二", "星期三",
        "星期四", "星期五", "星期六" };

    public static Timestamp TIMESTAMP_ZERO = parseTimestamp("1970-01-01 10:00:00");

    public static Timestamp TIMESTAMP_MAX = parseTimestamp("2038-01-19 03:14:07");

    public static Date DATETIME_ZERO = parseDatetime("1970-01-01 10:00:00");

    public static Date Date_MAX = parseTimestamp("2038-01-19 03:14:07");

    public static boolean isTimestampZero(Timestamp timestamp) {
        return TIMESTAMP_ZERO.equals(timestamp);
    }

    public static boolean isNotTimestampZero(Timestamp timestamp) {
        return !isTimestampZero(timestamp);
    }

    public static boolean isDatetimeZero(Date datetime) {
        if (datetime != null && datetime instanceof Timestamp) {
            return isTimestampZero((Timestamp) datetime);
        }
        return DATETIME_ZERO.equals(datetime);
    }

    public static Timestamp afterOneWeek(Timestamp datetime) {

        if (datetime == null) {
            throw new IllegalArgumentException("Argument datetime is null!!");
        }

        Calendar c = Calendar.getInstance();
        c.setTime(datetime);
        c.add(Calendar.WEEK_OF_YEAR, 1);
        return new Timestamp(c.getTime().getTime());
    }

    public static long daysBetween(Timestamp datetime1, Timestamp datetime2) {

        Timestamp currentTimestamp = currentTimestamp();

        datetime1 = (datetime1 == null) ? currentTimestamp : datetime1;
        datetime2 = (datetime2 == null) ? currentTimestamp : datetime2;

        long delta = Math.abs(datetime2.getTime() - datetime1.getTime());
        return (long) Math.ceil(delta * 1.0 / ONE_DAY_IN_MILISECONDS);
    }

    public static Timestamp currentTimestamp() {
        return new Timestamp(System.currentTimeMillis());
    }

    public static Timestamp parseTimestamp(String timestamp) {

        SimpleDateFormat sdf = new SimpleDateFormat(Constants.DATETIME_PATTERN);
        try {
            return new Timestamp(sdf.parse(timestamp).getTime());
        } catch (Exception ex) {
            logger.error("\"" + timestamp + "\" is invalid,"
                    + " it should be in pattern " + " \""
                    + Constants.DATETIME_PATTERN + "\"", ex);
        }
        return null;
    }

    public static Date parseDatetime(String datetime) {

        SimpleDateFormat sdf = new SimpleDateFormat(Constants.DATETIME_PATTERN);
        try {
            return sdf.parse(datetime);
        } catch (Exception ex) {
            logger.error("\"" + datetime + "\" is invalid,"
                    + " it should be in pattern " + " \""
                    + Constants.DATETIME_PATTERN + "\"", ex);
        }
        return null;
    }

    public static String formatDate(Date timestamp) {
        return timestamp == null ? "" : new SimpleDateFormat(
                Constants.DATETIME_PATTERN).format(timestamp);
    }

    public static String formatTimestamp(Timestamp timestamp) {
        return formatDate(timestamp);
    }

    public static String formatTimestamp(Timestamp timestamp, String parttern) {
        parttern = (StringUtils.isEmpty(parttern)) ? Constants.DATETIME_PATTERN
                : parttern;
        SimpleDateFormat sdf = new SimpleDateFormat(parttern);
        try {
            return sdf.format(timestamp);
        } catch (Exception ex) {
            logger.error("\"" + timestamp + "\" is invalid,"
                    + " it should be in pattern " + " \"" + parttern + "\"", ex);
        }
        return null;
    }

    public static String formatDate(Date date, String parttern) {
        parttern = (StringUtils.isEmpty(parttern)) ? Constants.DATETIME_PATTERN
                : parttern;
        SimpleDateFormat sdf = new SimpleDateFormat(parttern);
        try {
            return sdf.format(date);
        } catch (Exception ex) {
            logger.error("\"" + date + "\" is invalid,"
                    + " it should be in pattern " + " \"" + parttern + "\"", ex);
        }
        return null;
    }

    public static Timestamp dayStartDatetime(Timestamp timestamp) {
        String date = formatDate(timestamp, Constants.DATE_PATTERN);
        return parseTimestamp(date + " 00:00:00");
    }

    public static Timestamp dayEndDatetime(Timestamp timestamp) {
        String date = formatDate(timestamp, Constants.DATE_PATTERN);
        return parseTimestamp(date + " 23:59:59");
    }

    public static Timestamp nextDay() {
        return dayPlus( currentTimestamp(), 1);
    }

    public static Timestamp nextDay(Timestamp timestamp) {
        return dayPlus(timestamp, 1);
    }

    public static Timestamp dayPlus(Timestamp timestamp, int days) {
        Calendar c = Calendar.getInstance();
        c.setTime(timestamp);
        c.add(Calendar.DAY_OF_MONTH, days);
        return new Timestamp(c.getTimeInMillis());
    }
    
    public static Timestamp hourPlus(Timestamp timestamp, int hours) {
        Calendar c = Calendar.getInstance();
        c.setTime(timestamp);
        c.add(Calendar.HOUR_OF_DAY, hours);
        return new Timestamp(c.getTimeInMillis());
    }
    
    public static Timestamp hourPlusSimple(Timestamp timestamp, int hours) {
        Calendar c = Calendar.getInstance();
        c.setTime(timestamp);
        c.add(Calendar.HOUR_OF_DAY, hours);
        c.set(Calendar.MINUTE, 0);
        c.set(Calendar.SECOND, 0);
        return new Timestamp(c.getTimeInMillis());
    }

    /**
     * 
     * @param timestamp 传入的时间点
     * @param days 要增加的天数
     * @return 增加的天数后的凌晨00:00:00
     */
    public static Timestamp getEarlyMorningAfterDays(Timestamp timestamp,
            int days) {
        Calendar c = Calendar.getInstance();
        c.setTime(timestamp);
        c.add(Calendar.DAY_OF_MONTH, days);
        c.set(Calendar.HOUR_OF_DAY, 0);
        c.set(Calendar.MINUTE, 0);
        c.set(Calendar.SECOND, 0);
        return new Timestamp(c.getTimeInMillis());
    }
    
    public static String getWeekInString(Timestamp timestamp) {
        Calendar c = Calendar.getInstance();
        c.setTime(timestamp);
        return WEEK_NAMES[c.get(Calendar.DAY_OF_WEEK)];
    }
    
    
    public static String getDaysOfWeekInString(Timestamp timestamp) {
        Calendar c = Calendar.getInstance();
        c.setTime(timestamp);
        return WEEK_NAMESS[c.get(Calendar.DAY_OF_WEEK)];
    }

    public static String getNextWeekFirstDayStr(Timestamp nextDay,
            String parttern) {
        if(StringUtils.isEmpty(parttern)){
            parttern = Constants.DATETIME_PATTERN;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(nextDay);
        int day_of_week = calendar.get(Calendar.DAY_OF_WEEK) - 1;
        if (day_of_week == 0){
         day_of_week = 7;
        }
        calendar.add(Calendar.DATE, -day_of_week +8);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        return DatetimeUtils.formatDate(calendar.getTime());
    }

    public static Timestamp getNextWeekFirstDay(Timestamp nextDay,
            String parttern) {
        if(StringUtils.isEmpty(parttern)){
            parttern = Constants.DATETIME_PATTERN;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(nextDay);
        int day_of_week = calendar.get(Calendar.DAY_OF_WEEK) - 1;
        if (day_of_week == 0){
         day_of_week = 7;
        }
        calendar.add(Calendar.DATE, -day_of_week +8);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        return Timestamp.valueOf(formatDate(calendar.getTime()));
    }
    
    public static Timestamp getCurrentWeekFirstDay(Timestamp nextDay,
            String parttern) {
        if(StringUtils.isEmpty(parttern)){
            parttern = Constants.DATETIME_PATTERN;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(nextDay);
        int day_of_week = calendar.get(Calendar.DAY_OF_WEEK) - 1;
        if (day_of_week == 0){
         day_of_week = 7;
        }
        calendar.add(Calendar.DATE, -day_of_week + 1);
       
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        return Timestamp.valueOf(formatDate(calendar.getTime()));
    }
    
    public static String getCurrentWeekFirstDayStr(Timestamp nextDay,
            String parttern) {
        if(StringUtils.isEmpty(parttern)){
            parttern = Constants.DATETIME_PATTERN;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(nextDay);
        int day_of_week = calendar.get(Calendar.DAY_OF_WEEK) - 1;
        if (day_of_week == 0){
         day_of_week = 7;
        }
        calendar.add(Calendar.DATE, -day_of_week + 1);
       
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        return DatetimeUtils.formatDate(calendar.getTime());
    }
}
