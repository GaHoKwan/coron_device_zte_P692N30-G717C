.class Lcom/hf/manager/WeatherManager$1;
.super Landroid/os/AsyncTask;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/manager/WeatherManager;->queryAllWeather(ZLjava/lang/String;)V
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
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/WeatherModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/hf/manager/WeatherManager;

.field private final synthetic val$isRepeat:Z

.field private final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hf/manager/WeatherManager;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/manager/WeatherManager$1;->this$0:Lcom/hf/manager/WeatherManager;

    iput-object p2, p0, Lcom/hf/manager/WeatherManager$1;->val$tag:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/hf/manager/WeatherManager$1;->val$isRepeat:Z

    .line 91
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 100
    iget-object v1, p0, Lcom/hf/manager/WeatherManager$1;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hf/provider/SQLUtils;->isEmptyOfWeather(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/hf/manager/WeatherManager$1;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "weather_log.txt"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hf/manager/WeatherManager$1;->val$tag:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " : the citys size is empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/hf/data/LogTag;->writeToSDcard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-object v5

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/hf/manager/WeatherManager$1;->this$0:Lcom/hf/manager/WeatherManager;

    #calls: Lcom/hf/manager/WeatherManager;->findCity()Ljava/util/List;
    invoke-static {v1}, Lcom/hf/manager/WeatherManager;->access$1(Lcom/hf/manager/WeatherManager;)Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, cityList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CityModel;>;"
    iget-object v1, p0, Lcom/hf/manager/WeatherManager$1;->this$0:Lcom/hf/manager/WeatherManager;

    iget-object v2, p0, Lcom/hf/manager/WeatherManager$1;->val$tag:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/hf/manager/WeatherManager$1;->val$isRepeat:Z

    #calls: Lcom/hf/manager/WeatherManager;->queryWeather(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;
    invoke-static {v1, v0, v2, v3}, Lcom/hf/manager/WeatherManager;->access$2(Lcom/hf/manager/WeatherManager;Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/manager/WeatherManager$1;->mList:Ljava/util/List;

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 112
    iget-object v3, p0, Lcom/hf/manager/WeatherManager$1;->mList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hf/manager/WeatherManager$1;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 113
    sget-object v3, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/hf/manager/WeatherManager$1;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 118
    :cond_0
    const-string v0, "com.hf.UPDATE_ALL_WEATHER"

    .line 119
    .local v0, action:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/hf/manager/WeatherManager$1;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    const-string v3, "ZTE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send action:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_1
    iget-object v3, p0, Lcom/hf/manager/WeatherManager$1;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/hf/manager/HFPackageManager;->getInstance(Landroid/content/Context;)Lcom/hf/manager/HFPackageManager;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Lcom/hf/manager/HFPackageManager;->exitFromReceiver(J)V

    .line 131
    return-void

    .line 114
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hf/model/WeatherModel;

    .line 115
    .local v2, item:Lcom/hf/model/WeatherModel;
    sget-object v4, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/hf/model/WeatherModel;->cityId:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    .end local v2           #item:Lcom/hf/model/WeatherModel;
    :cond_2
    const-string v0, "com.hf.UPDATE_ALL_WEATHER_FAILED"

    .line 125
    .restart local v0       #action:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/hf/manager/WeatherManager$1;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    const-string v3, "ZTE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send action:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 97
    return-void
.end method
