.class public Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;
.super Ljava/lang/Object;
.source "WeatherWidgetDataUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$WeatherRequestReceiver;,
        Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherWidgetDataUpdate"

.field protected static final WEATHER_QUERY_TOKEN:I


# instance fields
.field private info:Lcom/zte/appwidget/hfweather/WeatherInfo;

.field private mAppWidgetProvider:Lcom/zte/appwidget/hfweather/HFWeatherWidget;

.field private final mDateTimeReceiver:Landroid/content/BroadcastReceiver;

.field protected mQueryHandler:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;

.field private mService:Landroid/app/Service;

.field private mWeatherObserver:Landroid/database/ContentObserver;

.field private final mWeatherRequestReceiver:Landroid/content/BroadcastReceiver;

.field private noCityFlag:Z

.field private sharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->getInstance()Lcom/zte/appwidget/hfweather/HFWeatherWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mAppWidgetProvider:Lcom/zte/appwidget/hfweather/HFWeatherWidget;

    .line 43
    new-instance v0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$WeatherRequestReceiver;

    invoke-direct {v0, p0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$WeatherRequestReceiver;-><init>(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)V

    iput-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mWeatherRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$1;

    invoke-direct {v0, p0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$1;-><init>(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)V

    iput-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mDateTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    new-instance v0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$2;-><init>(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mWeatherObserver:Landroid/database/ContentObserver;

    .line 47
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mService:Landroid/app/Service;

    .line 48
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mService:Landroid/app/Service;

    const-string v1, "HFWeatherSetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->sharedPreference:Landroid/content/SharedPreferences;

    .line 49
    new-instance v0, Lcom/zte/appwidget/hfweather/WeatherInfo;

    invoke-direct {v0}, Lcom/zte/appwidget/hfweather/WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->info:Lcom/zte/appwidget/hfweather/WeatherInfo;

    .line 51
    invoke-direct {p0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Landroid/app/Service;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mService:Landroid/app/Service;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Lcom/zte/appwidget/hfweather/WeatherInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->info:Lcom/zte/appwidget/hfweather/WeatherInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;Lcom/zte/appwidget/hfweather/WeatherInfo;)Lcom/zte/appwidget/hfweather/WeatherInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->info:Lcom/zte/appwidget/hfweather/WeatherInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->noCityFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->noCityFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Lcom/zte/appwidget/hfweather/HFWeatherWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mAppWidgetProvider:Lcom/zte/appwidget/hfweather/HFWeatherWidget;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;Landroid/database/Cursor;)Lcom/zte/appwidget/hfweather/WeatherInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->saveWeatherInfo(Landroid/database/Cursor;)Lcom/zte/appwidget/hfweather/WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->sharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->addMyLocayion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->getMyLocation()V

    return-void
.end method

.method private addMyLocayion(Ljava/lang/String;)V
    .locals 2
    .parameter "cityID"

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "com.hf.QUERY_NEW_CITY_WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v1, "cityID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mService:Landroid/app/Service;

    invoke-virtual {v1, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    return-void
.end method

.method private formatCityName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .parameter "c"

    .prologue
    .line 169
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, englishName:Ljava/lang/String;
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, reName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 174
    .end local v2           #reName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 173
    .restart local v2       #reName:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->isChinese()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 174
    goto :goto_0
.end method

.method private getMyLocation()V
    .locals 2

    .prologue
    .line 258
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "com.hf.weather.LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mService:Landroid/app/Service;

    invoke-virtual {v1, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 261
    return-void
.end method

.method private getMyLocationSwitch()V
    .locals 2

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "com.zte.BOOT_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-object v1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mService:Landroid/app/Service;

    invoke-virtual {v1, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 55
    iget-object v2, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mQueryHandler:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;

    if-nez v2, :cond_0

    .line 56
    new-instance v2, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;

    iget-object v3, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mService:Landroid/app/Service;

    invoke-virtual {v3}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;-><init>(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mQueryHandler:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mService:Landroid/app/Service;

    invoke-virtual {v2}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->resolveUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mWeatherObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, datetimeFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mService:Landroid/app/Service;

    iget-object v3, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mDateTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.hf.UPDATE_WEATHER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, weatherFilter:Landroid/content/IntentFilter;
    const-string v2, "com.hf.QUERY_WEATHER_FAILED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v2, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v2, "com.hf.MODIFY_CITY_NAME"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v2, "com.hf.UPDATE_ALL_WEATHER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v2, "com.hf.UPDATE_ALL_WEATHER_FAILED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v2, "com.hf.QUERY_NEW_CITY_WEATHER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v2, "com.hf.QUERY_WEATHER_FAILED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v2, "com.hf.ADD_CITY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v2, "com.hf.weather.LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v2, "com.hf.location.FAILED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v2, "com.hf.location.EXTERNAL_SUCCESSED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v2, "com.hf.QUERY_WEATHER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v2, "com.hf.QUERY_ALL_WEATHER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v2, "com.hf.CHANGE_TEMPERATURE_TYPE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v2, "com.zte.BOOT_SWITCH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v2, "com.zte.BOOT_SWITCH_RESULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mService:Landroid/app/Service;

    iget-object v3, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mWeatherRequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->query()V

    .line 88
    invoke-direct {p0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->getMyLocationSwitch()V

    .line 89
    return-void
.end method

.method private isChinese()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 178
    sget-object v6, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, chinese:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 181
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 182
    .local v2, config:Landroid/content/res/Configuration;
    iget-object v6, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, language:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    .line 188
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #config:Landroid/content/res/Configuration;
    .end local v4           #language:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 185
    :catch_0
    move-exception v3

    .line 186
    .local v3, ex:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private saveWeatherInfo(Landroid/database/Cursor;)Lcom/zte/appwidget/hfweather/WeatherInfo;
    .locals 2
    .parameter "c"

    .prologue
    .line 160
    new-instance v0, Lcom/zte/appwidget/hfweather/WeatherInfo;

    invoke-direct {v0}, Lcom/zte/appwidget/hfweather/WeatherInfo;-><init>()V

    .line 161
    .local v0, wInfo:Lcom/zte/appwidget/hfweather/WeatherInfo;
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/appwidget/hfweather/WeatherInfo;->setCityID(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->formatCityName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/appwidget/hfweather/WeatherInfo;->setCityName(Ljava/lang/String;)V

    .line 163
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/appwidget/hfweather/WeatherInfo;->setCurrentConditionImg(I)V

    .line 164
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/appwidget/hfweather/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 165
    return-object v0
.end method


# virtual methods
.method public onDelete(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 192
    const-string v0, "zy"

    const-string v1, "onDelete..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mWeatherObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mWeatherObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mDateTimeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mDateTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mWeatherRequestReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mWeatherRequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    :cond_2
    return-void
.end method

.method public query()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->resolveUri()Landroid/net/Uri;

    move-result-object v3

    .line 115
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mQueryHandler:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/zte/appwidget/hfweather/WeatherColumns;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected resolveUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 109
    const-string v0, "content://hf.weather/weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
