.class Lcom/hf/manager/WeatherManager$4;
.super Landroid/os/AsyncTask;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/manager/WeatherManager;->updateWeather(Ljava/lang/String;)V
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
.field private mCity:Lcom/hf/model/CityModel;

.field private mModel:Lcom/hf/model/WeatherModel;

.field final synthetic this$0:Lcom/hf/manager/WeatherManager;

.field private final synthetic val$cityID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hf/manager/WeatherManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/manager/WeatherManager$4;->this$0:Lcom/hf/manager/WeatherManager;

    iput-object p2, p0, Lcom/hf/manager/WeatherManager$4;->val$cityID:Ljava/lang/String;

    .line 643
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .parameter "params"

    .prologue
    .line 648
    invoke-static {}, Lcom/hf/http/WeatherNet;->getInstance()Lcom/hf/http/WeatherNet;

    move-result-object v9

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$4;->val$cityID:Ljava/lang/String;

    iget-object v11, p0, Lcom/hf/manager/WeatherManager$4;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/hf/http/WeatherNet;->queryWeather(Ljava/lang/String;Landroid/content/Context;)Lcom/hf/model/WeatherModel;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/manager/WeatherManager$4;->mModel:Lcom/hf/model/WeatherModel;

    .line 649
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$4;->mModel:Lcom/hf/model/WeatherModel;

    if-eqz v9, :cond_4

    .line 650
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$4;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v4, v9, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    .line 651
    .local v4, skWeather:Lcom/hf/model/SKWeather;
    const/4 v3, 0x0

    .line 652
    .local v3, skTemperature:Ljava/lang/String;
    const/4 v5, -0x1

    .line 653
    .local v5, skWeatherCode:I
    if-eqz v4, :cond_0

    .line 654
    iget-object v3, v4, Lcom/hf/model/SKWeather;->temperatrue:Ljava/lang/String;

    .line 655
    iget v5, v4, Lcom/hf/model/SKWeather;->weatherCode:I

    .line 657
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 658
    .local v6, values:Landroid/content/ContentValues;
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$4;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v2, v9, Lcom/hf/model/WeatherModel;->skReportTime:Ljava/lang/String;

    .line 659
    .local v2, skReportTime:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 660
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 661
    .local v1, formate:Ljava/text/SimpleDateFormat;
    const-string v9, "yyyy-MM-dd HH:00:00"

    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, date:Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    .end local v0           #date:Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 664
    .restart local v0       #date:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 666
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #formate:Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v9, "skTemperature"

    invoke-virtual {v6, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v9, "skReportTime"

    invoke-virtual {v6, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v9, "skWeather"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$4;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v9, v9, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/hf/manager/WeatherManager$4;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v9, v9, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 670
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$4;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v9, v9, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hf/model/CFWeather;

    .line 671
    .local v8, weather:Lcom/hf/model/CFWeather;
    if-eqz v8, :cond_3

    .line 672
    const/4 v9, -0x1

    if-ne v5, v9, :cond_2

    .line 673
    invoke-static {v8}, Lcom/hf/utils/WeatherUtils;->getCfWeatherCode(Lcom/hf/model/CFWeather;)I

    move-result v5

    .line 674
    const-string v9, "skWeather"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    :cond_2
    const-string v9, "wind_power1"

    iget v10, v8, Lcom/hf/model/CFWeather;->windPowerDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 677
    const-string v9, "wind_power2"

    iget v10, v8, Lcom/hf/model/CFWeather;->windPowerNight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string v9, "wind_dir1"

    iget v10, v8, Lcom/hf/model/CFWeather;->windDirCodeDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 679
    const-string v9, "wind_dir2"

    iget v10, v8, Lcom/hf/model/CFWeather;->windDirCodeNight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 680
    const-string v9, "tMax"

    iget-object v10, v8, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v9, "tMin"

    iget-object v10, v8, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v9, "weather1"

    iget v10, v8, Lcom/hf/model/CFWeather;->weatherDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 683
    const-string v9, "weather2"

    iget v10, v8, Lcom/hf/model/CFWeather;->weatherNigth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    .end local v8           #weather:Lcom/hf/model/CFWeather;
    :cond_3
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$4;->this$0:Lcom/hf/manager/WeatherManager;

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

    iget-object v14, p0, Lcom/hf/manager/WeatherManager$4;->val$cityID:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v6, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 688
    iget-object v9, p0, Lcom/hf/manager/WeatherManager$4;->this$0:Lcom/hf/manager/WeatherManager;

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$4;->val$cityID:Ljava/lang/String;

    #calls: Lcom/hf/manager/WeatherManager;->findCity(Ljava/lang/String;)Lcom/hf/model/CityModel;
    invoke-static {v9, v10}, Lcom/hf/manager/WeatherManager;->access$5(Lcom/hf/manager/WeatherManager;Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/manager/WeatherManager$4;->mCity:Lcom/hf/model/CityModel;

    .line 689
    invoke-static {}, Lcom/hf/http/WeatherNet;->getInstance()Lcom/hf/http/WeatherNet;

    move-result-object v9

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$4;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/hf/manager/WeatherManager$4;->mCity:Lcom/hf/model/CityModel;

    invoke-virtual {v9, v10, v11}, Lcom/hf/http/WeatherNet;->queryWarning(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/util/List;

    move-result-object v7

    .line 690
    .local v7, warningList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    if-eqz v7, :cond_4

    sget-object v9, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    if-eqz v9, :cond_4

    .line 691
    sget-object v9, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    iget-object v10, p0, Lcom/hf/manager/WeatherManager$4;->val$cityID:Ljava/lang/String;

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    .end local v2           #skReportTime:Ljava/lang/String;
    .end local v3           #skTemperature:Ljava/lang/String;
    .end local v4           #skWeather:Lcom/hf/model/SKWeather;
    .end local v5           #skWeatherCode:I
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #warningList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    :cond_4
    const/4 v9, 0x0

    return-object v9
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 698
    iget-object v2, p0, Lcom/hf/manager/WeatherManager$4;->val$cityID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v2, p0, Lcom/hf/manager/WeatherManager$4;->mModel:Lcom/hf/model/WeatherModel;

    if-eqz v2, :cond_2

    .line 702
    sget-object v2, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 703
    sget-object v2, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/hf/manager/WeatherManager$4;->val$cityID:Ljava/lang/String;

    iget-object v4, p0, Lcom/hf/manager/WeatherManager$4;->mModel:Lcom/hf/model/WeatherModel;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 706
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "com.hf.UPDATE_WEATHER"

    .line 707
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    const-string v2, "cityID"

    iget-object v3, p0, Lcom/hf/manager/WeatherManager$4;->val$cityID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    iget-object v2, p0, Lcom/hf/manager/WeatherManager$4;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 710
    const-string v2, "ZTE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send action:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; cityId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hf/manager/WeatherManager$4;->val$cityID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 712
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const-string v0, "com.hf.QUERY_WEATHER_FAILED"

    .line 713
    .restart local v0       #action:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 714
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "cityID"

    iget-object v3, p0, Lcom/hf/manager/WeatherManager$4;->val$cityID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    iget-object v2, p0, Lcom/hf/manager/WeatherManager$4;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 717
    const-string v2, "ZTE-Action"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send action:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; cityId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hf/manager/WeatherManager$4;->val$cityID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
