.class Landroid/net/wifi/WifiStateMachine$PppoeHandler;
.super Landroid/os/Handler;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PppoeHandler"
.end annotation


# instance fields
.field private mCancelCallback:Z

.field private mController:Lcom/android/internal/util/StateMachine;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V
    .locals 0
    .parameter
    .parameter "looper"
    .parameter "target"

    .prologue
    .line 6166
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    .line 6167
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6168
    iput-object p3, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->mController:Lcom/android/internal/util/StateMachine;

    .line 6169
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 6172
    const-string v0, "WifiStateMachine"

    const-string v1, "Handle start PPPOE message!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6174
    new-instance v9, Landroid/net/DhcpInfoInternal;

    invoke-direct {v9}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 6175
    .local v9, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    monitor-enter p0

    .line 6177
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->mCancelCallback:Z

    .line 6178
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6180
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$16900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v1, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 6181
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "PPPOE_STATE_CONNECTING"

    #calls: Landroid/net/wifi/WifiStateMachine;->sendPppoeStateChangedBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$24100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6182
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/PPPOEConfig;->timeout:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/PPPOEConfig;->mtu:I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v7

    iget v7, v7, Landroid/net/wifi/PPPOEConfig;->mru:I

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v8

    iget v8, v8, Landroid/net/wifi/PPPOEConfig;->MSS:I

    invoke-static/range {v0 .. v9}, Landroid/net/NetworkUtils;->runPPPOE(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIILandroid/net/DhcpInfoInternal;)I

    move-result v11

    .line 6185
    .local v11, result:I
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runPPPOE result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6186
    if-nez v11, :cond_1

    .line 6187
    const/4 v10, 0x1

    .line 6188
    .local v10, event:I
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PPPoE succeeded, dhcpInfoInternal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6189
    monitor-enter p0

    .line 6190
    :try_start_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->mCancelCallback:Z

    if-nez v0, :cond_0

    .line 6191
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->mController:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, v10, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 6193
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6199
    .end local v10           #event:I
    :goto_0
    return-void

    .line 6178
    .end local v11           #result:I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 6193
    .restart local v10       #event:I
    .restart local v11       #result:I
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 6195
    .end local v10           #event:I
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->stopPPPoE()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$14900(Landroid/net/wifi/WifiStateMachine;)V

    .line 6196
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "FAILURE"

    #calls: Landroid/net/wifi/WifiStateMachine;->sendPppoeCompletedBroadcast(Ljava/lang/String;I)V
    invoke-static {v0, v1, v11}, Landroid/net/wifi/WifiStateMachine;->access$17000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;I)V

    .line 6197
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PPPoE failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/net/NetworkUtils;->getPPPOEError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .locals 1
    .parameter "cancelCallback"

    .prologue
    .line 6202
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine$PppoeHandler;->mCancelCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6203
    monitor-exit p0

    return-void

    .line 6202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
