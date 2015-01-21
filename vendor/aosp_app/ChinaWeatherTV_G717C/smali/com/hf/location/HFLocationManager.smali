.class public Lcom/hf/location/HFLocationManager;
.super Ljava/lang/Object;
.source "HFLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/location/HFLocationManager$MyLocationListenner;
    }
.end annotation


# static fields
.field private static final COLUMN_CITY_ENGLISH_NAME:I = 0x4

.field private static final COLUMN_CITY_ID:I = 0x1

.field private static final COLUMN_CITY_NAME:I = 0x2

.field private static final COLUMN_CITY_PINYIN:I = 0x3

.field public static final LAT_KEY:Ljava/lang/String; = "lat"

.field public static final LNG_KEY:Ljava/lang/String; = "lng"

.field public static final LOCATION_CANCLE:I = -0x1

.field public static final LOCATION_FAILED:I = 0xc9

.field public static final LOCATION_START:I = 0xc8

.field public static final LOCATION_SUCCESSED:I = 0xca

.field private static final QUERY_CITY_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LocationManager"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/hf/location/HFLocationManager;


# instance fields
.field private isLocating:Z

.field private mHandler:Landroid/os/Handler;

.field private mLat:Ljava/lang/String;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/location/HFLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLng:Ljava/lang/String;

.field private mLocationClient:Lcom/baidu/location/LocationClient;

.field private mTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 39
    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 40
    const-string v2, "pinyin"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 41
    const-string v2, "englishName"

    aput-object v2, v0, v1

    .line 38
    sput-object v0, Lcom/hf/location/HFLocationManager;->QUERY_CITY_PROJECTION:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hf/location/HFLocationManager;->isLocating:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hf/location/HFLocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 52
    new-instance v0, Lcom/hf/location/HFLocationManager$1;

    invoke-direct {v0, p0}, Lcom/hf/location/HFLocationManager$1;-><init>(Lcom/hf/location/HFLocationManager;)V

    iput-object v0, p0, Lcom/hf/location/HFLocationManager;->mTask:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hf/location/HFLocationManager;->mListeners:Ljava/util/List;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/hf/location/HFLocationManager;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hf/location/HFLocationManager;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/hf/location/HFLocationManager;ILcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Lcom/hf/location/HFLocationManager;->end(ILcom/hf/model/CityModel;)V

    return-void
.end method

