.class Lcom/android/exchange/ExchangeService$7;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->onCreate()V
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
    .line 2253
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2257
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2267
    :goto_0
    return-void

    .line 2258
    :cond_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2259
    :try_start_0
    const-string v0, "!!! EAS ExchangeService, onCreate"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2262
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.email.EXCHANGE_INTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2263
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2264
    monitor-exit v1

    goto :goto_0

    .line 2266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
