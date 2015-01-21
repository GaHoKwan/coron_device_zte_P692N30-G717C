.class public Lcom/hf/widget/HFWeatherWidget4_1;
.super Landroid/appwidget/AppWidgetProvider;
.source "HFWeatherWidget4_1.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HFWeatherWidget4_1"

.field static final WIDGET_TAG:Ljava/lang/String; = "4_1"

.field static mCity:Lcom/hf/model/CityModel;

.field static mWeatherModel:Lcom/hf/model/WeatherModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/widget/HFWeatherWidget4_1;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/hf/widget/HFWeatherWidget4_1;->updateViews(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method private addCFItemLayout(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/List;ZLcom/hf/model/CityModel;)V
    .locals 9
    .parameter "views"
    .parameter "context"
    .parameter
    .parameter "isSheshi"
    .parameter "city"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/CFWeather;",
            ">;Z",
            "Lcom/hf/model/CityModel;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, weatherList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CFWeather;>;"
    const v8, 0x7f0b0042

    .line 71
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 96
    :cond_0
    return-void

    .line 74
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 75
    .local v1, size:I
    const/4 v6, 0x4

    if-le v1, v6, :cond_2

    .line 76
    const/4 v1, 0x4

    .line 78
    :cond_2
    invoke-virtual {p1, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 80
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hf/model/CFWeather;

    .line 81
    .local v5, weather:Lcom/hf/model/CFWeather;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030010

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 82
    .local v4, view:Landroid/widget/RemoteViews;
    const/4 v3, 0x0

    .line 83
    .local v3, title:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 84
    invoke-static {p2, p5}, Lcom/hf/utils/Util;->getDiaplayName(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/lang/String;

    move-result-object v3

    .line 88
    :goto_1
    const v6, 0x7f0b0058

    invoke-virtual {v4, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 89
    const v6, 0x7f0b0056

    invoke-static {v5}, Lcom/hf/utils/WeatherUtils;->getCfWeatherImageId(Lcom/hf/model/CFWeather;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 90
    invoke-static {p2, v5, p4}, Lcom/hf/utils/WeatherUtils;->getCFTemperatureString(Landroid/content/Context;Lcom/hf/model/CFWeather;Z)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, temperature:Ljava/lang/String;
    const v6, 0x7f0b0057

    invoke-virtual {v4, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p1, v8, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v2           #temperature:Ljava/lang/String;
    :cond_3
    iget-object v6, v5, Lcom/hf/model/CFWeather;->time:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p2, v6, v7}, Lcom/hf/utils/Util;->formatDate(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private getWeatherViews(Landroid/content/Context;Lcom/hf/model/CityModel;Lcom/hf/model/WeatherModel;Z)Landroid/widget/RemoteViews;
    .locals 10
    .parameter "context"
    .parameter "city"
    .parameter "weatherModel"
    .parameter "isSheShi"

    .prologue
    const v9, 0x7f0b0041

    const/high16 v5, 0x800

    const/4 v4, 0x0

    .line 37
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f03000d

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 38
    .local v1, remoteViews:Landroid/widget/RemoteViews;
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "HFWeatherWidget4_1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSheshi = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_1

    .line 43
    const-string v0, "HFWeatherWidget4_1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "city = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    if-eqz p2, :cond_4

    .line 48
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_2

    .line 49
    const-string v0, "HFWeatherWidget4_1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "weather = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/hf/UI/MainActivity;

    invoke-direct {v6, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v6, updateServiceIntent1:Landroid/content/Intent;
    invoke-static {p1, v4, v6, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 54
    .local v7, updateServicePendingIntent1:Landroid/app/PendingIntent;
    invoke-virtual {v1, v9, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 56
    if-eqz p3, :cond_3

    .line 57
    iget-object v3, p3, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    move-object v0, p0

    move-object v2, p1

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hf/widget/HFWeatherWidget4_1;->addCFItemLayout(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/List;ZLcom/hf/model/CityModel;)V

    .line 67
    :cond_3
    :goto_0
    return-object v1

    .line 60
    .end local v6           #updateServiceIntent1:Landroid/content/Intent;
    .end local v7           #updateServicePendingIntent1:Landroid/app/PendingIntent;
    :cond_4
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f03000f

    invoke-direct {v8, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 61
    .local v8, view:Landroid/widget/RemoteViews;
    const v0, 0x7f0b0042

    invoke-virtual {v1, v0, v8}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 62
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/hf/UI/LogoActivity;

    invoke-direct {v6, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .restart local v6       #updateServiceIntent1:Landroid/content/Intent;
    invoke-static {p1, v4, v6, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 64
    .restart local v7       #updateServicePendingIntent1:Landroid/app/PendingIntent;
    invoke-virtual {v1, v9, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private initCityThenUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .parameter "context"
    .parameter "manager"
    .parameter "ids"

    .prologue
    .line 167
    new-instance v0, Lcom/hf/widget/HFWeatherWidget4_1$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hf/widget/HFWeatherWidget4_1$1;-><init>(Lcom/hf/widget/HFWeatherWidget4_1;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 190
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateViews(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .parameter "context"
    .parameter "manager"
    .parameter "ids"

    .prologue
    .line 158
    sget-object v1, Lcom/hf/widget/HFWeatherWidget4_1;->mCity:Lcom/hf/model/CityModel;

    sget-object v2, Lcom/hf/widget/HFWeatherWidget4_1;->mWeatherModel:Lcom/hf/model/WeatherModel;

    invoke-static {p1}, Lcom/hf/widget/WidgetUtil;->getTemperatureType(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/hf/widget/HFWeatherWidget4_1;->getWeatherViews(Landroid/content/Context;Lcom/hf/model/CityModel;Lcom/hf/model/WeatherModel;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 159
    .local v0, updateViews:Landroid/widget/RemoteViews;
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 160
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 120
    sput-object v0, Lcom/hf/widget/HFWeatherWidget4_1;->mCity:Lcom/hf/model/CityModel;

    .line 121
    sput-object v0, Lcom/hf/widget/HFWeatherWidget4_1;->mWeatherModel:Lcom/hf/model/WeatherModel;

    .line 122
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 112
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "HFWeatherWidget4_1"

    const-string v1, "4*1 onEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, action:Ljava/lang/String;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 130
    .local v2, appWidgetManger:Landroid/appwidget/AppWidgetManager;
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/hf/widget/HFWeatherWidget4_1;

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 132
    .local v1, appIds:[I
    array-length v4, v1

    if-lez v4, :cond_1

    .line 133
    const-string v4, "HFWeatherWidget4_1"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "widget 4*1 : action = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v4, Lcom/hf/widget/HFWeatherWidget4_1;->mCity:Lcom/hf/model/CityModel;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/hf/widget/HFWeatherWidget4_1;->mWeatherModel:Lcom/hf/model/WeatherModel;

    if-nez v4, :cond_2

    .line 135
    :cond_0
    invoke-direct {p0, p1, v2, v1}, Lcom/hf/widget/HFWeatherWidget4_1;->initCityThenUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    const-string v4, "HFWeatherWidget4_1"

    const-string v5, "widget 4*1 : city != null && weather != null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v4, "com.hf.CHANGE_TEMPERATURE_TYPE"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    invoke-direct {p0, p1, v2, v1}, Lcom/hf/widget/HFWeatherWidget4_1;->updateViews(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0

    .line 143
    :cond_3
    const-string v4, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 144
    const-string v4, "com.hf.UPDATE_ALL_WEATHER"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 145
    :cond_4
    invoke-direct {p0, p1, v2, v1}, Lcom/hf/widget/HFWeatherWidget4_1;->initCityThenUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0

    .line 146
    :cond_5
    const-string v4, "com.hf.UPDATE_WEATHER"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    const-string v4, "cityID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, cityId:Ljava/lang/String;
    sget-object v4, Lcom/hf/widget/HFWeatherWidget4_1;->mCity:Lcom/hf/model/CityModel;

    iget-object v4, v4, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    invoke-direct {p0, p1, v2, v1}, Lcom/hf/widget/HFWeatherWidget4_1;->initCityThenUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 102
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "HFWeatherWidget4_1"

    const-string v1, "onUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/hf/widget/HFWeatherWidget4_1;->initCityThenUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 107
    return-void
.end method
