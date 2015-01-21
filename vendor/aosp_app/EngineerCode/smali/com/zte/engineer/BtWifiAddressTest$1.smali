.class Lcom/zte/engineer/BtWifiAddressTest$1;
.super Landroid/content/BroadcastReceiver;
.source "BtWifiAddressTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/BtWifiAddressTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/BtWifiAddressTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/BtWifiAddressTest;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const v11, 0x7f060021

    const v10, 0x7f060020

    const v9, 0x7f06001f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    :pswitch_0
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 116
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-boolean v3, v3, Lcom/zte/engineer/BtWifiAddressTest;->BT_OK:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-boolean v3, v3, Lcom/zte/engineer/BtWifiAddressTest;->Wifi_OK:Z

    if-eqz v3, :cond_2

    .line 118
    invoke-static {}, Lcom/zte/engineer/BtWifiAddressTest;->access$100()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 119
    invoke-static {}, Lcom/zte/engineer/BtWifiAddressTest;->access$200()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 121
    :cond_2
    return-void

    .line 60
    :pswitch_1
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iput-boolean v7, v3, Lcom/zte/engineer/BtWifiAddressTest;->Wifi_OK:Z

    .line 61
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/BtWifiAddressTest;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 62
    .local v2, wifiInfo1:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, macAddress1:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 65
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/BtWifiAddressTest;->mWifiStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    const v5, 0x7f06004c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/BtWifiAddressTest;->mWifiAddress:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    const v5, 0x7f06004d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_3
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    #getter for: Lcom/zte/engineer/BtWifiAddressTest;->myHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/zte/engineer/BtWifiAddressTest;->access$000(Lcom/zte/engineer/BtWifiAddressTest;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 77
    .end local v1           #macAddress1:Ljava/lang/String;
    .end local v2           #wifiInfo1:Landroid/net/wifi/WifiInfo;
    :pswitch_2
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iput-boolean v7, v3, Lcom/zte/engineer/BtWifiAddressTest;->Wifi_OK:Z

    .line 78
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/BtWifiAddressTest;->mWifiStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    const v5, 0x7f06004c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/BtWifiAddressTest;->mWifiAddress:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    const v5, 0x7f06004d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 98
    :pswitch_3
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iput-boolean v7, v3, Lcom/zte/engineer/BtWifiAddressTest;->BT_OK:Z

    .line 99
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/BtWifiAddressTest;->mBluetoothStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    const v5, 0x7f060049

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, v3, Lcom/zte/engineer/BtWifiAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 102
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/BtWifiAddressTest;->mBluetoothAddress:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    const v5, 0x7f06004a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-object v6, v6, Lcom/zte/engineer/BtWifiAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 108
    :pswitch_4
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iput-boolean v7, v3, Lcom/zte/engineer/BtWifiAddressTest;->BT_OK:Z

    .line 109
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/BtWifiAddressTest;->mBluetoothStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    const v5, 0x7f060049

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/BtWifiAddressTest;->mBluetoothAddress:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    const v5, 0x7f06004a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/engineer/BtWifiAddressTest$1;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 93
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
