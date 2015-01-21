.class Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$9;
.super Ljava/lang/Object;
.source "DataUsageStageView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 1638
    iput-object p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$9;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1640
    const/4 v3, 0x1

    .line 1642
    .local v3, val:Z
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    move v3, v4

    .line 1679
    .end local v3           #val:Z
    :goto_0
    return v3

    .line 1644
    .restart local v3       #val:Z
    :pswitch_0
    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$9;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    monitor-enter v5

    .line 1645
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$9;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #getter for: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsApkRun:Z
    invoke-static {v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1300(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1647
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$9;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->updateDataUsageView()V
    invoke-static {v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1400(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V

    .line 1648
    const-string v4, "DataUsageStageView"

    const-string v6, "mHandlerCallback->updateDataUsageView()"

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1100(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    :cond_0
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1653
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1654
    .local v2, slotId:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1655
    .local v1, simState:I
    const-string v5, "DataUsageStageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHandler MSG_SIM_STATE_CHANGED, slotId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",simState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1100(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 1657
    .local v0, mState:Landroid/telephony/ServiceState;
    if-nez v1, :cond_1

    .line 1658
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1662
    :goto_1
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$9;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    invoke-virtual {v4, v2, v0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->createInternal(ILandroid/telephony/ServiceState;)Landroid/view/View;

    goto :goto_0

    .line 1660
    :cond_1
    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setState(I)V

    goto :goto_1

    .line 1665
    .end local v0           #mState:Landroid/telephony/ServiceState;
    .end local v1           #simState:I
    .end local v2           #slotId:I
    :pswitch_2
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$9;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard1Floating(I)V
    invoke-static {v4, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$800(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;I)V

    goto :goto_0

    .line 1668
    :pswitch_3
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$9;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard1Floating(I)V
    invoke-static {v4, v7}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$800(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;I)V

    goto :goto_0

    .line 1671
    :pswitch_4
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$9;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard2Floating(I)V
    invoke-static {v4, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$900(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;I)V

    goto :goto_0

    .line 1674
    :pswitch_5
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$9;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard2Floating(I)V
    invoke-static {v4, v7}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$900(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;I)V

    goto :goto_0

    .line 1642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
