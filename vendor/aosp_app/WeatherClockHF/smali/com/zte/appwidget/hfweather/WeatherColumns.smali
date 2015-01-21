.class public Lcom/zte/appwidget/hfweather/WeatherColumns;
.super Ljava/lang/Object;
.source "WeatherColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CITY_DISPLAY_NAME:Ljava/lang/String; = "cityDisplayName"

.field public static final CITY_ENGLISH_NAME:Ljava/lang/String; = "englishName"

.field public static final CITY_ID:Ljava/lang/String; = "cityId"

.field public static final CITY_NAME:Ljava/lang/String; = "name"

.field public static final CITY_PINYIN:Ljava/lang/String; = "pinyin"

.field public static final CITY_SID:Ljava/lang/String; = "sid"

.field public static final F_MAXTEMP:Ljava/lang/String; = "tMax"

.field public static final F_MINTEMP:Ljava/lang/String; = "tMin"

.field public static final F_WEATHER1:Ljava/lang/String; = "weather1"

.field public static final F_WEATHER2:Ljava/lang/String; = "weather2"

.field public static final F_WIND_DIR1:Ljava/lang/String; = "wind_dir1"

.field public static final F_WIND_DIR2:Ljava/lang/String; = "wind_dir2"

.field public static final F_WIND_POWER1:Ljava/lang/String; = "wind_power1"

.field public static final F_WIND_POWER2:Ljava/lang/String; = "wind_power2"

.field public static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final SK_REPORTTIME:Ljava/lang/String; = "skReportTime"

.field public static final SK_TEMPERATURE:Ljava/lang/String; = "skTemperature"

.field public static final SK_WEATHER_CONDITION:Ljava/lang/String; = "skWeather"

.field public static final WEATHER_CITY_DISPLAY_NAME_INDEX:I = 0x5

.field public static final WEATHER_CITY_ENGLISH_NAME_INDEX:I = 0x4

.field public static final WEATHER_CITY_ID_INDEX:I = 0x1

.field public static final WEATHER_CITY_NAME_INDEX:I = 0x2

.field public static final WEATHER_CITY_PINYIN_INDEX:I = 0x3

.field public static final WEATHER_FCITY_SID_INDEX:I = 0x6

.field public static final WEATHER_F_MAXTEMP_INDEX:I = 0xf

.field public static final WEATHER_F_MINTEMP_INDEX:I = 0x10

.field public static final WEATHER_F_WEATHER1_INDEX:I = 0x11

.field public static final WEATHER_F_WEATHER2_INDEX:I = 0x12

.field public static final WEATHER_F_WIND_DIR1_INDEX:I = 0xd

.field public static final WEATHER_F_WIND_DIR2_INDEX:I = 0xe

.field public static final WEATHER_F_WIND_POWER1_INDEX:I = 0xb

.field public static final WEATHER_F_WIND_POWER2_INDEX:I = 0xc

.field public static final WEATHER_ID_INDEX:I = 0x0

.field public static final WEATHER_IS_DEFAULT_INDEX:I = 0x7

.field public static final WEATHER_QUERY_COLUMNS:[Ljava/lang/String; = null

.field public static final WEATHER_SK_REPORTTIME_INDEX:I = 0xa

.field public static final WEATHER_SK_TEMPERATURE_INDEX:I = 0x8

.field public static final WEATHER_SK_WEATHER_CONDITION_INDEX:I = 0x9

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cityId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pinyin"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "englishName"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cityDisplayName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "isDefault"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "skTemperature"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "skWeather"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "skReportTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "wind_power1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "wind_power2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "wind_dir1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "wind_dir2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "tMax"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "tMin"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "weather1"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "weather2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/appwidget/hfweather/WeatherColumns;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
