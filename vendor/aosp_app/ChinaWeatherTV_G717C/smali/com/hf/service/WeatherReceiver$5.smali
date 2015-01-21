.class Lcom/hf/service/WeatherReceiver$5;
.super Ljava/lang/Object;
.source "WeatherReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/service/WeatherReceiver;->resetTraffic(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/service/WeatherReceiver;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hf/service/WeatherReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/service/WeatherReceiver$5;->this$0:Lcom/hf/service/WeatherReceiver;

    iput-object p2, p0, Lcom/hf/service/WeatherReceiver$5;->val$context:Landroid/content/Context;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 241
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    add-long v3, v5, v7

    .line 243
    .local v3, traffic_totle:J
    sget-boolean v5, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v5, :cond_0

    .line 244
    const-string v5, "countTraffic2"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "traffic_totle = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v5, p0, Lcom/hf/service/WeatherReceiver$5;->val$context:Landroid/content/Context;

    const-string v6, "traffic"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 248
    .local v2, preference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 249
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "traffic_mobile"

    invoke-interface {v1, v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 250
    const-string v5, "traffic_wifi"

    invoke-interface {v1, v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 251
    const-string v5, "traffic_totle"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 254
    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    iget-object v5, p0, Lcom/hf/service/WeatherReceiver$5;->this$0:Lcom/hf/service/WeatherReceiver;

    #calls: Lcom/hf/service/WeatherReceiver;->setTrafficAlarm()V
    invoke-static {v5}, Lcom/hf/service/WeatherReceiver;->access$1(Lcom/hf/service/WeatherReceiver;)V

    .line 259
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
