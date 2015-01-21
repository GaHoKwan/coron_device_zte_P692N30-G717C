.class public Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMBTHeadset;


# direct methods
.method private a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMBTHeadset;->c()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMBTHeadset;->c:Lzte/com/cn/driverMode/service/bp;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bp;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x4002

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMBTHeadset;->c:Lzte/com/cn/driverMode/service/bp;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/bp;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "DMBTHeadset"

    const-string v1, "HEADSET send  -> EVENT_BT_SCO_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Bluetooth audio disconnected!"

    invoke-static {p1, v0}, Lzte/com/cn/driverMode/service/ce;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0xc

    const/16 v5, 0xa

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMBTHeadset"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DriverModeBroadcastReceiver onReceive ->action= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "DMBTHeadset"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HEADSET STATE -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/DMBTHeadset;->a(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMBTHeadset;->a:Lzte/com/cn/driverMode/service/DMService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMBTHeadset;->c:Lzte/com/cn/driverMode/service/bp;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bp;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x4003

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMBTHeadset;->c:Lzte/com/cn/driverMode/service/bp;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/bp;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const-string v0, "Bluetooth audio connected!"

    invoke-static {p1, v0}, Lzte/com/cn/driverMode/service/ce;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMBTHeadset;->c()V

    const-string v0, "Bluetooth device disconnected!"

    invoke-static {p1, v0}, Lzte/com/cn/driverMode/service/ce;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMBTHeadset;->a(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_4
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "DMBTHeadset"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HEADSET state -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DMBTHeadset"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HEADSET prevState -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DMBTHeadset"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HEADSET mWaitingForScoConnection -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    invoke-static {v4}, Lzte/com/cn/driverMode/service/DMBTHeadset;->a(Lzte/com/cn/driverMode/service/DMBTHeadset;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DMBTHeadset"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HEADSET mWaitingForTts -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    invoke-static {v4}, Lzte/com/cn/driverMode/service/DMBTHeadset;->b(Lzte/com/cn/driverMode/service/DMBTHeadset;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v6, :cond_6

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    invoke-static {v2}, Lzte/com/cn/driverMode/service/DMBTHeadset;->a(Lzte/com/cn/driverMode/service/DMBTHeadset;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMBTHeadset;->c(Lzte/com/cn/driverMode/service/DMBTHeadset;)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMBTHeadset;->a:Lzte/com/cn/driverMode/service/DMService;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMBTHeadset;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMBTHeadset;->a(Lzte/com/cn/driverMode/service/DMService;)V

    :cond_5
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMBTHeadset;->c:Lzte/com/cn/driverMode/service/bp;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bp;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x4001

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMBTHeadset;->c:Lzte/com/cn/driverMode/service/bp;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/bp;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "DMBTHeadset"

    const-string v1, "HEADSET send  -> EVENT_BT_SCO_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Bluetooth audio connected!"

    invoke-static {p1, v0}, Lzte/com/cn/driverMode/service/ce;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-ne v1, v6, :cond_7

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMBTHeadset;->a(Lzte/com/cn/driverMode/service/DMBTHeadset;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ne v0, v5, :cond_0

    const-string v0, "DMBTHeadset"

    const-string v1, "lost sco connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    if-ne v0, v5, :cond_0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "android.bluetooth.headset.profile.action.REOPEN_ZTE_CARMODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMBTHeadset"

    const-string v1, "receive android.bluetooth.headset.profile.action.REOPEN_ZTE_CARMODE-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMBTHeadset;->a:Lzte/com/cn/driverMode/service/DMService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;->a:Lzte/com/cn/driverMode/service/DMBTHeadset;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMBTHeadset;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMBTHeadset;->a(Lzte/com/cn/driverMode/service/DMService;)V

    goto/16 :goto_0
.end method
