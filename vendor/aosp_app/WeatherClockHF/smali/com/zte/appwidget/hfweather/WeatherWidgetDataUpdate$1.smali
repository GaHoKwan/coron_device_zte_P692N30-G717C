.class Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$1;
.super Landroid/content/BroadcastReceiver;
.source "WeatherWidgetDataUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;


# direct methods
.method constructor <init>(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$1;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    const-string v0, "muyu"

    const-string v1, "Receive time changed broadcast...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "muyu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherWidgetDataUpdate Receive ....time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$1;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #getter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mAppWidgetProvider:Lcom/zte/appwidget/hfweather/HFWeatherWidget;
    invoke-static {v0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$300(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Lcom/zte/appwidget/hfweather/HFWeatherWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$1;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #getter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mService:Landroid/app/Service;
    invoke-static {v1}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$000(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Landroid/app/Service;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$1;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #getter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->info:Lcom/zte/appwidget/hfweather/WeatherInfo;
    invoke-static {v2}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$100(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Lcom/zte/appwidget/hfweather/WeatherInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$1;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #getter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->noCityFlag:Z
    invoke-static {v3}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$200(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->performUpdate(Landroid/content/Context;Lcom/zte/appwidget/hfweather/WeatherInfo;Z[I)V

    .line 98
    return-void
.end method
