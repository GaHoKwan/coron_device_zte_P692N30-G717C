.class Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f060053

    const/high16 v7, -0x1

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 45
    .local v4, state:I
    packed-switch v4, :pswitch_data_0

    .line 116
    .end local v4           #state:I
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v4       #state:I
    :pswitch_0
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->testingView:Landroid/widget/TextView;

    const v6, 0x7f060040

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->testingView:Landroid/widget/TextView;

    const v6, 0x7f060041

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 53
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    goto :goto_0

    .line 56
    .end local v4           #state:I
    :cond_1
    const-string v5, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->testingView:Landroid/widget/TextView;

    const v6, 0x7f0600ad

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 59
    :cond_2
    const-string v5, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 61
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-boolean v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->mSuccess:Z

    if-nez v5, :cond_0

    .line 62
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget v6, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->mDiscoveryTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->mDiscoveryTimes:I

    .line 63
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->mDiscoveryTimes:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3

    .line 64
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 66
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->testingView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->testingView:Landroid/widget/TextView;

    const v6, 0x7f0600af

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    invoke-virtual {v5, v8}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->infoView:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    invoke-virtual {v5}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->showButton()V

    goto/16 :goto_0

    .line 76
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    goto/16 :goto_0

    .line 79
    :cond_4
    const-string v5, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->mSuccess:Z

    .line 84
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v5

    const-string v6, "00:00:46:66:20:01"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v5

    const-string v6, "00:00:46:66:28:01"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 86
    :cond_5
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->testingView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    const v7, 0x7f06000c

    invoke-virtual {v6, v7}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    const v7, 0x7f06010e

    invoke-virtual {v6, v7}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, massage:Ljava/lang/String;
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->testingView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .end local v2           #massage:Ljava/lang/String;
    :goto_1
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 95
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_7

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    invoke-virtual {v5, v8}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    const v6, 0x7f0600ac

    invoke-virtual {v5, v6}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->infoView:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_2
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 114
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    invoke-virtual {v5}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->showButton()V

    goto/16 :goto_0

    .line 90
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_6
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->testingView:Landroid/widget/TextView;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;

    iget-object v5, v5, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->testingView:Landroid/widget/TextView;

    const v6, 0x7f0600ae

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 108
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_7
    const-string v5, "EngineerMode"

    const-string v6, "Bluetooth BluetoothDevice.ACTION_FOUND not has a device"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 45
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
