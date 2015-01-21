.class public Lcom/hf/HFWeatherApp;
.super Landroid/app/Application;
.source "HFWeatherApp.java"


# static fields
.field private static final COLUMN_WEATHER_DEFAULT:I = 0x4

.field private static final COLUMN_WEATHER_DISPLAY_NAME:I = 0x3

.field private static final COLUMN_WEATHER_ENGLISH_NAME:I = 0x5

.field private static final COLUMN_WEATHER_ID:I = 0x0

.field private static final COLUMN_WEATHER_NAME:I = 0x1

.field private static final COLUMN_WEATHER_PINYIN:I = 0x2

.field private static final SELECTION:Ljava/lang/String; = "cityId=?"

.field private static final WEATHER_PROJECT:[Ljava/lang/String;

.field public static mCityModel:Lcom/hf/UI/CityList;

.field public static mDefaultCity:Lcom/hf/model/CityModel;

.field public static mWarningMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/WarningModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public static mWeathersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/hf/model/WeatherModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mWeatherCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cityId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 48
    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 49
    const-string v2, "pinyin"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 50
    const-string v2, "cityDisplayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 51
    const-string v2, "isDefault"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 52
    const-string v2, "englishName"

    aput-object v2, v0, v1

    .line 47
    sput-object v0, Lcom/hf/HFWeatherApp;->WEATHER_PROJECT:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private checkDefaultCity()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 209
    sget-object v2, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-nez v2, :cond_0

    .line 210
    sget-object v2, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-eqz v2, :cond_0

    .line 211
    sget-object v2, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v2}, Lcom/hf/UI/CityList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    sget-object v2, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v2, v7}, Lcom/hf/UI/CityList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/model/CityModel;

    .line 213
    .local v0, city:Lcom/hf/model/CityModel;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 214
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "isDefault"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    invoke-virtual {p0}, Lcom/hf/HFWeatherApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    const-string v4, "isDefault=1"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 216
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 218
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #values:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .restart local v1       #values:Landroid/content/ContentValues;
    const-string v2, "isDefault"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    invoke-virtual {p0}, Lcom/hf/HFWeatherApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    const-string v4, "cityId=?"

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    sget-object v2, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v2, v0}, Lcom/hf/UI/CityList;->remove(Ljava/lang/Object;)Z

    .line 222
    sput-object v0, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 223
    sget-object v2, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    iput-boolean v8, v2, Lcom/hf/model/CityModel;->isDefault:Z

    .line 225
    .end local v0           #city:Lcom/hf/model/CityModel;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private startAPP()V
    .locals 6

    .prologue
    .line 92
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 93
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v4, "first_run_app"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 94
    .local v2, isFirst:Z
    if-eqz v2, :cond_0

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.hf.APP_START"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/hf/HFWeatherApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "first_run_app"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.hf.NOTIFY_OPEN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/hf/HFWeatherApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    invoke-static {p0}, Lcom/hf/widget/WidgetUtil;->widget_4_2_is_running(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v4, Lcom/hf/widget/TimeService;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/hf/HFWeatherApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isFirst:Z
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private storeCityAndWeather(Lcom/hf/model/CityModel;)V
    .locals 10
    .parameter "city"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 232
    if-nez p1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    sget-boolean v4, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v4, :cond_2

    .line 236
    const-string v4, "storeCityAndWeather"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cityId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; isDefault = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p1, Lcom/hf/model/CityModel;->isDefault:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_2
    const v4, 0x7f080124

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-virtual {p0, v4, v5}, Lcom/hf/HFWeatherApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, fileName:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/hf/utils/Util;->readWeatherFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 242
    .local v2, stream:Ljava/io/InputStream;
    iget-object v4, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {p0, v2, v4}, Lcom/hf/utils/Util;->parseWeatherFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/hf/model/WeatherModel;

    move-result-object v1

    .line 243
    .local v1, model:Lcom/hf/model/WeatherModel;
    if-nez v1, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/hf/HFWeatherApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    const-string v6, "cityId=?"

    new-array v7, v7, [Ljava/lang/String;

    iget-object v8, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_3
    sget-object v4, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-nez v4, :cond_4

    .line 250
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    .line 252
    :cond_4
    sget-object v4, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v5, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-boolean v4, p1, Lcom/hf/model/CityModel;->isDefault:Z

    if-eqz v4, :cond_6

    .line 256
    sput-object p1, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 265
    :goto_1
    const v4, 0x7f080121

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-virtual {p0, v4, v5}, Lcom/hf/HFWeatherApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/hf/utils/Util;->readWeatherFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/hf/utils/Util;->parseWarning(Landroid/content/Context;Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    .line 266
    .local v3, warningList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    if-eqz v3, :cond_0

    .line 267
    sget-object v4, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    if-nez v4, :cond_5

    .line 268
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    .line 270
    :cond_5
    sget-object v4, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    iget-object v5, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 258
    .end local v3           #warningList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    :cond_6
    sget-object v4, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-nez v4, :cond_7

    .line 259
    new-instance v4, Lcom/hf/UI/CityList;

    invoke-direct {v4}, Lcom/hf/UI/CityList;-><init>()V

    sput-object v4, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    .line 261
    :cond_7
    sget-object v4, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v4, p1}, Lcom/hf/UI/CityList;->add(Lcom/hf/model/CityModel;)Z

    goto :goto_1
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    sget-object v0, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 281
    sput-object v1, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    .line 284
    :cond_0
    sget-object v0, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 285
    sget-object v0, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 286
    sput-object v1, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    .line 289
    :cond_1
    sget-object v0, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-eqz v0, :cond_2

    .line 290
    sget-object v0, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v0}, Lcom/hf/UI/CityList;->clear()V

    .line 291
    sput-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    .line 294
    :cond_2
    sget-object v0, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-eqz v0, :cond_3

    .line 295
    sput-object v1, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 297
    :cond_3
    return-void
