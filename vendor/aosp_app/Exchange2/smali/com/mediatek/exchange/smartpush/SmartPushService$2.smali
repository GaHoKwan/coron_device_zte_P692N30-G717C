.class Lcom/mediatek/exchange/smartpush/SmartPushService$2;
.super Ljava/lang/Object;
.source "SmartPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/exchange/smartpush/SmartPushService;->onDestroy()V
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
    .line 441
    iput-object p1, p0, Lcom/mediatek/exchange/smartpush/SmartPushService$2;->this$0:Lcom/mediatek/exchange/smartpush/SmartPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 445
    sget-object v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->INSTANCE:Lcom/mediatek/exchange/smartpush/SmartPushService;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/exchange/smartpush/SmartPushService;->access$300()Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-static {}, Lcom/mediatek/exchange/smartpush/SmartPushService;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 448
    :try_start_0
    invoke-static {}, Lcom/mediatek/exchange/smartpush/SmartPushService;->access$300()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 449
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/exchange/smartpush/SmartPushService;->access$202(Z)Z

    .line 450
    invoke-static {}, Lcom/mediatek/exchange/smartpush/SmartPushService;->access$300()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 452
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
