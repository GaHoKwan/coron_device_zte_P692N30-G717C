.class public Lcom/hf/widget/WidgetUtil;
.super Ljava/lang/Object;
.source "WidgetUtil.java"


# static fields
.field public static final COLUMN_CITY_DEFAULT:I = 0x5

.field public static final COLUMN_CITY_DISPLAYNAME:I = 0x4

.field public static final COLUMN_CITY_ENGLISH_NAME:I = 0x6

.field public static final COLUMN_CITY_ID:I = 0x1

.field public static final COLUMN_CITY_NAME:I = 0x2

.field public static final COLUMN_CITY_PINYIN:I = 0x3

.field public static final QUERY_WEATHER_PROJECTION:[Ljava/lang/String; = null

.field public static final WEATHER_SELECTION:Ljava/lang/String; = "isDefault=1"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 23
    const-string v2, "cityId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 24
    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 25
    const-string v2, "pinyin"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 26
    const-string v2, "cityDisplayName"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 27
    const-string v2, "isDefault"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 28
    const-string v2, "englishName"

    aput-object v2, v0, v1

    .line 22
    sput-object v0, Lcom/hf/widget/WidgetUtil;->QUERY_WEATHER_PROJECTION:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCityAndWeather(Landroid/content/Context;)[Ljava/lang/Object;
    .locals 20
    .parameter "context"

    .prologue
    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 63
    sget-object v3, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    .line 64
    sget-object v4, Lcom/hf/widget/WidgetUtil;->QUERY_WEATHER_PROJECTION:[Ljava/lang/String;

    .line 65
    const-string v5, "isDefault=1"

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x0

    .line 63
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 68
    .local v14, cursor:Landroid/database/Cursor;
    if-nez v14, :cond_0

    .line 69
    const/16 v17, 0x0

    .line 107
    :goto_0
    return-object v17

    .line 72
    :cond_0
    const/4 v8, 0x0

    .line 73
    .local v8, city:Lcom/hf/model/CityModel;
    const/16 v19, 0x0

    .line 74
    .local v19, weatherModel:Lcom/hf/model/WeatherModel;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, cityId:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 77
    .local v12, cityName:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, cityPinyin:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, cityDisplayName:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 80
    .local v15, englishName:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 81
    .local v9, cityDefault:I
    new-instance v8, Lcom/hf/model/CityModel;

    .end local v8           #city:Lcom/hf/model/CityModel;
    invoke-direct {v8}, Lcom/hf/model/CityModel;-><init>()V

    .line 82
    .restart local v8       #city:Lcom/hf/model/CityModel;
    iput-object v11, v8, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    .line 83
    iput-object v12, v8, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    .line 84
    iput-object v13, v8, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    .line 85
    iput-object v15, v8, Lcom/hf/model/CityModel;->englishName:Ljava/lang/String;

    .line 86
    iput-object v10, v8, Lcom/hf/model/CityModel;->displayName:Ljava/lang/String;

    .line 88
    const/4 v2, 0x1

    if-ne v9, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v8, Lcom/hf/model/CityModel;->isDefault:Z

    .line 90
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 96
    const v2, 0x7f080124

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 98
    .local v16, fileName:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    const/16 v17, 0x0

    goto :goto_0

    .line 88
    .end local v16           #fileName:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 92
    .end local v9           #cityDefault:I
    .end local v10           #cityDisplayName:Ljava/lang/String;
    .end local v11           #cityId:Ljava/lang/String;
    .end local v12           #cityName:Ljava/lang/String;
    .end local v13           #cityPinyin:Ljava/lang/String;
    .end local v15           #englishName:Ljava/lang/String;
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 93
    const/16 v17, 0x0

    goto :goto_0

    .line 101
    .restart local v9       #cityDefault:I
    .restart local v10       #cityDisplayName:Ljava/lang/String;
    .restart local v11       #cityId:Ljava/lang/String;
    .restart local v12       #cityName:Ljava/lang/String;
    .restart local v13       #cityPinyin:Ljava/lang/String;
    .restart local v15       #englishName:Ljava/lang/String;
    .restart local v16       #fileName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/hf/utils/Util;->readWeatherFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 103
    .local v18, stream:Ljava/io/InputStream;
    iget-object v2, v8, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/hf/utils/Util;->parseWeatherFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/hf/model/WeatherModel;

    move-result-object v19

    .line 104
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 105
    .local v17, object:[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object v8, v17, v2

    .line 106
    const/4 v2, 0x1

    aput-object v19, v17, v2

    goto :goto_0
.end method

.method static getTemperatureType(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 46
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    .local v0, preferences:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 49
    .local v1, type:I
    const v2, 0x7f080134

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 53
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 50
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final is24Hours(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static widget_4_1_is_running(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 117
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/hf/widget/HFWeatherWidget4_1;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 118
    .local v0, ids:[I
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static widget_4_2_is_running(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 111
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/hf/widget/HFWeatherWidget4_2;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 112
    .local v0, ids:[I
    const-string v1, "widget_4_2_is_running"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ids = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