.end method

.method public final getCityByCtiyId(Ljava/lang/String;)Lcom/hf/model/CityModel;
    .locals 5
    .parameter "cityId"

    .prologue
    .line 123
    sget-object v4, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-eqz v4, :cond_1

    .line 124
    sget-object v4, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    iget-object v4, v4, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    sget-object v0, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    const/4 v0, 0x0

    .line 130
    .local v0, city:Lcom/hf/model/CityModel;
    sget-object v4, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-nez v4, :cond_2

    .line 131
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :cond_2
    sget-object v4, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v4}, Lcom/hf/UI/CityList;->size()I

    move-result v3

    .line 134
    .local v3, len:I
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 135
    sget-object v4, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v4, v1}, Lcom/hf/UI/CityList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hf/model/CityModel;

    .line 136
    .local v2, item:Lcom/hf/model/CityModel;
    iget-object v4, v2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 137
    move-object v0, v2

    .line 138
    goto :goto_0

    .line 134
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public final declared-synchronized initWeathers()V
    .locals 14

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hf/HFWeatherApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/hf/HFWeatherApp;->WEATHER_PROJECT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;

    .line 171
    iget-object v0, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v9, cityList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CityModel;>;"
    :goto_1
    iget-object v0, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;

    .line 197
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 201
    invoke-direct {p0}, Lcom/hf/HFWeatherApp;->checkDefaultCity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    .end local v9           #cityList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CityModel;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    .restart local v9       #cityList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CityModel;>;"
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, cityId:Ljava/lang/String;
    iget-object v0, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, cityName:Ljava/lang/String;
    iget-object v0, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, cityPinyin:Ljava/lang/String;
    iget-object v0, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, cityDisplayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 182
    .local v12, englishName:Ljava/lang/String;
    iget-object v0, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 183
    .local v13, isDefault:I
    new-instance v6, Lcom/hf/model/CityModel;

    invoke-direct {v6}, Lcom/hf/model/CityModel;-><init>()V

    .line 184
    .local v6, city:Lcom/hf/model/CityModel;
    iput-object v8, v6, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    .line 185
    iput-object v10, v6, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    .line 186
    iput-object v11, v6, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    .line 187
    iput-object v12, v6, Lcom/hf/model/CityModel;->englishName:Ljava/lang/String;

    .line 188
    iput-object v7, v6, Lcom/hf/model/CityModel;->displayName:Ljava/lang/String;

    .line 190
    const/4 v0, 0x1

    if-ne v13, v0, :cond_2

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v6, Lcom/hf/model/CityModel;->isDefault:Z

    .line 191
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 197
    .end local v6           #city:Lcom/hf/model/CityModel;
    .end local v7           #cityDisplayName:Ljava/lang/String;
    .end local v8           #cityId:Ljava/lang/String;
    .end local v10           #cityName:Ljava/lang/String;
    .end local v11           #cityPinyin:Ljava/lang/String;
    .end local v12           #englishName:Ljava/lang/String;
    .end local v13           #isDefault:I
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hf/model/CityModel;

    .line 198
    .restart local v6       #city:Lcom/hf/model/CityModel;
    invoke-direct {p0, v6}, Lcom/hf/HFWeatherApp;->storeCityAndWeather(Lcom/hf/model/CityModel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final isWeatherWarningActivityTop()Z
    .locals 8

    .prologue
    .line 149
    const/4 v5, 0x0

    .line 150
    .local v5, isTop:Z
    invoke-virtual {p0}, Lcom/hf/HFWeatherApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 151
    .local v1, activityManager:Landroid/app/ActivityManager;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 152
    .local v3, forGroundActivity:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 153
    .local v4, info:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 154
    .local v0, activity:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, className:Ljava/lang/String;
    const-string v6, "com.hf.UI."

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 157
    const-string v6, "com.hf.UI.WarningListActivity"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 158
    const-string v6, "com.hf.preference"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    :cond_0
    const/4 v5, 0x1

    .line 161
    :cond_1
    return v5
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 78
    const-string v0, "HFWeatherApp"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/hf/HFWeatherApp;->startAPP()V

    .line 80
    invoke-static {}, Lcom/hf/utils/CrashHandler;->getInstance()Lcom/hf/utils/CrashHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hf/HFWeatherApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hf/utils/CrashHandler;->init(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 87
    return-void
.end method

.method public stopInitWeathers()V
    .locals 4

    .prologue
    .line 303
    const/4 v0, 0x1

    .line 304
    .local v0, isClosed:Z
    iget-object v1, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    .line 306
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "onCancelled"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isClosed1 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    if-nez v0, :cond_1

    .line 311
    iget-object v1, p0, Lcom/hf/HFWeatherApp;->mWeatherCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_1
    return-void
.end method
