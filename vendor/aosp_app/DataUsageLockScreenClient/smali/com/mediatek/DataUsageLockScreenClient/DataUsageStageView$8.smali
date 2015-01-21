.class Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$8;
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
    .line 1589
    iput-object p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$8;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1592
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1593
    .local v0, action:Ljava/lang/String;
    const-string v4, "DataUsageStageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimStateReceiver action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHandler = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$8;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #getter for: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1000(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1100(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$8;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #getter for: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSyncObjForHandler:Ljava/lang/Object;
    invoke-static {v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1200(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1596
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$8;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #getter for: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1000(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1597
    monitor-exit v5

    .line 1634
    :goto_0
    return-void

    .line 1600
    :cond_0
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1601
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1602
    .local v3, stateExtra:Ljava/lang/String;
    const-string v4, "DataUsageStageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1100(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    const/4 v1, 0x0

    .line 1605
    .local v1, msg:Landroid/os/Message;
    const-string v4, "simId"

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1606
    .local v2, slotId:I
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "NOT_READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1608
    :cond_1
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$8;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #getter for: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1000(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Landroid/os/Handler;

    move-result-object v4

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1609
    if-eqz v1, :cond_2

    .line 1610
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1633
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #slotId:I
    .end local v3           #stateExtra:Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1612
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #slotId:I
    .restart local v3       #stateExtra:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v4, "LOADED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1613
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$8;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #getter for: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1000(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Landroid/os/Handler;

    move-result-object v4

    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1614
    if-eqz v1, :cond_2

    .line 1615
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
