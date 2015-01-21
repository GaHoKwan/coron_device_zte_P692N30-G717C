.class Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "WeatherWidgetDataUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;


# direct methods
.method public constructor <init>(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    .line 122
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 123
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    invoke-virtual {v0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->query()V

    .line 156
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, i:I
    monitor-enter p0

    .line 129
    if-eqz p3, :cond_3

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    const/4 v2, 0x0

    #setter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->noCityFlag:Z
    invoke-static {v1, v2}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$202(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;Z)Z

    .line 131
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const/4 v1, 0x7

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 133
    if-ne v0, v3, :cond_0

    .line 134
    iget-object v1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    iget-object v2, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #calls: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->saveWeatherInfo(Landroid/database/Cursor;)Lcom/zte/appwidget/hfweather/WeatherInfo;
    invoke-static {v2, p3}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$400(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;Landroid/database/Cursor;)Lcom/zte/appwidget/hfweather/WeatherInfo;

    move-result-object v2

    #setter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->info:Lcom/zte/appwidget/hfweather/WeatherInfo;
    invoke-static {v1, v2}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$102(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;Lcom/zte/appwidget/hfweather/WeatherInfo;)Lcom/zte/appwidget/hfweather/WeatherInfo;

    .line 141
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #getter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mAppWidgetProvider:Lcom/zte/appwidget/hfweather/HFWeatherWidget;
    invoke-static {v1}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$300(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Lcom/zte/appwidget/hfweather/HFWeatherWidget;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #getter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->mService:Landroid/app/Service;
    invoke-static {v2}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$000(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Landroid/app/Service;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #getter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->info:Lcom/zte/appwidget/hfweather/WeatherInfo;
    invoke-static {v3}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$100(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Lcom/zte/appwidget/hfweather/WeatherInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    #getter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->noCityFlag:Z
    invoke-static {v4}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$200(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;)Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/zte/appwidget/hfweather/HFWeatherWidget;->performUpdate(Landroid/content/Context;Lcom/zte/appwidget/hfweather/WeatherInfo;Z[I)V

    .line 143
    if-eqz p3, :cond_2

    .line 144
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 145
    const/4 p3, 0x0

    .line 147
    :cond_2
    monitor-exit p0

    .line 148
    return-void

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    const/4 v2, 0x1

    #setter for: Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->noCityFlag:Z
    invoke-static {v1, v2}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->access$202(Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;Z)Z

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate$QueryHandler;->this$0:Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;

    invoke-virtual {v0}, Lcom/zte/appwidget/hfweather/WeatherWidgetDataUpdate;->query()V

    .line 152
    return-void
.end method