.method static synthetic access$1(Lcom/hf/location/HFLocationManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/hf/location/HFLocationManager;->mLat:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/hf/location/HFLocationManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/hf/location/HFLocationManager;->mLng:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/hf/location/HFLocationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/hf/location/HFLocationManager;->findCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/hf/location/HFLocationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/hf/location/HFLocationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hf/model/CityModel;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/hf/location/HFLocationManager;->hasCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v0

    return-object v0
.end method

.method private end(ILcom/hf/model/CityModel;)V
    .locals 8
    .parameter "success"
    .parameter "city"

    .prologue
    .line 256
    sget-object v4, Lcom/hf/location/HFLocationManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/hf/location/HFLocationManager;->mContext:Landroid/content/Context;

    const-class v7, Lcom/baidu/location/f;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/baidu/tempdata/ls.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 263
    :cond_0
    iget-object v4, p0, Lcom/hf/location/HFLocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v4, :cond_1

    .line 264
    iget-object v4, p0, Lcom/hf/location/HFLocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v4}, Lcom/baidu/location/LocationClient;->stop()V

    .line 267
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/hf/location/HFLocationManager;->isLocating:Z

    .line 268
    iget-object v4, p0, Lcom/hf/location/HFLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/hf/location/HFLocationManager;->mTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    const/16 v4, 0xca

    if-ne p1, v4, :cond_2

    if-eqz p2, :cond_2

    .line 270
    invoke-direct {p0, p2}, Lcom/hf/location/HFLocationManager;->resultSuccessed(Lcom/hf/model/CityModel;)V

    .line 272
    :cond_2
    iget-object v4, p0, Lcom/hf/location/HFLocationManager;->mListeners:Ljava/util/List;

    if-nez v4, :cond_3

    .line 282
    :goto_0
    return-void

    .line 276
    :cond_3
    iget-object v4, p0, Lcom/hf/location/HFLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 277
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_4

    .line 281
    iget-object v4, p0, Lcom/hf/location/HFLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 278
    :cond_4
    iget-object v4, p0, Lcom/hf/location/HFLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hf/location/HFLocationListener;

    invoke-interface {v4, p1, p2}, Lcom/hf/location/HFLocationListener;->onResult(ILcom/hf/model/CityModel;)V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private findCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "district"
    .parameter "cityName"
    .parameter "province"

    .prologue
    .line 133
    new-instance v0, Lcom/hf/location/HFLocationManager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hf/location/HFLocationManager$2;-><init>(Lcom/hf/location/HFLocationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 189
    invoke-virtual {v0, v1}, Lcom/hf/location/HFLocationManager$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/hf/location/HFLocationManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 70
    const-class v1, Lcom/hf/location/HFLocationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hf/location/HFLocationManager;->mInstance:Lcom/hf/location/HFLocationManager;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/hf/location/HFLocationManager;

    invoke-direct {v0, p0}, Lcom/hf/location/HFLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hf/location/HFLocationManager;->mInstance:Lcom/hf/location/HFLocationManager;

    .line 74
    :cond_0
    sget-object v0, Lcom/hf/location/HFLocationManager;->mInstance:Lcom/hf/location/HFLocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hf/model/CityModel;
    .locals 14
    .parameter "district"
    .parameter "cityName"
    .parameter "provinceName"

    .prologue
    .line 198
    const/4 v7, 0x0

    .line 199
    .local v7, city:Lcom/hf/model/CityModel;
    const/4 v4, 0x0

    .line 200
    .local v4, selection:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(name LIKE \'%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    const-string v2, "englishName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string v2, "pinyin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\') "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    const-string v2, "province_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    const-string v2, "province_englishName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    :goto_0
    :try_start_0
    sget-object v1, Lcom/hf/location/HFLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/hf/data/Constant$CITY;->CITY_URI:Landroid/net/Uri;

    sget-object v3, Lcom/hf/location/HFLocationManager;->QUERY_CITY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 226
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 227
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 229
    .local v9, cityID:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 230
    .local v10, cityNa:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 231
    .local v13, pinyin:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 232
    .local v12, englishName:Ljava/lang/String;
    new-instance v8, Lcom/hf/model/CityModel;

    invoke-direct {v8}, Lcom/hf/model/CityModel;-><init>()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v7           #city:Lcom/hf/model/CityModel;
    .local v8, city:Lcom/hf/model/CityModel;
    :try_start_1
    iput-object v9, v8, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    .line 234
    iput-object v10, v8, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    .line 235
    iput-object v13, v8, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    .line 236
    iput-object v12, v8, Lcom/hf/model/CityModel;->englishName:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/hf/location/HFLocationManager;->mLat:Ljava/lang/String;

    iput-object v1, v8, Lcom/hf/model/CityModel;->lat:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/hf/location/HFLocationManager;->mLng:Ljava/lang/String;

    iput-object v1, v8, Lcom/hf/model/CityModel;->lng:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 241
    .end local v8           #city:Lcom/hf/model/CityModel;
    .end local v9           #cityID:Ljava/lang/String;
    .end local v10           #cityNa:Ljava/lang/String;
    .end local v12           #englishName:Ljava/lang/String;
    .end local v13           #pinyin:Ljava/lang/String;
    .restart local v7       #city:Lcom/hf/model/CityModel;
    :cond_0
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-object v7

    .line 211
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(name LIKE \'%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    const-string v2, "englishName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    const-string v2, "pinyin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\') "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    const-string v2, "AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    const-string v2, "city_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    const-string v2, "city_englishName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    const-string v2, "province_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    const-string v2, "province_englishName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 243
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .end local v7           #city:Lcom/hf/model/CityModel;
    .restart local v8       #city:Lcom/hf/model/CityModel;
    .restart local v9       #cityID:Ljava/lang/String;
    .restart local v10       #cityNa:Ljava/lang/String;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #englishName:Ljava/lang/String;
    .restart local v13       #pinyin:Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v7, v8

    .end local v8           #city:Lcom/hf/model/CityModel;
    .restart local v7       #city:Lcom/hf/model/CityModel;
    goto/16 :goto_1
.end method

.method private initLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 119
    new-instance v1, Lcom/baidu/location/LocationClient;

    sget-object v2, Lcom/hf/location/HFLocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hf/location/HFLocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 120
    iget-object v1, p0, Lcom/hf/location/HFLocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    new-instance v2, Lcom/hf/location/HFLocationManager$MyLocationListenner;

    invoke-direct {v2, p0}, Lcom/hf/location/HFLocationManager$MyLocationListenner;-><init>(Lcom/hf/location/HFLocationManager;)V

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 121
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 122
    .local v0, option:Lcom/baidu/location/LocationClientOption;
    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 123
    const-string v1, "com.baidu.location.service_v2.9"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setServiceName(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->setPoiExtraInfo(Z)V

    .line 125
    const-string v1, "all"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setAddrType(Ljava/lang/String;)V

    .line 126
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setPriority(I)V

    .line 127
    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->disableCache(Z)V

    .line 128
    iget-object v1, p0, Lcom/hf/location/HFLocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 129
    return-void
.end method

.method private resultSuccessed(Lcom/hf/model/CityModel;)V
    .locals 5
    .parameter "city"

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.hf.location.EXTERNAL_SUCCESSED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "cityID"

    iget-object v4, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object v1, p1, Lcom/hf/model/CityModel;->lat:Ljava/lang/String;

    .line 300
    .local v1, lat:Ljava/lang/String;
    const-string v3, "lat"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    iget-object v2, p1, Lcom/hf/model/CityModel;->lng:Ljava/lang/String;

    .line 302
    .local v2, lng:Ljava/lang/String;
    const-string v3, "lng"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    sget-object v3, Lcom/hf/location/HFLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    return-void
.end method


# virtual methods
.method public cancle()V
    .locals 2

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/hf/location/HFLocationManager;->isLocating:Z

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hf/location/HFLocationManager;->end(ILcom/hf/model/CityModel;)V

    .line 289
    :cond_0
    return-void
.end method

.method public declared-synchronized start(Lcom/hf/location/HFLocationListener;Z)V
    .locals 5
    .parameter "listener"
    .parameter "openGPS"

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/hf/location/HFLocationManager;->mListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hf/location/HFLocationManager;->mListeners:Ljava/util/List;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/hf/location/HFLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/hf/location/HFLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    iget-boolean v1, p0, Lcom/hf/location/HFLocationManager;->isLocating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 116
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/hf/location/HFLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hf/location/HFLocationManager;->mTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hf/location/HFLocationManager;->isLocating:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    invoke-direct {p0}, Lcom/hf/location/HFLocationManager;->initLocation()V

    .line 105
    iget-object v1, p0, Lcom/hf/location/HFLocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1}, Lcom/baidu/location/LocationClient;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "LocationManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    const/16 v1, 0xc9

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/hf/location/HFLocationManager;->end(ILcom/hf/model/CityModel;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 83
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
