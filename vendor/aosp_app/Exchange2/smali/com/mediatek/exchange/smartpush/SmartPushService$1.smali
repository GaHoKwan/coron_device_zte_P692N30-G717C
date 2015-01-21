.class Lcom/mediatek/exchange/smartpush/SmartPushService$1;
.super Ljava/lang/Object;
.source "SmartPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/exchange/smartpush/SmartPushService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/exchange/smartpush/SmartPushService;


# direct methods
.method constructor <init>(Lcom/mediatek/exchange/smartpush/SmartPushService;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/mediatek/exchange/smartpush/SmartPushService$1;->this$0:Lcom/mediatek/exchange/smartpush/SmartPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 424
    invoke-static {}, Lcom/mediatek/exchange/smartpush/SmartPushService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-static {}, Lcom/mediatek/exchange/smartpush/SmartPushService;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 426
    :try_start_0
    const-string v0, "!!! SmartPushService, onCreate"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService$1;->this$0:Lcom/mediatek/exchange/smartpush/SmartPushService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mediatek/exchange/smartpush/SmartPushService$1;->this$0:Lcom/mediatek/exchange/smartpush/SmartPushService;

    const-class v4, Lcom/mediatek/exchange/smartpush/SmartPushService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 430
    invoke-static {}, Lcom/mediatek/exchange/smartpush/SmartPushService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    monitor-exit v1

    goto :goto_0

    .line 433
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
