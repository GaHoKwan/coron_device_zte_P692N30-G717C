.class Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$7;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageStageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;


# direct methods
.method constructor <init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1567
    iput-object p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$7;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1570
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1571
    .local v0, action:Ljava/lang/String;
    const-string v2, "DataUsageStageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mStatsReceiver action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHandler = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$7;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #getter for: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1000(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1100(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$7;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #getter for: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSyncObjForHandler:Ljava/lang/Object;
    invoke-static {v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1200(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1574
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$7;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #getter for: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1000(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1575
    monitor-exit v3

    .line 1586
    :goto_0
    return-void

    .line 1578
    :cond_0
    const-string v2, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1579
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$7;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #getter for: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1000(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1580
    .local v1, msg:Landroid/os/Message;
    if-eqz v1, :cond_1

    .line 1581
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1582
    const-string v2, "DataUsageStageView"

    const-string v4, "ACTION_NETWORK_STATS_UPDATED"

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1100(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method