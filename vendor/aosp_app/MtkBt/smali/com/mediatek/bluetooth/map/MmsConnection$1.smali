.class Lcom/mediatek/bluetooth/map/MmsConnection$1;
.super Landroid/os/Handler;
.source "MmsConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/MmsConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/MmsConnection;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/MmsConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    .line 182
    .local v0, event:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$000(Ljava/lang/String;)V

    .line 183
    packed-switch v0, :pswitch_data_0

    .line 219
    const-string v3, "unexpected event"

    #calls: Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$000(Ljava/lang/String;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 185
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #getter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mPendingTask:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$100(Lcom/mediatek/bluetooth/map/MmsConnection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 186
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 189
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #calls: Lcom/mediatek/bluetooth/map/MmsConnection;->startConnection()I
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$200(Lcom/mediatek/bluetooth/map/MmsConnection;)I

    move-result v2

    .line 190
    .local v2, netState:I
    if-nez v2, :cond_2

    .line 191
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #getter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mDataTransferring:Z
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$300(Lcom/mediatek/bluetooth/map/MmsConnection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #calls: Lcom/mediatek/bluetooth/map/MmsConnection;->process()V
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$400(Lcom/mediatek/bluetooth/map/MmsConnection;)V

    .line 193
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #setter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mDataTransferring:Z
    invoke-static {v3, v6}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$302(Lcom/mediatek/bluetooth/map/MmsConnection;Z)Z

    goto :goto_0

    .line 195
    :cond_2
    if-ne v2, v6, :cond_3

    .line 196
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #getter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mReceiverFlag:Z
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$500(Lcom/mediatek/bluetooth/map/MmsConnection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 198
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$700()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #getter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$600(Lcom/mediatek/bluetooth/map/MmsConnection;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #setter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mReceiverFlag:Z
    invoke-static {v3, v6}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$502(Lcom/mediatek/bluetooth/map/MmsConnection;Z)Z

    goto :goto_0

    .line 203
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to begin mms connection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v2           #netState:I
    :pswitch_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #setter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mDataTransferring:Z
    invoke-static {v3, v5}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$302(Lcom/mediatek/bluetooth/map/MmsConnection;Z)Z

    .line 209
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #getter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mPendingTask:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$100(Lcom/mediatek/bluetooth/map/MmsConnection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 210
    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 212
    :cond_4
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #getter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mReceiverFlag:Z
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$500(Lcom/mediatek/bluetooth/map/MmsConnection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    invoke-static {}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$700()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #getter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$600(Lcom/mediatek/bluetooth/map/MmsConnection;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection$1;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #setter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mReceiverFlag:Z
    invoke-static {v3, v5}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$502(Lcom/mediatek/bluetooth/map/MmsConnection;Z)Z

    goto/16 :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
