.class Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 214
    iput-object p1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, action:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Receive intent action = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$000(Ljava/lang/String;)V

    .line 220
    const-string v12, "com.mediatek.bluetooth.dun.accessresponse"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 222
    const-string v12, "com.mediatek.bluetooth.dun.accessresult"

    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 224
    .local v11, result:I
    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 226
    iget-object v12, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    iget-object v13, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunConnPath:Ljava/lang/String;
    invoke-static {v13}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$100(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunConnectRspNative(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$200(Lcom/mediatek/bluetooth/dun/BluetoothDunService;Ljava/lang/String;Z)V

    .line 297
    .end local v11           #result:I
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v11       #result:I
    :cond_1
    iget-object v12, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    iget-object v13, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunConnPath:Ljava/lang/String;
    invoke-static {v13}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$100(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunConnectRspNative(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$200(Lcom/mediatek/bluetooth/dun/BluetoothDunService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 234
    .end local v11           #result:I
    :cond_2
    const-string v12, "com.mediatek.bluetooth.dun.resendnotification"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 236
    iget-object v12, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v12}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$300(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunConnPath:Ljava/lang/String;
    invoke-static {v13}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$100(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    .line 237
    .local v8, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v12, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->createDunAuthNotification(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V
    invoke-static {v12, v0, v8, v13}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$400(Lcom/mediatek/bluetooth/dun/BluetoothDunService;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 239
    .end local v8           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    const-string v12, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 243
    iget-object v12, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$500(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/content/Context;

    move-result-object v12

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 244
    .local v7, connmgr:Landroid/net/ConnectivityManager;
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 245
    .local v1, MobileInfo:Landroid/net/NetworkInfo;
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 247
    .local v3, WifiInfo:Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 248
    .local v2, MobileState:Landroid/net/NetworkInfo$DetailedState;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 250
    .local v4, WifiState:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v1, :cond_4

    .line 251
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 252
    :cond_4
    if-eqz v3, :cond_5

    .line 253
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    .line 254
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkInfo broadcast, MobileState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",WifiState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$000(Ljava/lang/String;)V

    .line 261
    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v12, :cond_0

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v12, :cond_0

    .line 263
    iget-object v12, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I
    invoke-static {v12}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$600(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 265
    iget-object v12, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunDisconnectNative()V
    invoke-static {v12}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$700(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)V

    goto/16 :goto_0

    .line 269
    .end local v1           #MobileInfo:Landroid/net/NetworkInfo;
    .end local v2           #MobileState:Landroid/net/NetworkInfo$DetailedState;
    .end local v3           #WifiInfo:Landroid/net/NetworkInfo;
    .end local v4           #WifiState:Landroid/net/NetworkInfo$DetailedState;
    .end local v7           #connmgr:Landroid/net/ConnectivityManager;
    :cond_6
    const-string v12, "android.bluetooth.BluetoothTethering.BLUETOOTH_INTERFACE_ADDED"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 271
    const-string v12, "receiver BluetoothTethering.BLUETOOTH_INTERFACE_ADDED"

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$000(Ljava/lang/String;)V

    .line 272
    iget-object v12, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I
    invoke-static {v12}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$600(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 274
    const-string v12, "android.bluetooth.BluetoothTethering.BLUETOOTH_INTERFACE_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 275
    .local v9, iface:Ljava/lang/String;
    iget-object v12, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$500(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/content/Context;

    move-result-object v12

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 276
    .local v6, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v6, v9}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_0

    .line 277
    const-string v12, "BluetoothDunService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error tethering "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", retry..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v12, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$800(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v10

    .line 280
    .local v10, msg:Landroid/os/Message;
    iput-object v9, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 281
    iget-object v12, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$800(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/os/Handler;

    move-result-object v12

    const-wide/16 v13, 0x1f4

    invoke-virtual {v12, v10, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 286
    .end local v6           #cm:Landroid/net/ConnectivityManager;
    .end local v9           #iface:Ljava/lang/String;
    .end local v10           #msg:Landroid/os/Message;
    :cond_7
    const-string v12, "DUN does not connected"

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :cond_8
    const-string v12, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 291
    const-string v12, "android.bluetooth.adapter.extra.STATE"

    const/high16 v13, -0x8000

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/16 v13, 0xd

    if-ne v12, v13, :cond_0

    .line 294
    iget-object v12, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->clearService()V
    invoke-static {v12}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$900(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)V

    goto/16 :goto_0
.end method
