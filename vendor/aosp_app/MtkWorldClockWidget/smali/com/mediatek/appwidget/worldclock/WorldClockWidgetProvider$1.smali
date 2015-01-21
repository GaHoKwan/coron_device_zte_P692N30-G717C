.class Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;
.super Landroid/os/AsyncTask;
.source "WorldClockWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;

.field final synthetic val$appWidgetId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

.field final synthetic val$weatherID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/appwidget/worldclock/ClockCityInfo;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->this$0:Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;

    iput-object p2, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->val$weatherID:Ljava/lang/String;

    iput-object p4, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->val$newCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    iput p5, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->val$appWidgetId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "args"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->reLoadTimeZone(Landroid/content/Context;)V

    .line 116
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->val$weatherID:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getCityNameByWeatherID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, newCityName:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->val$newCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    invoke-virtual {v2, v1}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setCityName(Ljava/lang/String;)V

    .line 120
    iget v2, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->val$appWidgetId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getCityCPref(Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    move-result-object v0

    .line 121
    .local v0, cityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "WorldClockWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCity cityInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->val$appWidgetId:I

    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->val$newCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    invoke-static {v2, v3, v4}, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;->updateCity(Landroid/content/Context;ILcom/mediatek/appwidget/worldclock/ClockCityInfo;)V

    .line 124
    iget v2, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->val$appWidgetId:I

    iget-object v3, p0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;->val$newCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    invoke-static {v2, v3}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->savePreferences(ILcom/mediatek/appwidget/worldclock/ClockCityInfo;)V

    .line 126
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
