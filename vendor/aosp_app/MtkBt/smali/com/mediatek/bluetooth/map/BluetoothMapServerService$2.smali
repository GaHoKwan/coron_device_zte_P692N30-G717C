.class Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/BluetoothMapServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 425
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, action:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive intent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 427
    const-string v4, "com.mediatek.bluetooth.map.BluetoothMapService.action.AUTHORIZE_RESULT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    const-string v4, "com.mediatek.bluetooth.map.BluetoothMapService.extra.RESULT"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 429
    .local v1, allow:Z
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 431
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->authorizeResponse(Landroid/bluetooth/BluetoothDevice;Z)Z
    invoke-static {v4, v2, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$1600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 463
    .end local v1           #allow:Z
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    const-string v4, "com.mediatek.bluetooth.map.BluetoothMapService.action.DISCONNECT_DEVICE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 433
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 434
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v4, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2100(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 435
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const-string v4, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 436
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 437
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mNotification:Lcom/mediatek/bluetooth/map/BluetoothMapNotification;
    invoke-static {v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/BluetoothMapNotification;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->getDeviceState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 438
    .local v3, state:I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 439
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mNotification:Lcom/mediatek/bluetooth/map/BluetoothMapNotification;
    invoke-static {v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/BluetoothMapNotification;

    move-result-object v4

    invoke-virtual {v4, v7, v2, v7}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->createNotification(ILandroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 441
    :cond_3
    if-ne v3, v8, :cond_0

    .line 442
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mNotification:Lcom/mediatek/bluetooth/map/BluetoothMapNotification;
    invoke-static {v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/BluetoothMapNotification;

    move-result-object v4

    invoke-virtual {v4, v8, v2, v7}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->createNotification(ILandroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 445
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #state:I
    :cond_4
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 446
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 447
    .restart local v3       #state:I
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 448
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    if-ne v3, v9, :cond_0

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 449
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v4, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2100(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 451
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #state:I
    :cond_5
    const-string v4, "com.mediatek.bluetooth.map.BluetoothMapNotification.action.MAP_CLEAR_NOTIFICATION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 452
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->clearAuthorizingDevices()V
    invoke-static {v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2200(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V

    goto/16 :goto_0

    .line 453
    :cond_6
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    .line 456
    .restart local v3       #state:I
    const/16 v4, 0xd

    if-ne v3, v4, :cond_7

    .line 457
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->clearService()V
    invoke-static {v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V

    goto/16 :goto_0

    .line 458
    :cond_7
    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 459
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->initService()V
    invoke-static {v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2400(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V

    goto/16 :goto_0
.end method
