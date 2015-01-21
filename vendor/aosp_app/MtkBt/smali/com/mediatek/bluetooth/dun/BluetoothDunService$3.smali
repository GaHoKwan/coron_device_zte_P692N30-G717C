.class Lcom/mediatek/bluetooth/dun/BluetoothDunService$3;
.super Landroid/os/Handler;
.source "BluetoothDunService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/dun/BluetoothDunService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$3;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 430
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 433
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$3;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$600(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 435
    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$3;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    iget-object v3, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$3;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunConnPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$100(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunConnectRspNative(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$200(Lcom/mediatek/bluetooth/dun/BluetoothDunService;Ljava/lang/String;Z)V

    .line 436
    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$3;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    invoke-static {}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$1200()I

    move-result v3

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->removeDunAuthNotification(I)V
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$1300(Lcom/mediatek/bluetooth/dun/BluetoothDunService;I)V

    .line 437
    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$3;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    const/4 v3, 0x2

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunSetState(I)V
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$1400(Lcom/mediatek/bluetooth/dun/BluetoothDunService;I)V

    goto :goto_0

    .line 442
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$3;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$500(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 443
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 444
    .local v1, iface:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    const-string v2, "BluetoothDunService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error tethering again"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
