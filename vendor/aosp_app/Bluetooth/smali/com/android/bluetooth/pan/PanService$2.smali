.class Lcom/android/bluetooth/pan/PanService$2;
.super Landroid/os/Handler;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/PanService;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$2;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 176
    :sswitch_0
    const-string v0, "[BT][PAN][PanService]"

    const-string v2, "[mHandler.handleMessage] message : MESSAGE_CONNECT!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 178
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$2;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$2;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    #calls: Lcom/android/bluetooth/pan/PanService;->connectPanNative([BII)Z
    invoke-static {v0, v2, v3, v4}, Lcom/android/bluetooth/pan/PanService;->access$200(Lcom/android/bluetooth/pan/PanService;[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const-string v0, "[BT][PAN][PanService]"

    const-string v2, "[mHandler.handleMessage] connectPanNative return false!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$2;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 184
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$2;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 192
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    const-string v0, "[BT][PAN][PanService]"

    const-string v2, "[mHandler.handleMessage] message : MESSAGE_DISCONNECT!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 194
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$2;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    #calls: Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z
    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/PanService;->access$300(Lcom/android/bluetooth/pan/PanService;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const-string v0, "[BT][PAN][PanService]"

    const-string v2, "[mHandler.handleMessage] disconnectPanNative return false!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$2;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$2;->this$0:Lcom/android/bluetooth/pan/PanService;

    #getter for: Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->access$400(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 198
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$2;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$2;->this$0:Lcom/android/bluetooth/pan/PanService;

    #getter for: Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->access$400(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 206
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    const-string v0, "[BT][PAN][PanService]"

    const-string v2, "[mHandler.handleMessage] message : MESSAGE_CONNECT_STATE_CHANGED!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/bluetooth/pan/PanService$ConnectState;

    .line 208
    .local v6, cs:Lcom/android/bluetooth/pan/PanService$ConnectState;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$2;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->addr:[B

    #calls: Lcom/android/bluetooth/btservice/ProfileService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/PanService;->access$500(Lcom/android/bluetooth/pan/PanService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 210
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    const-string v0, "[BT][PAN][PanService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_CONNECT_STATE_CHANGED device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$2;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$2;->this$0:Lcom/android/bluetooth/pan/PanService;

    #getter for: Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->access$400(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    iget v3, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    #calls: Lcom/android/bluetooth/pan/PanService;->convertHalState(I)I
    invoke-static {v3}, Lcom/android/bluetooth/pan/PanService;->access$600(I)I

    move-result v3

    iget v4, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->local_role:I

    iget v5, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->remote_role:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method
