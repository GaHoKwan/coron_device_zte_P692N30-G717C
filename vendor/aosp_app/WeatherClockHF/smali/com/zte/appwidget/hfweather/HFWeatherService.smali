.class public Lcom/zte/appwidget/hfweather/HFWeatherService;
.super Landroid/app/Service;
.source "HFWeatherService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HFWeatherService"


# instance fields
.field private mWeatherWidgetDataUpdate:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/appwidget/hfweather/HFWeatherService;->mWeatherWidgetDataUpdate:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    return-void
.end method

.method private stopService()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "muyu"

    const-string v1, "HFWeatherService: ....  stopService "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/zte/appwidget/hfweather/HFWeatherService;->stopSelf()V

    .line 26
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 15
    invoke-static {p0}, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->Check(Landroid/content/Context;)V

    .line 17
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/HFWeatherService;->mWeatherWidgetDataUpdate:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    invoke-direct {v0, p0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/zte/appwidget/hfweather/HFWeatherService;->mWeatherWidgetDataUpdate:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    .line 20
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 50
    const-string v0, "muyu"

    const-string v1, "HFWeatherService: ....  onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/HFWeatherService;->mWeatherWidgetDataUpdate:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    invoke-virtual {v0, p0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->onDelete(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 39
    const-string v0, "muyu"

    const-string v1, "HFWeatherWidget: onStart  startService---mWeatherWidgetDataUpdate.query() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/HFWeatherService;->mWeatherWidgetDataUpdate:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    invoke-virtual {v0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->query()V

    .line 41
    return-void
.end method
