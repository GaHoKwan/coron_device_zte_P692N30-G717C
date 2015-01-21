.class Lcom/android/exchange/ExchangeService$8;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .locals 0
    .parameter

    .prologue
    .line 2285
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2289
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$600()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2291
    :try_start_1
    new-instance v1, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v3, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {v1, v3}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/service/ServiceProxy;->test()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2292
    const-string v1, "!!! Email application not found; stopping self"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2293
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    .line 2295
    :cond_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1600()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    .line 2297
    :try_start_2
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2298
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2299
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$1602(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2303
    .end local v0           #deviceId:Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1600()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2304
    const-string v1, "!!! deviceId unknown; stopping self and retrying"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2305
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    .line 2307
    new-instance v1, Lcom/android/exchange/ExchangeService$8$1;

    invoke-direct {v1, p0}, Lcom/android/exchange/ExchangeService$8$1;-><init>(Lcom/android/exchange/ExchangeService$8;)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 2317
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2334
    :goto_1
    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->access$1402(Z)Z

    .line 2336
    return-void

    .line 2322
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->runAccountReconcilerSync(Landroid/content/Context;)V

    .line 2324
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v1}, Lcom/android/exchange/ExchangeService;->maybeStartExchangeServiceThread()V

    .line 2325
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1700()Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_4

    .line 2326
    const-string v1, "!!! EAS ExchangeService, stopping self"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2327
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    .line 2332
    :cond_3
    :goto_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2334
    :catchall_1
    move-exception v1

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->access$1402(Z)Z

    throw v1

    .line 2328
    :cond_4
    :try_start_6
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2330
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1388

    #calls: Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V
    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->access$1800(Lcom/android/exchange/ExchangeService;JJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 2301
    :catch_0
    move-exception v1

    goto :goto_0
.end method
