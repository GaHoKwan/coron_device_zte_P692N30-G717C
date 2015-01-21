.class public Lcom/hf/manager/WeatherManager;
.super Ljava/lang/Object;
.source "WeatherManager.java"


# static fields
.field private static final ADD_CITY_COLUMN_CITY_ENGLISH_NAME:I = 0x3

.field private static final ADD_CITY_COLUMN_CITY_NAME:I = 0x1

.field private static final ADD_CITY_COLUMN_CITY_PINYIN:I = 0x2

.field private static final CITY_PROJECTION:[Ljava/lang/String; = null

.field private static final CITY_SELECTION:Ljava/lang/String; = "id=?"

.field private static final COLUMN_CITY_DISPLAY_NAME:I = 0x3

.field private static final COLUMN_CITY_ID:I = 0x0

.field private static final COLUMN_CITY_NAME:I = 0x1

.field private static final COLUMN_CITY_PINYIN:I = 0x2

.field private static final COLUMN_DEFAULT:I = 0x5

.field private static final COLUMN_ENGLISH_NAME:I = 0x6

.field private static final COLUMN_STATION_ID:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WeatherManager"

.field private static final WEATEHR_SELECTION:Ljava/lang/String; = "cityId=?"

.field private static final WEATHER_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/hf/manager/WeatherManager;


# instance fields
.field private mAllWeatherTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRepeatCount:I

.field private mWarnTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cityId"

    aput-object v1, v0, v3

    .line 48
    const-string v1, "name"

    aput-object v1, v0, v4

    .line 49
    const-string v1, "pinyin"

    aput-object v1, v0, v5

    .line 50
    const-string v1, "cityDisplayName"

    aput-object v1, v0, v6

    .line 51
    const-string v1, "sid"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 52
    const-string v2, "isDefault"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 53
    const-string v2, "englishName"

    aput-object v2, v0, v1

    .line 47
    sput-object v0, Lcom/hf/manager/WeatherManager;->WEATHER_PROJECTION:[Ljava/lang/String;

    .line 62
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "pinyin"

    aput-object v1, v0, v5

    const-string v1, "englishName"

    aput-object v1, v0, v6

    sput-object v0, Lcom/hf/manager/WeatherManager;->CITY_PROJECTION:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/hf/manager/WeatherManager;->mRepeatCount:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/manager/WeatherManager;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/hf/manager/WeatherManager;->findCity()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/hf/manager/WeatherManager;Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/hf/manager/WeatherManager;->queryWeather(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/hf/manager/WeatherManager;->WEATHER_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/hf/manager/WeatherManager;Landroid/content/Context;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-direct {p0, p1, p2}, Lcom/hf/manager/WeatherManager;->queryWarning(Landroid/content/Context;Lcom/hf/model/CityModel;)V

    return-void
.end method

.method static synthetic access$5(Lcom/hf/manager/WeatherManager;Ljava/lang/String;)Lcom/hf/model/CityModel;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/hf/manager/WeatherManager;->findCity(Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/hf/manager/WeatherManager;Ljava/lang/String;)Lcom/hf/model/CityModel;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/hf/manager/WeatherManager;->createCity(Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/hf/manager/WeatherManager;Lcom/hf/model/CityModel;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/hf/manager/WeatherManager;->contintCity(Lcom/hf/model/CityModel;)Z

    move-result v0

    return v0
.end method

.method private contintCity(Lcom/hf/model/CityModel;)Z
    .locals 6
    .parameter "city"

    .prologue
    const/4 v3, 0x0

    .line 444
    sget-object v4, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-eqz v4, :cond_0

    .line 445
    if-nez p1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v3

    .line 448
    :cond_1
    sget-object v4, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v4}, Lcom/hf/UI/CityList;->size()I

    move-result v2

    .line 449
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 450
    sget-object v4, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v4, v0}, Lcom/hf/UI/CityList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/model/CityModel;

    .line 451
    .local v1, item:Lcom/hf/model/CityModel;
    iget-object v4, v1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    iget-object v5, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 452
    const/4 v3, 0x1

    goto :goto_0

    .line 449
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private createCity(Ljava/lang/String;)Lcom/hf/model/CityModel;
    .locals 10
    .parameter "cityId"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 417
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 418
    const-string v0, "WeatherManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add new city, cityId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    :goto_0
    return-object v5

    .line 423
    :cond_1
    const/4 v6, 0x0

    .line 424
    .local v6, city:Lcom/hf/model/CityModel;
    iget-object v0, p0, Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/hf/data/Constant$CITY;->CITY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/hf/manager/WeatherManager;->CITY_PROJECTION:[Ljava/lang/String;

    const-string v3, "id=?"

    new-array v4, v9, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 425
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 426
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    new-instance v6, Lcom/hf/model/CityModel;

    .end local v6           #city:Lcom/hf/model/CityModel;
    invoke-direct {v6}, Lcom/hf/model/CityModel;-><init>()V

    .line 428
    .restart local v6       #city:Lcom/hf/model/CityModel;
    iput-object p1, v6, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    .line 429
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    .line 430
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    .line 431
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/hf/model/CityModel;->englishName:Ljava/lang/String;

    .line 433
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v5, v6

    .line 435
    goto :goto_0
.end method

.method private findCity(Ljava/lang/String;)Lcom/hf/model/CityModel;
    .locals 14
    .parameter "cityId"

    .prologue
    .line 382
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    const/4 v6, 0x0

    .line 409
    :cond_0
    :goto_0
    return-object v6

    .line 386
    :cond_1
    const/4 v6, 0x0

    .line 388
    .local v6, city:Lcom/hf/model/CityModel;
    iget-object v0, p0, Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/hf/manager/WeatherManager;->WEATHER_PROJECTION:[Ljava/lang/String;

    const-string v3, "cityId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 389
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 390
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 392
    .local v8, cityName:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 393
    .local v7, cityDisplayName:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 394
    .local v9, cityPinyin:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 395
    .local v13, stationId:Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 396
    .local v12, isDefault:I
    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 398
    .local v11, englishName:Ljava/lang/String;
    new-instance v6, Lcom/hf/model/CityModel;

    .end local v6           #city:Lcom/hf/model/CityModel;
    invoke-direct {v6}, Lcom/hf/model/CityModel;-><init>()V

    .line 399
    .restart local v6       #city:Lcom/hf/model/CityModel;
    iput-object p1, v6, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    .line 400
    iput-object v8, v6, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    .line 401
    iput-object v11, v6, Lcom/hf/model/CityModel;->englishName:Ljava/lang/String;

    .line 402
    iput-object v9, v6, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    .line 403
    iput-object v13, v6, Lcom/hf/model/CityModel;->stationId:Ljava/lang/String;

    .line 404
    const/4 v0, 0x1

    if-ne v12, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v6, Lcom/hf/model/CityModel;->isDefault:Z

    .line 405
    iput-object v7, v6, Lcom/hf/model/CityModel;->displayName:Ljava/lang/String;

    .line 407
    .end local v7           #cityDisplayName:Ljava/lang/String;
    .end local v8           #cityName:Ljava/lang/String;
    .end local v9           #cityPinyin:Ljava/lang/String;
    .end local v11           #englishName:Ljava/lang/String;
    .end local v12           #isDefault:I
    .end local v13           #stationId:Ljava/lang/String;
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 404
    .restart local v7       #cityDisplayName:Ljava/lang/String;
    .restart local v8       #cityName:Ljava/lang/String;
    .restart local v9       #cityPinyin:Ljava/lang/String;
    .restart local v11       #englishName:Ljava/lang/String;
    .restart local v12       #isDefault:I
    .restart local v13       #stationId:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findCity()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/CityModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v15, 0x0

    .line 150
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CityModel;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    sget-object v3, Lcom/hf/manager/WeatherManager;->WEATHER_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 151
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_0

    .line 152
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CityModel;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CityModel;>;"
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_0
    return-object v15

    .line 154
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, cityId:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, cityName:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, cityDisplayName:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, cityPinyin:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 159
    .local v16, stationId:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 160
    .local v14, isDefault:I
    const/4 v1, 0x6

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 161
    .local v13, englishName:Ljava/lang/String;
    new-instance v7, Lcom/hf/model/CityModel;

    invoke-direct {v7}, Lcom/hf/model/CityModel;-><init>()V

    .line 162
    .local v7, city:Lcom/hf/model/CityModel;
    iput-object v9, v7, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    .line 163
    iput-object v10, v7, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    .line 164
    iput-object v8, v7, Lcom/hf/model/CityModel;->displayName:Ljava/lang/String;

    .line 165
    iput-object v13, v7, Lcom/hf/model/CityModel;->englishName:Ljava/lang/String;

    .line 166
    iput-object v11, v7, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    .line 167
    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/hf/model/CityModel;->stationId:Ljava/lang/String;

    .line 168
    const/4 v1, 0x1

    if-ne v14, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v7, Lcom/hf/model/CityModel;->isDefault:Z

    .line 169
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/hf/manager/WeatherManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    const-class v1, Lcom/hf/manager/WeatherManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hf/manager/WeatherManager;->sInstance:Lcom/hf/manager/WeatherManager;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/hf/manager/WeatherManager;

    invoke-direct {v0, p0}, Lcom/hf/manager/WeatherManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hf/manager/WeatherManager;->sInstance:Lcom/hf/manager/WeatherManager;

    .line 78
    :cond_0
    sget-object v0, Lcom/hf/manager/WeatherManager;->sInstance:Lcom/hf/manager/WeatherManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private queryWarning(Landroid/content/Context;Lcom/hf/model/CityModel;)V
    .locals 3
    .parameter "context"
    .parameter "city"

    .prologue
    .line 290
    invoke-static {}, Lcom/hf/http/WeatherNet;->getInstance()Lcom/hf/http/WeatherNet;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/hf/http/WeatherNet;->queryWarning(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/util/List;

    move-result-object v0

    .line 291
    .local v0, warningList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    if-eqz v0, :cond_0

    sget-object v1, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 292
    sget-object v1, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    iget-object v2, p2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_0
    return-void
.end method

.method private queryWeather(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;
    .locals 24
    .parameter
    .parameter "tag"
    .parameter "isRepeat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/CityModel;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/WeatherModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, cityList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CityModel;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 183
    :cond_0
    const/4 v9, 0x0

    .line 278
    :goto_0
    return-object v9

    .line 185
    :cond_1
    const/4 v9, 0x0

    .line 186
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WeatherModel;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    .local v4, buffer:Ljava/lang/StringBuffer;
    const-string v17, "start-->\n "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v17, " :\n query all weathers , count = "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 191
    const-string v17, "; current time = "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v17, "yyyy-MM-dd hh:mm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 193
    const-string v17, "; \n"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_2

    .line 275
    const-string v17, "end-->;\n\n"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "weather_log.txt"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/hf/data/LogTag;->writeToSDcard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hf/model/CityModel;

    .line 195
    .local v5, city:Lcom/hf/model/CityModel;
    invoke-static {}, Lcom/hf/http/WeatherNet;->getInstance()Lcom/hf/http/WeatherNet;

    move-result-object v18

    iget-object v0, v5, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/hf/http/WeatherNet;->queryWeather(Ljava/lang/String;Landroid/content/Context;)Lcom/hf/model/WeatherModel;

    move-result-object v10

    .line 196
    .local v10, model:Lcom/hf/model/WeatherModel;
    if-nez v10, :cond_4

    if-eqz p3, :cond_4

    .line 198
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hf/manager/WeatherManager;->mRepeatCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hf/manager/WeatherManager;->mRepeatCount:I

    .line 200
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hf/manager/WeatherManager;->mRepeatCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x1388

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_2
    invoke-static {}, Lcom/hf/http/WeatherNet;->getInstance()Lcom/hf/http/WeatherNet;

    move-result-object v18

    iget-object v0, v5, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/hf/http/WeatherNet;->queryWeather(Ljava/lang/String;Landroid/content/Context;)Lcom/hf/model/WeatherModel;

    move-result-object v10

    .line 206
    if-eqz v10, :cond_5

    .line 211
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/hf/manager/WeatherManager;->queryWarning(Landroid/content/Context;Lcom/hf/model/CityModel;)V

    .line 212
    if-nez v10, :cond_6

    .line 213
    const-string v18, "this city is "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    iget-object v0, v5, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const-string v18, ":query failed, "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const-string v18, "current time = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v18, "yyyy-MM-dd hh:mm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v18 .. v20}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 219
    const-string v18, "; \n"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 201
    :catch_0
    move-exception v7

    .line 203
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 209
    .end local v7           #e:Ljava/lang/InterruptedException;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hf/manager/WeatherManager;->mRepeatCount:I

    move/from16 v18, v0

    const/16 v19, 0x3

    .line 197
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    goto :goto_3

    .line 222
    :cond_6
    if-nez v9, :cond_7

    .line 223
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WeatherModel;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .restart local v9       #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WeatherModel;>;"
    :cond_7
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v18, "this city is "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iget-object v0, v5, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    const-string v18, ":query successed, skReportTime = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    iget-object v0, v10, Lcom/hf/model/WeatherModel;->skReportTime:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const-string v18, ", current time = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    const-string v18, "yyyy-MM-dd hh:mm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v18 .. v20}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 234
    const-string v18, "; \n"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    iget-object v13, v10, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    .line 237
    .local v13, skWeather:Lcom/hf/model/SKWeather;
    const/4 v12, 0x0

    .line 238
    .local v12, skTemperature:Ljava/lang/String;
    const/4 v14, -0x1

    .line 239
    .local v14, skWeatherCode:I
    if-eqz v13, :cond_8

    .line 240
    iget-object v12, v13, Lcom/hf/model/SKWeather;->temperatrue:Ljava/lang/String;

    .line 241
    iget v14, v13, Lcom/hf/model/SKWeather;->weatherCode:I

    .line 243
    :cond_8
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v15, values:Landroid/content/ContentValues;
    const-string v18, "skTemperature"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v11, v10, Lcom/hf/model/WeatherModel;->skReportTime:Ljava/lang/String;

    .line 246
    .local v11, skReportTime:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 247
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v8

    check-cast v8, Ljava/text/SimpleDateFormat;

    .line 248
    .local v8, formate:Ljava/text/SimpleDateFormat;
    const-string v18, "yyyy-MM-dd HH:00:00"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 249
    const/4 v6, 0x0

    .line 250
    .local v6, date:Ljava/util/Date;
    new-instance v6, Ljava/util/Date;

    .end local v6           #date:Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 251
    .restart local v6       #date:Ljava/util/Date;
    invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 253
    .end local v6           #date:Ljava/util/Date;
    .end local v8           #formate:Ljava/text/SimpleDateFormat;
    :cond_9
    const-string v18, "skReportTime"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v18, "skWeather"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    iget-object v0, v10, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 256
    iget-object v0, v10, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_b

    .line 257
    iget-object v0, v10, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/hf/model/CFWeather;

    .line 258
    .local v16, weather:Lcom/hf/model/CFWeather;
    if-eqz v16, :cond_b

    .line 259
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_a

    .line 260
    invoke-static/range {v16 .. v16}, Lcom/hf/utils/WeatherUtils;->getCfWeatherCode(Lcom/hf/model/CFWeather;)I

    move-result v14

    .line 261
    const-string v18, "skWeather"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    :cond_a
    const-string v18, "wind_power1"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/hf/model/CFWeather;->windPowerDay:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const-string v18, "wind_power2"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/hf/model/CFWeather;->windPowerNight:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string v18, "wind_dir1"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/hf/model/CFWeather;->windDirCodeDay:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string v18, "wind_dir2"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/hf/model/CFWeather;->windDirCodeNight:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string v18, "tMax"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v18, "tMin"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v18, "weather1"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/hf/model/CFWeather;->weatherDay:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string v18, "weather2"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/hf/model/CFWeather;->weatherNigth:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    .end local v16           #weather:Lcom/hf/model/CFWeather;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    const-string v20, "cityId=\'%s\'"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v5, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public addCity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cityId"
    .parameter "action"

    .prologue
    .line 465
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 470
    :cond_0
    :try_start_0
    new-instance v0, Lcom/hf/manager/WeatherManager$3;

    invoke-direct {v0, p0, p1}, Lcom/hf/manager/WeatherManager$3;-><init>(Lcom/hf/manager/WeatherManager;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 626
    invoke-virtual {v0, v1}, Lcom/hf/manager/WeatherManager$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public queryAllWeather(ZLjava/lang/String;)V
    .locals 3
    .parameter "isRepeat"
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/hf/manager/WeatherManager;->mAllWeatherTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/hf/manager/WeatherManager;->mAllWeatherTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 89
    :cond_0
    iput v2, p0, Lcom/hf/manager/WeatherManager;->mRepeatCount:I

    .line 91
    new-instance v0, Lcom/hf/manager/WeatherManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/hf/manager/WeatherManager$1;-><init>(Lcom/hf/manager/WeatherManager;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/hf/manager/WeatherManager;->mAllWeatherTask:Landroid/os/AsyncTask;

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/hf/manager/WeatherManager;->mAllWeatherTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public queryWarning()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/hf/manager/WeatherManager;->mWarnTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/hf/manager/WeatherManager;->mWarnTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 303
    :cond_0
    new-instance v0, Lcom/hf/manager/WeatherManager$2;

    invoke-direct {v0, p0}, Lcom/hf/manager/WeatherManager$2;-><init>(Lcom/hf/manager/WeatherManager;)V

    iput-object v0, p0, Lcom/hf/manager/WeatherManager;->mWarnTask:Landroid/os/AsyncTask;

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/hf/manager/WeatherManager;->mWarnTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    goto :goto_0

    .line 364
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public updateWeather(Ljava/lang/String;)V
    .locals 2
    .parameter "cityID"

    .prologue
    .line 639
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    :goto_0
    return-void

    .line 643
    :cond_0
    :try_start_0
    new-instance v0, Lcom/hf/manager/WeatherManager$4;

    invoke-direct {v0, p0, p1}, Lcom/hf/manager/WeatherManager$4;-><init>(Lcom/hf/manager/WeatherManager;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 721
    invoke-virtual {v0, v1}, Lcom/hf/manager/WeatherManager$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    goto :goto_0
.end method
