.class Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$2;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 103
    const-string v0, "muyu"

    const-string v1, "weather date changed...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$2;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    invoke-virtual {v0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->query()V

    .line 105
    return-void
.end method