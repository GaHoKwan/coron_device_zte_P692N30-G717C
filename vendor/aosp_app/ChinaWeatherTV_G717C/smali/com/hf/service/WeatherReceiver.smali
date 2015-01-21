.class public Lcom/hf/service/WeatherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherReceiver.java"

# interfaces
.implements Lcom/hf/location/HFLocationListener;


# static fields
.field public static final AM_ALARM_ID:I = 0x2714

.field public static final PM_ALARM_ID:I = 0x2715

.field private static final TAG:Ljava/lang/String; = "WeatherReceiver"

.field public static final TRAFFIC_ALARM_ID:I = 0x2713

.field public static final WARN_ALARM_ID:I = 0x2711

.field public static final WEATHER_ALARM_ID:I = 0x2712


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLocationManager:Lcom/hf/location/HFLocationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    new-instance v0, Lcom/hf/service/WeatherReceiver$1;

    invoke-direct {v0, p0}, Lcom/hf/service/WeatherReceiver$1;-><init>(Lcom/hf/service/WeatherReceiver;)V

    iput-object v0, p0, Lcom/hf/service/WeatherReceiver;->mHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/hf/service/WeatherReceiver;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/service/WeatherReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setTrafficAlarm()V

    return-void
.end method

.method private addCity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "action"

    .prologue
    .line 330
    const-string v1, "cityID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, cityId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const-string v1, "cityId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_0
    const-string v1, "com.ztemt.action.hfweather.CREATECITY"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    const-string v1, "ZTE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recive action : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; cityId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    invoke-static {p1}, Lcom/hf/manager/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/hf/manager/WeatherManager;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/hf/manager/WeatherManager;->addCity(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method private getBoot()V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/service/WeatherReceiver$3;

    invoke-direct {v1, p0}, Lcom/hf/service/WeatherReceiver$3;-><init>(Lcom/hf/service/WeatherReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 170
    return-void
.end method

.method private getTemperatureType()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/service/WeatherReceiver$2;

    invoke-direct {v1, p0}, Lcom/hf/service/WeatherReceiver$2;-><init>(Lcom/hf/service/WeatherReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    return-void
.end method

.method private location()V
    .locals 2

    .prologue
    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hf/location/HFLocationManager;->getInstance(Landroid/content/Context;)Lcom/hf/location/HFLocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/service/WeatherReceiver;->mLocationManager:Lcom/hf/location/HFLocationManager;

    .line 370
    iget-object v0, p0, Lcom/hf/service/WeatherReceiver;->mLocationManager:Lcom/hf/location/HFLocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/hf/location/HFLocationManager;->start(Lcom/hf/location/HFLocationListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private queryWarning()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hf/manager/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/hf/manager/WeatherManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/manager/WeatherManager;->queryWarning()V

    .line 358
    return-void
.end method

.method private resetTraffic(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 237
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/service/WeatherReceiver$5;

    invoke-direct {v1, p0, p1}, Lcom/hf/service/WeatherReceiver$5;-><init>(Lcom/hf/service/WeatherReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    return-void
.end method

.method private setQueryWarningAlarm()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hf/utils/AlarmUtil;->getInstance(Landroid/content/Context;)Lcom/hf/utils/AlarmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/utils/AlarmUtil;->setWarningAlarm()V

    .line 276
    return-void
.end method

.method private declared-synchronized setTraffic(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/hf/utils/Util;->isZTE(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/hf/utils/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 184
    .local v1, netType:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 188
    const-string v5, "traffic"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 189
    .local v2, preference:Landroid/content/SharedPreferences;
    const-string v5, "is_wifi_net"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 190
    .local v0, isWifi:Z
    if-eqz v0, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    if-nez v0, :cond_3

    if-eq v1, v3, :cond_4

    :cond_3
    move v3, v4

    .line 191
    .local v3, same:Z
    :cond_4
    if-nez v3, :cond_0

    .line 195
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/hf/service/WeatherReceiver$4;

    invoke-direct {v5, p0, v2, v1, v0}, Lcom/hf/service/WeatherReceiver$4;-><init>(Lcom/hf/service/WeatherReceiver;Landroid/content/SharedPreferences;IZ)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 227
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    .end local v0           #isWifi:Z
    .end local v1           #netType:I
    .end local v2           #preference:Landroid/content/SharedPreferences;
    .end local v3           #same:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private setTrafficAlarm()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hf/utils/AlarmUtil;->getInstance(Landroid/content/Context;)Lcom/hf/utils/AlarmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/utils/AlarmUtil;->setTrafficAlarm()V

    .line 269
    return-void
.end method

.method private setUpdateWeatherAMAlarm()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hf/utils/AlarmUtil;->getInstance(Landroid/content/Context;)Lcom/hf/utils/AlarmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/utils/AlarmUtil;->setUpdateWeatherAMAlarm()V

    .line 283
    return-void
.end method

.method private setUpdateWeatherAlarm()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hf/utils/AlarmUtil;->getInstance(Landroid/content/Context;)Lcom/hf/utils/AlarmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/utils/AlarmUtil;->setUpdateWeatherAlarm()V

    .line 297
    return-void
.end method

.method private setUpdateWeatherPMAlarm()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hf/utils/AlarmUtil;->getInstance(Landroid/content/Context;)Lcom/hf/utils/AlarmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/utils/AlarmUtil;->setUpdateWeatherPMAlarm()V

    .line 290
    return-void
.end method

.method private updateWeather(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 346
    const-string v1, "cityID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, cityId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    const-string v1, "cityId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_0
    invoke-static {p1}, Lcom/hf/manager/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/hf/manager/WeatherManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hf/manager/WeatherManager;->updateWeather(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method private declared-synchronized updateWeathers(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "isRepeat"
    .parameter "tag"

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const-string p3, "receive ZTE update all weather action"

    .line 320
    :cond_0
    invoke-static {p1}, Lcom/hf/manager/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/hf/manager/WeatherManager;

    move-result-object v0

    .line 321
    .local v0, manager:Lcom/hf/manager/WeatherManager;
    invoke-virtual {v0, p2, p3}, Lcom/hf/manager/WeatherManager;->queryAllWeather(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 317
    .end local v0           #manager:Lcom/hf/manager/WeatherManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateWeathersFormWidget()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    const v2, 0x7f08004b

    invoke-static {v1, v2}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v0

    .line 305
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 306
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0           #toast:Landroid/widget/Toast;
    :goto_0
    iget-object v1, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    const-string v2, "widget update button clicked"

    invoke-direct {p0, v1, v4, v2}, Lcom/hf/service/WeatherReceiver;->updateWeathers(Landroid/content/Context;ZLjava/lang/String;)V

    .line 311
    return-void

    .line 307
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v8, 0x1388

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v1, buffer:Ljava/lang/StringBuffer;
    const-string v3, "yyyy-MM-dd hh:mm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 74
    const-string v3, " receive action : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v3, "weather_log.txt"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/hf/data/LogTag;->writeToSDcard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    const-string v4, "boot"

    invoke-direct {p0, v3, v6, v4}, Lcom/hf/service/WeatherReceiver;->updateWeathers(Landroid/content/Context;ZLjava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setQueryWarningAlarm()V

    .line 82
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setUpdateWeatherAlarm()V

    .line 83
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setUpdateWeatherAMAlarm()V

    .line 84
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setUpdateWeatherPMAlarm()V

    .line 85
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/hf/service/WeatherReceiver;->resetTraffic(Landroid/content/Context;)V

    .line 86
    invoke-static {p1}, Lcom/hf/manager/HFPackageManager;->getInstance(Landroid/content/Context;)Lcom/hf/manager/HFPackageManager;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lcom/hf/manager/HFPackageManager;->exitFromReceiver(J)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v3, "com.hf.QUERY_ALL_WEATHER"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    const-string v3, "tag"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, tag:Ljava/lang/String;
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v6, v2}, Lcom/hf/service/WeatherReceiver;->updateWeathers(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v2           #tag:Ljava/lang/String;
    :cond_2
    const-string v3, "com.hf.QUERY_ALL_WEATHER_WIDGET"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->updateWeathersFormWidget()V

    goto :goto_0

    .line 92
    :cond_3
    const-string v3, "com.hf.QUERY_WARNING"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->queryWarning()V

    .line 94
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setQueryWarningAlarm()V

    goto :goto_0

    .line 95
    :cond_4
    const-string v3, "com.ztemt.action.hfweather.CREATECITY"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 96
    const-string v3, "com.hf.QUERY_NEW_CITY_WEATHER"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 97
    :cond_5
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, p2, v0}, Lcom/hf/service/WeatherReceiver;->addCity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_6
    const-string v3, "com.hf.QUERY_WEATHER"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 99
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, p2}, Lcom/hf/service/WeatherReceiver;->updateWeather(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    :cond_7
    const-string v3, "com.hf.weather.LOCATION"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 101
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->location()V

    goto :goto_0

    .line 102
    :cond_8
    const-string v3, "com.hf.APP_START"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 103
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setQueryWarningAlarm()V

    .line 104
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setUpdateWeatherAlarm()V

    .line 105
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setUpdateWeatherAMAlarm()V

    .line 106
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setUpdateWeatherPMAlarm()V

    .line 107
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/hf/service/WeatherReceiver;->resetTraffic(Landroid/content/Context;)V

    goto :goto_0

    .line 108
    :cond_9
    const-string v3, "com.hf.RESET_TRAFFIC"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 109
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/hf/service/WeatherReceiver;->resetTraffic(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 110
    :cond_a
    const-string v3, "com.hf.QUERY_ALL_WEATHER_NET_STATE_CHANGE"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 112
    const-string v3, "network changed"

    invoke-direct {p0, p1, v6, v3}, Lcom/hf/service/WeatherReceiver;->updateWeathers(Landroid/content/Context;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_b
    const-string v3, "com.hf.QUERY_ALL_WEATHER_AM"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 114
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    const-string v4, "am"

    invoke-direct {p0, v3, v7, v4}, Lcom/hf/service/WeatherReceiver;->updateWeathers(Landroid/content/Context;ZLjava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setUpdateWeatherAMAlarm()V

    goto/16 :goto_0

    .line 116
    :cond_c
    const-string v3, "com.hf.QUERY_ALL_WEATHER_PM"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 117
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    const-string v4, "pm"

    invoke-direct {p0, v3, v7, v4}, Lcom/hf/service/WeatherReceiver;->updateWeathers(Landroid/content/Context;ZLjava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setUpdateWeatherPMAlarm()V

    goto/16 :goto_0

    .line 119
    :cond_d
    const-string v3, "com.hf.QUERY_ALL_WEATHER_ALARM"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 120
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-direct {p0, v3, v7, v4}, Lcom/hf/service/WeatherReceiver;->updateWeathers(Landroid/content/Context;ZLjava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setUpdateWeatherAlarm()V

    goto/16 :goto_0

    .line 122
    :cond_e
    const-string v3, "com.hf.CHANGE_UPDATE_TIME"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 123
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setUpdateWeatherAlarm()V

    .line 124
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->setQueryWarningAlarm()V

    goto/16 :goto_0

    .line 125
    :cond_f
    const-string v3, "com.zte.BOOT_SWITCH"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 126
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->getBoot()V

    goto/16 :goto_0

    .line 127
    :cond_10
    const-string v3, "com.hf.KILL_PROCESS"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 128
    invoke-static {p1}, Lcom/hf/manager/HFPackageManager;->getInstance(Landroid/content/Context;)Lcom/hf/manager/HFPackageManager;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lcom/hf/manager/HFPackageManager;->exitFromReceiver(J)V

    goto/16 :goto_0

    .line 129
    :cond_11
    const-string v3, "com.zte.TEMPTERATURE_TYPE"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/hf/service/WeatherReceiver;->getTemperatureType()V

    goto/16 :goto_0
.end method

.method public onResult(ILcom/hf/model/CityModel;)V
    .locals 2
    .parameter "result"
    .parameter "city"

    .prologue
    .line 378
    iget-object v1, p0, Lcom/hf/service/WeatherReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 379
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 380
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 381
    iget-object v1, p0, Lcom/hf/service/WeatherReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    return-void
.end method
