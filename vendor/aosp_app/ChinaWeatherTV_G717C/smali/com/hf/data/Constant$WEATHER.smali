.class public Lcom/hf/data/Constant$WEATHER;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/data/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WEATHER"
.end annotation


# static fields
.field public static final TABLE_WEATHER:Ljava/lang/String; = "weather"

.field public static final WEATHER_CITY_DISPLAY_NAME:Ljava/lang/String; = "cityDisplayName"

.field public static final WEATHER_CITY_ENGLISH_NAME:Ljava/lang/String; = "englishName"

.field public static final WEATHER_CITY_ID:Ljava/lang/String; = "cityId"

.field public static final WEATHER_CITY_NAME:Ljava/lang/String; = "name"

.field public static final WEATHER_CITY_PINYIN:Ljava/lang/String; = "pinyin"

.field public static final WEATHER_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final WEATHER_IS_DEFAULT:I = 0x1

.field public static final WEATHER_IS_NOT_DEFAULT:I = 0x0

.field public static final WEATHER_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.hf.weather"

.field public static final WEATHER_SK_REPORTTIME:Ljava/lang/String; = "skReportTime"

.field public static final WEATHER_SK_TEMPERATURE:Ljava/lang/String; = "skTemperature"

.field public static final WEATHER_SK_WEATHER:Ljava/lang/String; = "skWeather"

.field public static final WEATHER_STATION_ID:Ljava/lang/String; = "sid"

.field public static final WEATHER_TMAX:Ljava/lang/String; = "tMax"

.field public static final WEATHER_TMIN:Ljava/lang/String; = "tMin"

.field public static final WEATHER_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.hf.weather"

.field public static final WEATHER_URI:Landroid/net/Uri; = null

.field public static final WEATHER_WEATHER1:Ljava/lang/String; = "weather1"

.field public static final WEATHER_WEATHER2:Ljava/lang/String; = "weather2"

.field public static final WEATHER_WIND_DIR1:Ljava/lang/String; = "wind_dir1"

.field public static final WEATHER_WIND_DIR2:Ljava/lang/String; = "wind_dir2"

.field public static final WEATHER_WIND_POWER1:Ljava/lang/String; = "wind_power1"

.field public static final WEATHER_WIND_POWER2:Ljava/lang/String; = "wind_power2"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-string v0, "content://hf.weather/weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    .line 159
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
