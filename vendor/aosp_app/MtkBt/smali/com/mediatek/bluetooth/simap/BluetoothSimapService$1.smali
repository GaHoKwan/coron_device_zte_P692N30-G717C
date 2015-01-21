.class Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;
.super Landroid/os/Handler;
.source "BluetoothSimapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/simap/BluetoothSimapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 383
    const-string v2, "BluetoothSimapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler(): got msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 467
    :goto_0
    return-void

    .line 389
    :sswitch_0
    const-string v2, "BluetoothSimapService"

    const-string v3, "= SIMAP_AUTHORIZE_IND ="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    #setter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$002(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 393
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_0

    .line 394
    const-string v2, "BluetoothSimapService"

    const-string v3, "mRemoteDevice = null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    const-string v2, "BluetoothSimapService"

    const-string v3, "mRemoteDevice.getName()return empty, use the default name"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    const v3, 0x7f07014e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v1

    .line 403
    .local v1, trust:Z
    const-string v2, "BluetoothSimapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetTrustState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz v1, :cond_2

    .line 407
    const-string v2, "BluetoothSimapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incomming connection accepted from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " automatically as trusted device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->authorizeRsp(Z)V
    invoke-static {v2, v5}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$200(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;Z)V

    goto/16 :goto_0

    .line 414
    :cond_2
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->createSimapAuthNotification(Z)V
    invoke-static {v2, v5}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$300(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;Z)V

    .line 416
    const-string v2, "BluetoothSimapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incomming connection accepted from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$400(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$400(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x186a0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 429
    .end local v1           #trust:Z
    :sswitch_1
    const-string v2, "BluetoothSimapService"

    const-string v3, "= USER_TIMEOUT ="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    const/4 v3, 0x0

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->authorizeRsp(Z)V
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$200(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;Z)V

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.bluetooth.simap.userconfirmtimeout"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 434
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$500()I

    move-result v3

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->removeSimapAuthNotification(I)V
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$600(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)V

    goto/16 :goto_0

    .line 440
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    const-string v2, "BluetoothSimapService"

    const-string v3, "=== SIMAP_CONNECTED ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->createSimapConnNotification()V
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$700(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V

    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.bluetooth.simap.intent.action.BTSIMAP_CONNECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 449
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_3
    const-string v2, "BluetoothSimapService"

    const-string v3, "=== SIMAP_DISCONNECTED ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.bluetooth.simap.intent.action.BTSIMAP_DISCONNECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 456
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$500()I

    move-result v3

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->removeSimapAuthNotification(I)V
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$600(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)V

    .line 457
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$400(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$800()I

    move-result v3

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->removeSimapConnNotification(I)V
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$900(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)V

    goto/16 :goto_0

    .line 385
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x69 -> :sswitch_0
        0x6a -> :sswitch_2
        0x6b -> :sswitch_3
    .end sparse-switch
.end method
