.class public Lcom/hf/data/HFAction;
.super Ljava/lang/Object;
.source "HFAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/data/HFAction$HFExtera;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_CITY_RESULT:Ljava/lang/String; = "com.hf.ADD_CITY"

.field public static final ACTION_APP_START:Ljava/lang/String; = "com.hf.APP_START"

.field public static final ACTION_CHANGE_DEFAULT_CITY:Ljava/lang/String; = "com.hf.CHANGE_DEFAULT_CITY"

.field public static final ACTION_CHANGE_SHOWING_CITY:Ljava/lang/String; = "com.hf.CHANGE_CURRENT_CITY"

.field public static final ACTION_CHANGE_TEMPERATURE_TYPE:Ljava/lang/String; = "com.hf.CHANGE_TEMPERATURE_TYPE"

.field public static final ACTION_CHANGE_THEME:Ljava/lang/String; = "com.hf.CHANGE_BACKGROUND"

.field public static final ACTION_CHANGE_UPDATE_TIME_INTERVAL:Ljava/lang/String; = "com.hf.CHANGE_UPDATE_TIME"

.field public static final ACTION_DELETE_CITY:Ljava/lang/String; = "com.hf.DELETE_CITY"

.field public static final ACTION_GET_LOCATION:Ljava/lang/String; = "com.hf.weather.LOCATION"

.field public static final ACTION_KILL_PROCESS:Ljava/lang/String; = "com.hf.KILL_PROCESS"

.field public static final ACTION_LOCATION_FAILED:Ljava/lang/String; = "com.hf.location.FAILED"

.field public static final ACTION_LOCATION_SUCCESSED:Ljava/lang/String; = "com.hf.location.SUCCESSED"

.field public static final ACTION_MAIN_REFRESH_BUTTON_CLICKED:Ljava/lang/String; = "com.hf.UPDATE_CITY_WEATHER"

.field public static final ACTION_MODIFY_CITY_NAME:Ljava/lang/String; = "com.hf.MODIFY_CITY_NAME"

.field public static final ACTION_OPEN_NOTIFY_WEATHER:Ljava/lang/String; = "com.hf.NOTIFY_OPEN"

.field public static final ACTION_OTHERS_LOCATION_SUCCESSED:Ljava/lang/String; = "com.hf.location.EXTERNAL_SUCCESSED"

.field public static final ACTION_QUERY_ALL_WEATHER:Ljava/lang/String; = "com.hf.QUERY_ALL_WEATHER"

.field public static final ACTION_QUERY_ALL_WEATHER_ALARM:Ljava/lang/String; = "com.hf.QUERY_ALL_WEATHER_ALARM"

.field public static final ACTION_QUERY_ALL_WEATHER_AM:Ljava/lang/String; = "com.hf.QUERY_ALL_WEATHER_AM"

.field public static final ACTION_QUERY_ALL_WEATHER_FAILED:Ljava/lang/String; = "com.hf.UPDATE_ALL_WEATHER_FAILED"

.field public static final ACTION_QUERY_ALL_WEATHER_NET_STATE_CHANGE:Ljava/lang/String; = "com.hf.QUERY_ALL_WEATHER_NET_STATE_CHANGE"

.field public static final ACTION_QUERY_ALL_WEATHER_PM:Ljava/lang/String; = "com.hf.QUERY_ALL_WEATHER_PM"

.field public static final ACTION_QUERY_ALL_WEATHER_SUCCESSED:Ljava/lang/String; = "com.hf.UPDATE_ALL_WEATHER"

.field public static final ACTION_QUERY_ALL_WEATHER_WIDGET:Ljava/lang/String; = "com.hf.QUERY_ALL_WEATHER_WIDGET"

.field public static final ACTION_QUERY_MAP_WEATHER:Ljava/lang/String; = "com.hf.QUERY_MAP"

.field public static final ACTION_QUERY_NEW_CITY_WEATHER:Ljava/lang/String; = "com.hf.QUERY_NEW_CITY_WEATHER"

.field public static final ACTION_QUERY_WARNING:Ljava/lang/String; = "com.hf.QUERY_WARNING"

.field public static final ACTION_QUERY_WEATHER:Ljava/lang/String; = "com.hf.QUERY_WEATHER"

.field public static final ACTION_QUERY_WEATHER_FAILED:Ljava/lang/String; = "com.hf.QUERY_WEATHER_FAILED"

.field public static final ACTION_QUERY_WEATHER_SUCCESSED:Ljava/lang/String; = "com.hf.UPDATE_WEATHER"

.field public static final ACTION_RELOAD_WEATHERS:Ljava/lang/String; = "com.hf.RELOAD"

.field public static final ACTION_RESET_TRAFFIC:Ljava/lang/String; = "com.hf.RESET_TRAFFIC"

.field public static final ACTION_UPDATE_NOTIFY:Ljava/lang/String; = "com.hf.UPDATE_NOTIFY"

.field public static final ACTION_WIDGET_TIME_TICK:Ljava/lang/String; = "com.hf.TIME_TICK"

.field public static final ACTION_ZTE_ADD_CITY:Ljava/lang/String; = "com.ztemt.action.hfweather.CREATECITY"

.field public static final ACTION_ZTE_ENTER_MAIN_ACTIVITY:Ljava/lang/String; = "com.ztemt.action.hfweather.MAINACTIVITY"

.field public static final ACTION_ZTE_GET_BOOT_SWITCH:Ljava/lang/String; = "com.zte.BOOT_SWITCH"

.field public static final ACTION_ZTE_GET_TEMPERATURE_TYPE:Ljava/lang/String; = "com.zte.TEMPTERATURE_TYPE"

.field public static final ACTION_ZTE_RETURN_BOOT_SWITCH:Ljava/lang/String; = "com.zte.BOOT_SWITCH_RESULT"

.field public static final ACTION_ZTE_RETURN_TEMPERATURE_TYPE:Ljava/lang/String; = "com.zte.TEMPTERATURE_TYPE_RESULT"

.field public static final ACTION_ZTE_TIME_MANAGER:Ljava/lang/String; = "android.intent.action.TIMEMANAGER"

.field public static final PACKAGE:Ljava/lang/String; = "com.hf"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
