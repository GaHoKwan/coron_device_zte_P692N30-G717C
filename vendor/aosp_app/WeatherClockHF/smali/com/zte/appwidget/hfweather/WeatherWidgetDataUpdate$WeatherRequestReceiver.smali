.class public Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$WeatherRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherWidgetDataUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeatherRequestReceiver"
.end annotation


# static fields
.field public static final HF_ADD_CITY_WEATHER:Ljava/lang/String; = "com.hf.QUERY_NEW_CITY_WEATHER"

.field public static final HF_ADD_CITY_WEATHER_FAILED:Ljava/lang/String; = "com.hf.QUERY_WEATHER_FAILED"

.field public static final HF_ADD_CITY_WEATHER_SUCCESSED:Ljava/lang/String; = "com.hf.ADD_CITY"

.field public static final HF_ADD_WEATHER_PARAM:Ljava/lang/String; = "add_city_cityId"

.field public static final HF_CHANGE_DEFAULT_CITY:Ljava/lang/String; = "com.hf.CHANGE_DEFAULT_CITY"

.field public static final HF_CHANGE_TEMPERATURN_TYPE:Ljava/lang/String; = "com.hf.CHANGE_TEMPERATURE_TYPE"

.field public static final HF_LOCATION_FAILED:Ljava/lang/String; = "com.hf.location.FAILED"

.field public static final HF_LOCATION_SUCCESSED:Ljava/lang/String; = "com.hf.location.EXTERNAL_SUCCESSED"

.field public static final HF_LOCATION_WEATHER_PARAM:Ljava/lang/String; = "cityID"

.field public static final HF_MODIFY_CITY_NAME:Ljava/lang/String; = "com.hf.MODIFY_CITY_NAME"

.field public static final HF_QUERY_ALL_WEATHER:Ljava/lang/String; = "com.hf.QUERY_ALL_WEATHER"

.field public static final HF_QUERY_WEATHER:Ljava/lang/String; = "com.hf.QUERY_WEATHER"

.field public static final HF_QUERY_WEATHER_PARAM:Ljava/lang/String; = "cityID"

.field public static final HF_UPDATE_ALL_WEATHER:Ljava/lang/String; = "com.hf.UPDATE_ALL_WEATHER"

.field public static final HF_UPDATE_ALL_WEATHER_FAILED:Ljava/lang/String; = "com.hf.UPDATE_ALL_WEATHER_FAILED"

.field public static final HF_UPDATE_WEATHER:Ljava/lang/String; = "com.hf.UPDATE_WEATHER"

.field public static final HF_UPDATE_WEATHER_FAILED:Ljava/lang/String; = "com.hf.QUERY_WEATHER_FAILED"

.field public static final HF_WEATHER_LOCATION:Ljava/lang/String; = "com.hf.weather.LOCATION"

.field public static final HF_WEATHER_LOCATION_SWITCH:Ljava/lang/String; = "com.zte.BOOT_SWITCH"

.field public static final HF_WEATHER_LOCATION_SWITCH_PARAM:Ljava/lang/String; = "zte_boot_switch"

.field public static final HF_WEATHER_LOCATION_SWITCH_RESULT:Ljava/lang/String; = "com.zte.BOOT_SWITCH_RESULT"


# instance fields
.field final synthetic this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;


# direct methods
.method public constructor <init>(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$WeatherRequestReceiver;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 234
    const-string v7, "muyu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeatherRequestReceiver:onReceive__action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v7, "HFWeatherSetting"

    invoke-virtual {p1, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 237
    .local v4, weatherPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.hf.CHANGE_TEMPERATURE_TYPE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 239
    iget-object v7, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$WeatherRequestReceiver;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #getter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->sharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$500(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "WeatherUnits"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 240
    .local v1, cUnit:Z
    const-string v7, "muyu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeatherRequestReceiver: cUnit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v7, "WeatherUnits"

    if-nez v1, :cond_1

    :goto_0
    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    iget-object v5, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$WeatherRequestReceiver;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #getter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mAppWidgetProvider:Lcom/zte/appwidget/hfweather/HFWeatherWidget;
    invoke-static {v5}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$300(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Lcom/zte/appwidget/hfweather/HFWeatherWidget;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$WeatherRequestReceiver;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #getter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mService:Landroid/app/Service;
    invoke-static {v6}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$000(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Landroid/app/Service;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$WeatherRequestReceiver;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #getter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->info:Lcom/zte/appwidget/hfweather/WeatherInfo;
    invoke-static {v7}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$100(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Lcom/zte/appwidget/hfweather/WeatherInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$WeatherRequestReceiver;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #getter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->noCityFlag:Z
    invoke-static {v8}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$200(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->performUpdate(Landroid/content/Context;Lcom/zte/appwidget/hfweather/WeatherInfo;Z[I)V

    .line 254
    .end local v1           #cUnit:Z
    :cond_0
    :goto_1
    return-void

    .restart local v1       #cUnit:Z
    :cond_1
    move v5, v6

    .line 242
    goto :goto_0

    .line 245
    .end local v1           #cUnit:Z
    :cond_2
    const-string v6, "com.hf.location.EXTERNAL_SUCCESSED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 246
    const-string v5, "cityID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, cityID:Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$WeatherRequestReceiver;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #calls: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->addMyLocayion(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$600(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;Ljava/lang/String;)V

    goto :goto_1

    .line 248
    .end local v2           #cityID:Ljava/lang/String;
    :cond_3
    const-string v6, "com.zte.BOOT_SWITCH_RESULT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 249
    const-string v6, "zte_boot_switch"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 250
    .local v3, locationSwitch:Z
    if-eqz v3, :cond_0

    .line 251
    iget-object v5, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$WeatherRequestReceiver;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #calls: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->getMyLocation()V
    invoke-static {v5}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$700(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)V

    goto :goto_1
.end method
