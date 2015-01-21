.class public Lcom/zte/appwidget/hfweather/HFWeatherWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "HFWeatherWidget.java"


# static fields
.field private static sInstance:Lcom/zte/appwidget/hfweather/HFWeatherWidget; = null

.field private static final timeOneDay:J = 0x5265c00L

.field private static final weatherConditionDrawables:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x37

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->weatherConditionDrawables:[I

    return-void

    :array_0
    .array-data 0x4
        0x12t 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x1t 0x0t 0x2t 0x7ft
        0x1t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private cTof(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "temp"

    .prologue
    .line 191
    new-instance v0, Ljava/lang/Double;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ffccccccccccccdL

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4040

    add-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "temp"

    .prologue
    .line 169
    const-string v3, "HFWeatherSetting"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 170
    .local v2, sharedPreference:Landroid/content/SharedPreferences;
    const-string v3, "WeatherUnits"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 172
    .local v0, cUnit:Z
    const-string v3, "muyu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HFWeatherWidget: cUnit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz v0, :cond_1

    const v3, 0x7f080006

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, degree:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    :cond_0
    const-string p2, ""

    .line 187
    :goto_1
    return-object p2

    .line 175
    .end local v1           #degree:Ljava/lang/String;
    :cond_1
    const v3, 0x7f080007

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 182
    .restart local v1       #degree:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 185
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->cTof(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method static declared-synchronized getInstance()Lcom/zte/appwidget/hfweather/HFWeatherWidget;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lcom/zte/appwidget/hfweather/HFWeatherWidget;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->sInstance:Lcom/zte/appwidget/hfweather/HFWeatherWidget;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/zte/appwidget/hfweather/HFWeatherWidget;

    invoke-direct {v0}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;-><init>()V

    sput-object v0, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->sInstance:Lcom/zte/appwidget/hfweather/HFWeatherWidget;

    .line 57
    :cond_0
    sget-object v0, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->sInstance:Lcom/zte/appwidget/hfweather/HFWeatherWidget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private is24Hour(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 258
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 0
    .parameter "context"
    .parameter "views"
    .parameter "flag"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->setHFWeatherIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->setHFWeatherURIIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->setClockDetailIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 91
    return-void
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 288
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 289
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_0

    .line 290
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private setClockDetailIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 8
    .parameter "context"
    .parameter "views"

    .prologue
    const/4 v7, 0x0

    .line 114
    const-string v0, "com.android.deskclock.DeskClock"

    .line 115
    .local v0, activity:Ljava/lang/String;
    const-string v2, "com.android.deskclock"

    .line 116
    .local v2, packages:Ljava/lang/String;
    sget-boolean v4, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->ExCfgClockActivityNameEnable:Z

    if-eqz v4, :cond_0

    .line 117
    sget-object v0, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->exCfgClockActivityName:Ljava/lang/String;

    .line 119
    :cond_0
    sget-boolean v4, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->ExCfgClockPackagesNameEnable:Z

    if-eqz v4, :cond_1

    .line 120
    sget-object v2, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->exCfgClockPackagesName:Ljava/lang/String;

    .line 122
    :cond_1
    const-string v4, "muyu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HFWeatherWidget: onDisabled  packages:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".........activity= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0, v2, v0}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->startIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 124
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p1, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 125
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    const v4, 0x7f06000b

    invoke-virtual {p2, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 126
    return-void
.end method

.method private setHFWeatherIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 4
    .parameter "context"
    .parameter "views"
    .parameter "flag"

    .prologue
    const/4 v3, 0x0

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 96
    const-string v2, "com.hf.weather.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    :goto_0
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 102
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const v2, 0x7f060005

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 103
    return-void

    .line 98
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    :cond_0
    const-string v2, "com.hf.weather.WEATHER_ACTIVITY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setHFWeatherURIIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 5
    .parameter "context"
    .parameter "views"

    .prologue
    const/4 v4, 0x0

    .line 107
    const-string v3, "http://zte.weathercn.com/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 108
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .local v1, mIntent:Landroid/content/Intent;
    invoke-static {p1, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 110
    .local v0, intent:Landroid/app/PendingIntent;
    const v3, 0x7f06000a

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 111
    return-void
.end method

.method private startIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "packages"
    .parameter "activity"

    .prologue
    .line 129
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v1, newIntent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    return-object v1
.end method

.method private updateAmPm(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 4
    .parameter "context"
    .parameter "views"
    .parameter "am"

    .prologue
    const v3, 0x7f06000e

    .line 245
    invoke-direct {p0, p1}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->is24Hour(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "muyu"

    const-string v2, "updateAmPm is24Hour"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x4

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-static {p3}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, ampm:Ljava/lang/String;
    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 252
    const/4 v1, 0x0

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method private updateHour(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 5
    .parameter "context"
    .parameter "views"
    .parameter "hour"

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, left:I
    const/4 v1, 0x0

    .line 225
    .local v1, right:I
    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->is24Hour(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    const/4 v0, 0x1

    .line 227
    const/4 v1, 0x2

    .line 232
    :goto_0
    const-string v2, "muyu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateHour hour="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const v2, 0x7f06000f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 234
    return-void

    .line 229
    :cond_0
    div-int/lit8 v0, p3, 0xa

    .line 230
    rem-int/lit8 v1, p3, 0xa

    goto :goto_0
.end method

.method private updateMin(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 5
    .parameter "context"
    .parameter "views"
    .parameter "minute"

    .prologue
    .line 237
    div-int/lit8 v0, p3, 0xa

    .line 238
    .local v0, left:I
    rem-int/lit8 v1, p3, 0xa

    .line 240
    .local v1, right:I
    const-string v2, "muyu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMin minute="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const v2, 0x7f060010

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method private updateWidgetView(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/zte/appwidget/hfweather/WeatherInfo;)V
    .locals 10
    .parameter "context"
    .parameter "views"
    .parameter "info"

    .prologue
    const v9, 0x7f060009

    const v8, 0x7f060006

    const/4 v7, 0x0

    const v6, 0x7f060008

    const v5, 0x7f060007

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, weatherState:[Ljava/lang/String;
    const v3, 0x7f08000c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, noCityDescription:Ljava/lang/String;
    invoke-virtual {p3}, Lcom/zte/appwidget/hfweather/WeatherInfo;->getCityName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 148
    invoke-virtual {p2, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 149
    const-string v3, ""

    invoke-virtual {p2, v9, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 150
    const-string v3, ""

    invoke-virtual {p2, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 151
    const-string v3, "setImageResource"

    sget-object v4, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->weatherConditionDrawables:[I

    aget v4, v4, v7

    invoke-virtual {p2, v6, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 165
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p3}, Lcom/zte/appwidget/hfweather/WeatherInfo;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p3}, Lcom/zte/appwidget/hfweather/WeatherInfo;->getCurrentTemp()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->formatTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v9, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p3}, Lcom/zte/appwidget/hfweather/WeatherInfo;->getCurrentConditionImg()I

    move-result v0

    .line 157
    .local v0, conditionImageIndex:I
    if-ltz v0, :cond_1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-le v0, v3, :cond_2

    .line 158
    :cond_1
    const-string v3, ""

    invoke-virtual {p2, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 159
    const-string v3, "setImageResource"

    sget-object v4, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->weatherConditionDrawables:[I

    aget v4, v4, v7

    invoke-virtual {p2, v6, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 161
    :cond_2
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    invoke-virtual {p2, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 162
    const-string v3, "setImageResource"

    sget-object v4, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->weatherConditionDrawables:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-virtual {p2, v6, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .parameter "context"
    .parameter "arrayOfInt"

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 84
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 72
    const-string v1, "muyu"

    const-string v2, "HFWeatherWidget: onDisabled  stopService "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/appwidget/hfweather/HFWeatherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, serviceintent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 76
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/appwidget/hfweather/HFWeatherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, serviceintent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    return-void
.end method

.method performUpdate(Landroid/content/Context;Lcom/zte/appwidget/hfweather/WeatherInfo;Z[I)V
    .locals 6
    .parameter "context"
    .parameter "info"
    .parameter "flag"
    .parameter "appWidgetIds"

    .prologue
    .line 267
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030001

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 269
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 270
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 284
    :goto_0
    return-void

    .line 273
    :cond_0
    const-string v2, "muyu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performUpdate: updateTime(context,views) time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0, p1, v1}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->updateTime(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 278
    invoke-direct {p0, p1, v1, p2}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->updateWidgetView(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/zte/appwidget/hfweather/WeatherInfo;)V

    .line 281
    invoke-direct {p0, p1, v1, p3}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 283
    invoke-direct {p0, p1, p4, v1}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method updateTime(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 9
    .parameter "context"
    .parameter "views"

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 196
    .local v4, time:J
    const-string v6, "muyu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateTime time= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 198
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 199
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 202
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 203
    .local v3, mMinute:I
    const/4 v2, 0x0

    .line 204
    .local v2, mHour:I
    const/4 v1, 0x0

    .line 206
    .local v1, mAmPm:I
    invoke-direct {p0, p1}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->is24Hour(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 207
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 208
    const/4 v1, -0x1

    .line 213
    :goto_0
    invoke-direct {p0, p1, p2, v2}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->updateHour(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 214
    invoke-direct {p0, p1, p2, v3}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->updateMin(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 215
    invoke-direct {p0, p1, p2, v1}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->updateAmPm(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 218
    return-void

    .line 210
    :cond_0
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 211
    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_0
.end method
