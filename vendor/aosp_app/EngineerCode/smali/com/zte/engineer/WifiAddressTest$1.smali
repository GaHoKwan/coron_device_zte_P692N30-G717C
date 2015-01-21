.class Lcom/zte/engineer/WifiAddressTest$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiAddressTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/WifiAddressTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/WifiAddressTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/WifiAddressTest;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const v10, 0x7f06004d

    const v5, 0x7f06004c

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 48
    :pswitch_1
    invoke-static {}, Lcom/zte/engineer/WifiAddressTest;->access$000()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 49
    invoke-static {}, Lcom/zte/engineer/WifiAddressTest;->access$100()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 51
    iget-object v3, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/WifiAddressTest;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 52
    .local v2, wifiInfo1:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, macAddress1:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 54
    iget-object v3, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/WifiAddressTest;->mWifiStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    const v7, 0x7f060020

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v3, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/WifiAddressTest;->mWifiAddress:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v3, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    #getter for: Lcom/zte/engineer/WifiAddressTest;->myHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/zte/engineer/WifiAddressTest;->access$200(Lcom/zte/engineer/WifiAddressTest;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 65
    .end local v1           #macAddress1:Ljava/lang/String;
    .end local v2           #wifiInfo1:Landroid/net/wifi/WifiInfo;
    :pswitch_2
    invoke-static {}, Lcom/zte/engineer/WifiAddressTest;->access$000()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 66
    invoke-static {}, Lcom/zte/engineer/WifiAddressTest;->access$100()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 68
    iget-object v3, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/WifiAddressTest;->mWifiStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    const v7, 0x7f060021

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    iget-object v3, v3, Lcom/zte/engineer/WifiAddressTest;->mWifiAddress:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/engineer/WifiAddressTest$1;->this$0:Lcom/zte/engineer/WifiAddressTest;

    const v7, 0x7f06001f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
