.class public Lcom/hf/widget/HFWeatherWidget4_2;
.super Landroid/appwidget/AppWidgetProvider;
.source "HFWeatherWidget4_2.java"


# static fields
.field static TAG:Ljava/lang/String;

.field static TIME:Ljava/lang/String;

.field static mCity:Lcom/hf/model/CityModel;

.field static mWeatherModel:Lcom/hf/model/WeatherModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "HFWeatherWidget4_2"

    sput-object v0, Lcom/hf/widget/HFWeatherWidget4_2;->TAG:Ljava/lang/String;

    .line 36
    const-string v0, "0%d"

    sput-object v0, Lcom/hf/widget/HFWeatherWidget4_2;->TIME:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/widget/HFWeatherWidget4_2;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3}, Lcom/hf/widget/HFWeatherWidget4_2;->updateTimeViews(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method static synthetic access$1(Lcom/hf/widget/HFWeatherWidget4_2;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/hf/widget/HFWeatherWidget4_2;->updateViews(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method private initCityThenUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .parameter "context"
    .parameter "manager"
    .parameter "ids"

    .prologue
    .line 249
    new-instance v0, Lcom/hf/widget/HFWeatherWidget4_2$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hf/widget/HFWeatherWidget4_2$1;-><init>(Lcom/hf/widget/HFWeatherWidget4_2;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 276
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setTime(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 13
    .parameter "context"
    .parameter "views"

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 47
    .local v6, time:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 48
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 49
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 50
    invoke-static {p1}, Lcom/hf/widget/WidgetUtil;->is24Hours(Landroid/content/Context;)Z

    move-result v3

    .line 51
    .local v3, is24Hours:Z
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 52
    .local v5, minute:I
    const/4 v2, 0x0

    .line 53
    .local v2, hour:I
    if-eqz v3, :cond_1

    .line 54
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 61
    :cond_0
    :goto_0
    const v9, 0x7f0b004c

    const/16 v8, 0xa

    if-lt v2, v8, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {p2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 62
    const v9, 0x7f0b004d

    const/16 v8, 0xa

    if-lt v5, v8, :cond_3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {p2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 64
    const-string v8, "MM/dd E"

    invoke-static {v8, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, date_week:Ljava/lang/String;
    const v8, 0x7f0b004f

    invoke-virtual {p2, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 66
    invoke-static {p1}, Lcom/hf/utils/Util;->getLunar(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, lunarDate:Ljava/lang/String;
    const v8, 0x7f0b0050

    invoke-virtual {p2, v8, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 69
    return-void

    .line 56
    .end local v1           #date_week:Ljava/lang/String;
    .end local v4           #lunarDate:Ljava/lang/String;
    :cond_1
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    const/16 v2, 0xc

    goto :goto_0

    .line 61
    :cond_2
    sget-object v8, Lcom/hf/widget/HFWeatherWidget4_2;->TIME:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 62
    :cond_3
    sget-object v8, Lcom/hf/widget/HFWeatherWidget4_2;->TIME:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method private updateTimeViews(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1
    .parameter "context"
    .parameter "manager"
    .parameter "ids"

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/hf/widget/HFWeatherWidget4_2;->getTimeViews(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 241
    .local v0, updateViews:Landroid/widget/RemoteViews;
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 242
    return-void
.end method

.method private updateViews(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .parameter "context"
    .parameter "manager"
    .parameter "ids"

    .prologue
    .line 230
    sget-object v1, Lcom/hf/widget/HFWeatherWidget4_2;->mCity:Lcom/hf/model/CityModel;

    sget-object v2, Lcom/hf/widget/HFWeatherWidget4_2;->mWeatherModel:Lcom/hf/model/WeatherModel;

    invoke-static {p1}, Lcom/hf/widget/WidgetUtil;->getTemperatureType(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/hf/widget/HFWeatherWidget4_2;->getWeatherViews(Landroid/content/Context;Lcom/hf/model/CityModel;Lcom/hf/model/WeatherModel;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 231
    .local v0, updateViews:Landroid/widget/RemoteViews;
    if-nez v0, :cond_0

    .line 232
    sget-object v1, Lcom/hf/widget/HFWeatherWidget4_2;->TAG:Ljava/lang/String;

    const-string v2, "updateViews updateViews is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 237
    return-void

    .line 234
    :cond_0
    sget-object v1, Lcom/hf/widget/HFWeatherWidget4_2;->TAG:Ljava/lang/String;

    const-string v2, "updateViews updateViews is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getTimeViews(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03000e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 78
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v0}, Lcom/hf/widget/HFWeatherWidget4_2;->setTime(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 80
    return-object v0
.end method

.method public getWeatherViews(Landroid/content/Context;Lcom/hf/model/CityModel;Lcom/hf/model/WeatherModel;Z)Landroid/widget/RemoteViews;
    .locals 14
    .parameter "context"
    .parameter "city"
    .parameter "weatherModel"
    .parameter "isSheShi"

    .prologue
    .line 91
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f03000e

    invoke-direct {v7, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 93
    .local v7, remoteViews:Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v7}, Lcom/hf/widget/HFWeatherWidget4_2;->setTime(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 94
    sget-boolean v11, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v11, :cond_0

    .line 95
    sget-object v11, Lcom/hf/widget/HFWeatherWidget4_2;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "isSheshi = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v4, intent:Landroid/content/Intent;
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-static {p1}, Lcom/hf/utils/Util;->isNubia(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {p1}, Lcom/hf/utils/Util;->isZTE(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_1
    const-string v10, "http://zte.weathercn.com/"

    .line 101
    .local v10, url:Ljava/lang/String;
    :goto_0
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 102
    const/4 v11, 0x0

    const/high16 v12, 0x800

    invoke-static {p1, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 103
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    const v11, 0x7f0b0053

    invoke-virtual {v7, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 104
    invoke-static {p1}, Lcom/hf/utils/Util;->isNubia(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v1, "android.intent.action.TIMEMANAGER"

    .line 105
    .local v1, action:Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local v4       #intent:Landroid/content/Intent;
    const/4 v11, 0x0

    const/high16 v12, 0x1000

    invoke-static {p1, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 107
    const v11, 0x7f0b0049

    invoke-virtual {v7, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 109
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v11, "com.hf.QUERY_ALL_WEATHER_WIDGET"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v4       #intent:Landroid/content/Intent;
    const/4 v11, 0x0

    const/high16 v12, 0x800

    invoke-static {p1, v11, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 111
    const v11, 0x7f0b0048

    invoke-virtual {v7, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 113
    if-eqz p2, :cond_7

    .line 114
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-class v11, Lcom/hf/UI/MainActivity;

    invoke-direct {v4, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .restart local v4       #intent:Landroid/content/Intent;
    const/4 v11, 0x0

    const/high16 v12, 0x800

    invoke-static {p1, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 116
    const v11, 0x7f0b0043

    invoke-virtual {v7, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 123
    :goto_2
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 124
    invoke-static/range {p1 .. p2}, Lcom/hf/utils/Util;->getDiaplayName(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, name:Ljava/lang/String;
    const v11, 0x7f0b004a

    invoke-virtual {v7, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 127
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    .line 128
    .local v8, skWeather:Lcom/hf/model/SKWeather;
    const/4 v2, 0x0

    .line 129
    .local v2, cfWeather:Lcom/hf/model/CFWeather;
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    if-eqz v11, :cond_2

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 130
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cfWeather:Lcom/hf/model/CFWeather;
    check-cast v2, Lcom/hf/model/CFWeather;

    .line 133
    .restart local v2       #cfWeather:Lcom/hf/model/CFWeather;
    :cond_2
    invoke-static {v8}, Lcom/hf/utils/WeatherUtils;->getSkWeatherImageId(Lcom/hf/model/SKWeather;)I

    move-result v3

    .line 134
    .local v3, imageId:I
    if-nez v3, :cond_3

    .line 135
    invoke-static {v2}, Lcom/hf/utils/WeatherUtils;->getCfWeatherImageId(Lcom/hf/model/CFWeather;)I

    move-result v3

    .line 137
    :cond_3
    const v11, 0x7f020017

    if-ne v3, v11, :cond_8

    .line 138
    const v11, 0x7f0b0044

    const-string v12, "setBackgroundResource"

    const v13, 0x7f020107

    invoke-virtual {v7, v11, v12, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 145
    :goto_3
    const v11, 0x7f0b0046

    invoke-virtual {v7, v11, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 146
    move/from16 v0, p4

    invoke-static {p1, v8, v0}, Lcom/hf/utils/WeatherUtils;->getSKTemperatureString(Landroid/content/Context;Lcom/hf/model/SKWeather;Z)Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, temperature:Ljava/lang/String;
    const v11, 0x7f0b004b

    invoke-virtual {v7, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 148
    const v11, 0x7f0b0052

    const v12, 0x7f080065

    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 150
    if-eqz v2, :cond_b

    .line 151
    move/from16 v0, p4

    invoke-static {p1, v2, v0}, Lcom/hf/utils/WeatherUtils;->getCFTemperatureString(Landroid/content/Context;Lcom/hf/model/CFWeather;Z)Ljava/lang/String;

    move-result-object v9

    .line 152
    const v11, 0x7f0b0045

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 153
    const v11, 0x7f0b0045

    invoke-virtual {v7, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 159
    .end local v2           #cfWeather:Lcom/hf/model/CFWeather;
    .end local v3           #imageId:I
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #skWeather:Lcom/hf/model/SKWeather;
    .end local v9           #temperature:Ljava/lang/String;
    :cond_4
    :goto_4
    return-object v7

    .line 100
    .end local v1           #action:Ljava/lang/String;
    .end local v6           #pendingIntent:Landroid/app/PendingIntent;
    .end local v10           #url:Ljava/lang/String;
    :cond_5
    const-string v10, "http://m.weathercn.com/?app=1"

    goto/16 :goto_0

    .line 104
    .restart local v6       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v10       #url:Ljava/lang/String;
    :cond_6
    const-string v1, "android.intent.action.SET_ALARM"

    goto/16 :goto_1

    .line 118
    .restart local v1       #action:Ljava/lang/String;
    :cond_7
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-class v11, Lcom/hf/UI/LogoActivity;

    invoke-direct {v4, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .restart local v4       #intent:Landroid/content/Intent;
    const/4 v11, 0x0

    const/high16 v12, 0x800

    invoke-static {p1, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 120
    const v11, 0x7f0b0043

    invoke-virtual {v7, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_2

    .line 139
    .restart local v2       #cfWeather:Lcom/hf/model/CFWeather;
    .restart local v3       #imageId:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v8       #skWeather:Lcom/hf/model/SKWeather;
    :cond_8
    const v11, 0x7f020028

    if-eq v3, v11, :cond_9

    const v11, 0x7f02002a

    if-eq v3, v11, :cond_9

    const v11, 0x7f02002b

    if-eq v3, v11, :cond_9

    const v11, 0x7f02002c

    if-eq v3, v11, :cond_9

    const v11, 0x7f02002f

    if-eq v3, v11, :cond_9

    .line 140
    const v11, 0x7f02002d

    if-eq v3, v11, :cond_9

    const v11, 0x7f02002e

    if-eq v3, v11, :cond_9

    const v11, 0x7f0200cc

    if-eq v3, v11, :cond_9

    const v11, 0x7f0200cd

    if-eq v3, v11, :cond_9

    const v11, 0x7f0200ce

    if-ne v3, v11, :cond_a

    .line 141
    :cond_9
    const v11, 0x7f0b0044

    const-string v12, "setBackgroundResource"

    const v13, 0x106000d

    invoke-virtual {v7, v11, v12, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_3

    .line 143
    :cond_a
    const v11, 0x7f0b0044

    const-string v12, "setBackgroundResource"

    const v13, 0x7f020108

    invoke-virtual {v7, v11, v12, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_3

    .line 155
    .restart local v9       #temperature:Ljava/lang/String;
    :cond_b
    const v11, 0x7f0b0045

    const/16 v12, 0x8

    invoke-virtual {v7, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 210
    sget-object v0, Lcom/hf/widget/HFWeatherWidget4_2;->TAG:Ljava/lang/String;

    const-string v1, "onDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hf/widget/TimeService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 225
    sput-object v2, Lcom/hf/widget/HFWeatherWidget4_2;->mCity:Lcom/hf/model/CityModel;

    .line 226
    sput-object v2, Lcom/hf/widget/HFWeatherWidget4_2;->mWeatherModel:Lcom/hf/model/WeatherModel;

    .line 227
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 216
    sget-object v0, Lcom/hf/widget/HFWeatherWidget4_2;->TAG:Ljava/lang/String;

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, action:Ljava/lang/String;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 168
    .local v2, appWidgetManger:Landroid/appwidget/AppWidgetManager;
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/hf/widget/HFWeatherWidget4_2;

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 170
    .local v1, appIds:[I
    array-length v4, v1

    if-lez v4, :cond_1

    .line 171
    sget-object v4, Lcom/hf/widget/HFWeatherWidget4_2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "widget 4*2 : action = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v4, Lcom/hf/widget/HFWeatherWidget4_2;->mCity:Lcom/hf/model/CityModel;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/hf/widget/HFWeatherWidget4_2;->mWeatherModel:Lcom/hf/model/WeatherModel;

    if-nez v4, :cond_2

    .line 173
    :cond_0
    invoke-direct {p0, p1, v2, v1}, Lcom/hf/widget/HFWeatherWidget4_2;->initCityThenUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    sget-object v4, Lcom/hf/widget/HFWeatherWidget4_2;->TAG:Ljava/lang/String;

    const-string v5, "widget 4*2 : city != null && weather != null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v4, "com.hf.TIME_TICK"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 180
    const-string v4, "com.hf.CHANGE_TEMPERATURE_TYPE"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 181
    :cond_3
    invoke-direct {p0, p1, v2, v1}, Lcom/hf/widget/HFWeatherWidget4_2;->updateViews(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0

    .line 182
    :cond_4
    const-string v4, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 183
    const-string v4, "com.hf.UPDATE_ALL_WEATHER"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 184
    :cond_5
    invoke-direct {p0, p1, v2, v1}, Lcom/hf/widget/HFWeatherWidget4_2;->initCityThenUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0

    .line 185
    :cond_6
    const-string v4, "com.hf.UPDATE_WEATHER"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    const-string v4, "cityID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, cityId:Ljava/lang/String;
    sget-object v4, Lcom/hf/widget/HFWeatherWidget4_2;->mCity:Lcom/hf/model/CityModel;

    iget-object v4, v4, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    invoke-direct {p0, p1, v2, v1}, Lcom/hf/widget/HFWeatherWidget4_2;->initCityThenUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 199
    sget-object v1, Lcom/hf/widget/HFWeatherWidget4_2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUpdate; size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hf/widget/TimeService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 203
    invoke-direct {p0, p1, p2, p3}, Lcom/hf/widget/HFWeatherWidget4_2;->initCityThenUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 204
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 205
    return-void
.end method
