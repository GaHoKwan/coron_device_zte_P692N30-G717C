.class Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;
.super Landroid/os/Handler;
.source "WifiOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppTransfer;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/WifiOppTransfer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    .line 104
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x3

    .line 109
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 246
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 115
    :pswitch_1
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    const-string v8, "receive TCPLINK_ERROR msg"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #setter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mConnectThread:Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;
    invoke-static {v7, v9}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$002(Lcom/android/wifidirect/test/WifiOppTransfer;Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;)Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;

    .line 117
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    const/16 v8, 0x1f1

    #calls: Lcom/android/wifidirect/test/WifiOppTransfer;->markBatchFailed(I)V
    invoke-static {v7, v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$100(Lcom/android/wifidirect/test/WifiOppTransfer;I)V

    .line 118
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v7

    iput v10, v7, Lcom/android/wifidirect/test/WifiOppBatch;->mStatus:I

    goto :goto_0

    .line 125
    :pswitch_2
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    const-string v8, "Transfer receive TCPLINK_CONNECTED msg"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #setter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mConnectThread:Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;
    invoke-static {v7, v9}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$002(Lcom/android/wifidirect/test/WifiOppTransfer;Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;)Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;

    .line 127
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/wifidirect/test/ObexTransport;

    #setter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mTransport:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v8, v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$302(Lcom/android/wifidirect/test/WifiOppTransfer;Lcom/android/wifidirect/test/ObexTransport;)Lcom/android/wifidirect/test/ObexTransport;

    .line 128
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #calls: Lcom/android/wifidirect/test/WifiOppTransfer;->startObexSession()V
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$400(Lcom/android/wifidirect/test/WifiOppTransfer;)V

    goto :goto_0

    .line 139
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 140
    .local v2, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive MSG_SHARE_COMPLETE for info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v7

    iget v7, v7, Lcom/android/wifidirect/test/WifiOppBatch;->mDirection:I

    if-nez v7, :cond_2

    .line 142
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/wifidirect/test/WifiOppBatch;->getPendingShare()Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v8

    #setter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v7, v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$502(Lcom/android/wifidirect/test/WifiOppTransfer;Lcom/android/wifidirect/test/WifiOppShareInfo;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 144
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$500(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 146
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "continue session for info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v9}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$500(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v9

    iget v9, v9, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from batch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v9}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v9

    iget v9, v9, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #calls: Lcom/android/wifidirect/test/WifiOppTransfer;->processCurrentShare()V
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$600(Lcom/android/wifidirect/test/WifiOppTransfer;)V

    goto/16 :goto_0

    .line 151
    :cond_1
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Batch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v9}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v9

    iget v9, v9, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is done"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$700(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppObexSession;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/wifidirect/test/WifiOppObexSession;->stop()V

    goto/16 :goto_0

    .line 157
    :cond_2
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mFileProcessor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$800(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->process(Lcom/android/wifidirect/test/WifiOppShareInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 158
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is processing"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 168
    .end local v2           #info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 169
    .local v3, info1:Lcom/android/wifidirect/test/WifiOppShareInfo;
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive MSG_SESSION_COMPLETE for batch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v9}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v9

    iget v9, v9, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v7

    const/4 v8, 0x2

    iput v8, v7, Lcom/android/wifidirect/test/WifiOppBatch;->mStatus:I

    .line 174
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #calls: Lcom/android/wifidirect/test/WifiOppTransfer;->tickShareStatus(Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    invoke-static {v7, v3}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$900(Lcom/android/wifidirect/test/WifiOppTransfer;Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    goto/16 :goto_0

    .line 179
    .end local v3           #info1:Lcom/android/wifidirect/test/WifiOppShareInfo;
    :pswitch_5
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive MSG_SESSION_ERROR for batch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v9}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v9

    iget v9, v9, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 181
    .local v4, info2:Lcom/android/wifidirect/test/WifiOppShareInfo;
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$700(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppObexSession;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/wifidirect/test/WifiOppObexSession;->stop()V

    .line 182
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v7

    iput v10, v7, Lcom/android/wifidirect/test/WifiOppBatch;->mStatus:I

    .line 183
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    iget v8, v4, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    #calls: Lcom/android/wifidirect/test/WifiOppTransfer;->markBatchFailed(I)V
    invoke-static {v7, v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$100(Lcom/android/wifidirect/test/WifiOppTransfer;I)V

    .line 184
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$500(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v8

    #calls: Lcom/android/wifidirect/test/WifiOppTransfer;->tickShareStatus(Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    invoke-static {v7, v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$900(Lcom/android/wifidirect/test/WifiOppTransfer;Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    goto/16 :goto_0

    .line 188
    .end local v4           #info2:Lcom/android/wifidirect/test/WifiOppShareInfo;
    :pswitch_6
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive MSG_SHARE_INTERRUPTED for batch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v9}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v9

    iget v9, v9, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 190
    .local v5, info3:Lcom/android/wifidirect/test/WifiOppShareInfo;
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v7

    iget v7, v7, Lcom/android/wifidirect/test/WifiOppBatch;->mDirection:I

    if-nez v7, :cond_0

    .line 192
    :try_start_0
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mTransport:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$300(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/ObexTransport;

    move-result-object v7

    if-nez v7, :cond_3

    .line 193
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    const-string v8, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_1
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    const-string v8, "mTransport closed "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v7

    iput v10, v7, Lcom/android/wifidirect/test/WifiOppBatch;->mStatus:I

    .line 202
    if-eqz v5, :cond_4

    .line 203
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    iget v8, v5, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    #calls: Lcom/android/wifidirect/test/WifiOppTransfer;->markBatchFailed(I)V
    invoke-static {v7, v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$100(Lcom/android/wifidirect/test/WifiOppTransfer;I)V

    .line 207
    :goto_2
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$500(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v8

    #calls: Lcom/android/wifidirect/test/WifiOppTransfer;->tickShareStatus(Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    invoke-static {v7, v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$900(Lcom/android/wifidirect/test/WifiOppTransfer;Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    goto/16 :goto_0

    .line 195
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mTransport:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$300(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/ObexTransport;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/wifidirect/test/ObexTransport;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/io/IOException;
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    const-string v8, "failed to close mTransport"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 205
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #calls: Lcom/android/wifidirect/test/WifiOppTransfer;->markBatchFailed()V
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$1000(Lcom/android/wifidirect/test/WifiOppTransfer;)V

    goto :goto_2

    .line 212
    .end local v5           #info3:Lcom/android/wifidirect/test/WifiOppShareInfo;
    :pswitch_7
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive MSG_CONNECT_TIMEOUT for batch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v9}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v9

    iget v9, v9, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;

    move-result-object v7

    iget v7, v7, Lcom/android/wifidirect/test/WifiOppBatch;->mDirection:I

    if-nez v7, :cond_6

    .line 218
    :try_start_2
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mTransport:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$300(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/ObexTransport;

    move-result-object v7

    if-nez v7, :cond_5

    .line 219
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    const-string v8, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 226
    :goto_3
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    const-string v8, "mTransport closed "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 221
    :cond_5
    :try_start_3
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mTransport:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$300(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/ObexTransport;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/wifidirect/test/ObexTransport;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 223
    :catch_1
    move-exception v0

    .line 224
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    const-string v8, "failed to close mTransport"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 232
    .end local v0           #e:Ljava/io/IOException;
    :cond_6
    const-string v7, "<==>tsjWFD WifiOppTransfer"

    const-string v8, "USER_CONFIRMATION_TIMEOUT_ACTION "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$1100(Lcom/android/wifidirect/test/WifiOppTransfer;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 237
    .local v6, nm:Landroid/app/NotificationManager;
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$500(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v7

    iget v7, v7, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 239
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, in:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$1100(Lcom/android/wifidirect/test/WifiOppTransfer;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$500(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v8

    #calls: Lcom/android/wifidirect/test/WifiOppTransfer;->markShareTimeout(Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    invoke-static {v7, v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$1200(Lcom/android/wifidirect/test/WifiOppTransfer;Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    goto/16 :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
