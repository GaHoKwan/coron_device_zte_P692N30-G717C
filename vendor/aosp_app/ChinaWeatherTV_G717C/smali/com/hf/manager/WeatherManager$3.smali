.class Lcom/hf/manager/WeatherManager$3;
.super Landroid/os/AsyncTask;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/manager/WeatherManager;->addCity(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field private city:Lcom/hf/model/CityModel;

.field hasCity:Z

.field isDefault:Z

.field private mDefault:I

.field private mModel:Lcom/hf/model/WeatherModel;

.field final synthetic this$0:Lcom/hf/manager/WeatherManager;

.field private final synthetic val$cityId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hf/manager/WeatherManager;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1
    iput-object p1, p0, Lcom/hf/manager/WeatherManager$3;->this$0:Lcom/hf/manager/WeatherManager;

    iput-object p2, p0, Lcom/hf/manager/WeatherManager$3;->val$cityId:Ljava/lang/String;

    .line 470
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 472
    const/4 v0, 0x1

    iput v0, p0, Lcom/hf/manager/WeatherManager$3;->mDefault:I

    .line 473
    iput-boolean v1, p0, Lcom/hf/manager/WeatherManager$3;->isDefault:Z

    .line 474
    iput-boolean v1, p0, Lcom/hf/manager/WeatherManager$3;->hasCity:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .parameter "params"

    .prologue
    .line 485
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->this$0:Lcom/hf/manager/WeatherManager;

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$3;->val$cityId:Ljava/lang/String;

    #calls: Lcom/hf/manager/WeatherManager;->findCity(Ljava/lang/String;)Lcom/hf/model/CityModel;
    invoke-static {v9, v10}, Lcom/hf/manager/WeatherManager;->access$5(Lcom/hf/manager/WeatherManager;Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    .line 487
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    if-nez v9, :cond_6

    .line 488
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->this$0:Lcom/hf/manager/WeatherManager;

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$3;->val$cityId:Ljava/lang/String;

    #calls: Lcom/hf/manager/WeatherManager;->createCity(Ljava/lang/String;)Lcom/hf/model/CityModel;
    invoke-static {v9, v10}, Lcom/hf/manager/WeatherManager;->access$6(Lcom/hf/manager/WeatherManager;Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    .line 489
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    if-nez v9, :cond_0

    .line 490
    const/4 v9, 0x0

    .line 577
    :goto_0
    return-object v9

    .line 497
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/hf/manager/WeatherManager$3;->hasCity:Z

    .line 507
    :goto_1
    invoke-static {}, Lcom/hf/http/WeatherNet;->getInstance()Lcom/hf/http/WeatherNet;

    move-result-object v9

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$3;->val$cityId:Ljava/lang/String;

    iget-object v11, p0, Lcom/hf/manager/WeatherManager$3;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/hf/http/WeatherNet;->queryWeather(Ljava/lang/String;Landroid/content/Context;)Lcom/hf/model/WeatherModel;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/manager/WeatherManager$3;->mModel:Lcom/hf/model/WeatherModel;

    .line 508
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->mModel:Lcom/hf/model/WeatherModel;

    if-eqz v9, :cond_5

    .line 509
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    iget-object v10, v10, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/hf/utils/Util;->isDefault(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/hf/manager/WeatherManager$3;->isDefault:Z

    .line 511
    const-string v9, "add-new-city"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "is the default city = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/hf/manager/WeatherManager$3;->isDefault:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-boolean v9, p0, Lcom/hf/manager/WeatherManager$3;->isDefault:Z

    if-eqz v9, :cond_7

    .line 513
    const/4 v9, 0x1

    iput v9, p0, Lcom/hf/manager/WeatherManager$3;->mDefault:I

    .line 518
    :goto_2
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v4, v9, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    .line 519
    .local v4, skWeather:Lcom/hf/model/SKWeather;
    const/4 v3, 0x0

    .line 520
    .local v3, skTemperature:Ljava/lang/String;
    const/4 v5, -0x1

    .line 521
    .local v5, skWeatherCode:I
    if-eqz v4, :cond_1

    .line 522
    iget-object v3, v4, Lcom/hf/model/SKWeather;->temperatrue:Ljava/lang/String;

    .line 523
    iget v5, v4, Lcom/hf/model/SKWeather;->weatherCode:I

    .line 526
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 527
    .local v6, values:Landroid/content/ContentValues;
    const-string v9, "cityId"

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    iget-object v10, v10, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v9, "name"

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    iget-object v10, v10, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v9, "pinyin"

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    iget-object v10, v10, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v9, "englishName"

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    iget-object v10, v10, Lcom/hf/model/CityModel;->englishName:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v9, "isDefault"

    iget v10, p0, Lcom/hf/manager/WeatherManager$3;->mDefault:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    const-string v9, "sid"

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$3;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v10, v10, Lcom/hf/model/WeatherModel;->sid:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v9, "skTemperature"

    invoke-virtual {v6, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v2, v9, Lcom/hf/model/WeatherModel;->skReportTime:Ljava/lang/String;

    .line 535
    .local v2, skReportTime:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 536
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 537
    .local v1, formate:Ljava/text/SimpleDateFormat;
    const-string v9, "yyyy-MM-dd HH:00:00"

    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, date:Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    .end local v0           #date:Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 540
    .restart local v0       #date:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 542
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #formate:Ljava/text/SimpleDateFormat;
    :cond_2
    const-string v9, "skReportTime"

    invoke-virtual {v6, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v9, "skWeather"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v9, v9, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v9, v9, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 545
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v9, v9, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hf/model/CFWeather;

    .line 546
    .local v8, weather:Lcom/hf/model/CFWeather;
    if-eqz v8, :cond_4

    .line 547
    const/4 v9, -0x1

    if-ne v5, v9, :cond_3

    .line 548
    invoke-static {v8}, Lcom/hf/utils/WeatherUtils;->getCfWeatherCode(Lcom/hf/model/CFWeather;)I

    move-result v5

    .line 549
    const-string v9, "skWeather"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    :cond_3
    const-string v9, "wind_power1"

    iget v10, v8, Lcom/hf/model/CFWeather;->windPowerDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string v9, "wind_power2"

    iget v10, v8, Lcom/hf/model/CFWeather;->windPowerNight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    const-string v9, "wind_dir1"

    iget v10, v8, Lcom/hf/model/CFWeather;->windDirCodeDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    const-string v9, "wind_dir2"

    iget v10, v8, Lcom/hf/model/CFWeather;->windDirCodeNight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const-string v9, "tMax"

    iget-object v10, v8, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v9, "tMin"

    iget-object v10, v8, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v9, "weather1"

    iget v10, v8, Lcom/hf/model/CFWeather;->weatherDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    const-string v9, "weather2"

    iget v10, v8, Lcom/hf/model/CFWeather;->weatherNigth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    .end local v8           #weather:Lcom/hf/model/CFWeather;
    :cond_4
    iget-boolean v9, p0, Lcom/hf/manager/WeatherManager$3;->hasCity:Z

    if-eqz v9, :cond_8

    .line 563
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    const-string v11, "cityId=\'%s\'"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    iget-object v14, v14, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v6, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 568
    :goto_3
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$3;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v10, v10, Lcom/hf/model/WeatherModel;->sid:Ljava/lang/String;

    iput-object v10, v9, Lcom/hf/model/CityModel;->stationId:Ljava/lang/String;

    .line 569
    iget-object v10, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    iget v9, p0, Lcom/hf/manager/WeatherManager$3;->mDefault:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_9

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, v10, Lcom/hf/model/CityModel;->isDefault:Z

    .line 571
    invoke-static {}, Lcom/hf/http/WeatherNet;->getInstance()Lcom/hf/http/WeatherNet;

    move-result-object v9

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$3;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    invoke-virtual {v9, v10, v11}, Lcom/hf/http/WeatherNet;->queryWarning(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/util/List;

    move-result-object v7

    .line 572
    .local v7, warningList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    if-eqz v7, :cond_5

    sget-object v9, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    if-eqz v9, :cond_5

    .line 573
    sget-object v9, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    iget-object v10, v10, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .end local v2           #skReportTime:Ljava/lang/String;
    .end local v3           #skTemperature:Ljava/lang/String;
    .end local v4           #skWeather:Lcom/hf/model/SKWeather;
    .end local v5           #skWeatherCode:I
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #warningList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 504
    :cond_6
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/hf/manager/WeatherManager$3;->hasCity:Z

    goto/16 :goto_1

    .line 515
    :cond_7
    const/4 v9, 0x0

    iput v9, p0, Lcom/hf/manager/WeatherManager$3;->mDefault:I

    goto/16 :goto_2

    .line 565
    .restart local v2       #skReportTime:Ljava/lang/String;
    .restart local v3       #skTemperature:Ljava/lang/String;
    .restart local v4       #skWeather:Lcom/hf/model/SKWeather;
    .restart local v5       #skWeatherCode:I
    .restart local v6       #values:Landroid/content/ContentValues;
    :cond_8
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$3;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3

    .line 569
    :cond_9
    const/4 v9, 0x0

    goto :goto_4
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 581
    iget-object v1, p0, Lcom/hf/manager/WeatherManager$3;->val$cityId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/hf/manager/WeatherManager$3;->mModel:Lcom/hf/model/WeatherModel;

    if-eqz v1, :cond_6

    .line 585
    sget-object v1, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 586
    sget-object v1, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    iget-object v2, v2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    iget-object v3, p0, Lcom/hf/manager/WeatherManager$3;->mModel:Lcom/hf/model/WeatherModel;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :cond_1
    iget v1, p0, Lcom/hf/manager/WeatherManager$3;->mDefault:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 590
    sget-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    if-eqz v1, :cond_2

    .line 591
    iget-object v1, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    sput-object v1, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 593
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 594
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string v1, "cityID"

    iget-object v2, p0, Lcom/hf/manager/WeatherManager$3;->val$cityId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    iget-object v1, p0, Lcom/hf/manager/WeatherManager$3;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 599
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-boolean v1, p0, Lcom/hf/manager/WeatherManager$3;->hasCity:Z

    if-eqz v1, :cond_4

    .line 600
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 601
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.hf.UPDATE_WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const-string v1, "cityID"

    iget-object v2, p0, Lcom/hf/manager/WeatherManager$3;->val$cityId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    iget-object v1, p0, Lcom/hf/manager/WeatherManager$3;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 605
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    sget-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hf/manager/WeatherManager$3;->this$0:Lcom/hf/manager/WeatherManager;

    iget-object v2, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    #calls: Lcom/hf/manager/WeatherManager;->contintCity(Lcom/hf/model/CityModel;)Z
    invoke-static {v1, v2}, Lcom/hf/manager/WeatherManager;->access$7(Lcom/hf/manager/WeatherManager;Lcom/hf/model/CityModel;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 606
    sget-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    iget-object v2, p0, Lcom/hf/manager/WeatherManager$3;->city:Lcom/hf/model/CityModel;

    invoke-virtual {v1, v2}, Lcom/hf/UI/CityList;->add(Lcom/hf/model/CityModel;)Z

    .line 608
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 609
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.hf.ADD_CITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const-string v1, "cityID"

    iget-object v2, p0, Lcom/hf/manager/WeatherManager$3;->val$cityId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    iget-object v1, p0, Lcom/hf/manager/WeatherManager$3;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 617
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_7

    .line 618
    const-string v1, "ZTE-Action"

    const-string v2, "add city fialed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hf.QUERY_WEATHER_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "cityID"

    iget-object v2, p0, Lcom/hf/manager/WeatherManager$3;->val$cityId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    iget-object v1, p0, Lcom/hf/manager/WeatherManager$3;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hf/manager/WeatherManager$3;->isDefault:Z

    .line 480
    return-void
.end method
