.class Lcom/zte/engineer/BtWifiAddressTest$2;
.super Landroid/os/Handler;
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
    .line 125
    iput-object p1, p0, Lcom/zte/engineer/BtWifiAddressTest$2;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 131
    iget-object v2, p0, Lcom/zte/engineer/BtWifiAddressTest$2;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-object v2, v2, Lcom/zte/engineer/BtWifiAddressTest;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 132
    .local v1, wifiInfo1:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, macAddress1:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 135
    iget-object v2, p0, Lcom/zte/engineer/BtWifiAddressTest$2;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-object v2, v2, Lcom/zte/engineer/BtWifiAddressTest;->mWifiStatus:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$2;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    const v4, 0x7f06004c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest$2;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    const v6, 0x7f060020

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, p0, Lcom/zte/engineer/BtWifiAddressTest$2;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    iget-object v2, v2, Lcom/zte/engineer/BtWifiAddressTest;->mWifiAddress:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/engineer/BtWifiAddressTest$2;->this$0:Lcom/zte/engineer/BtWifiAddressTest;

    const v4, 0x7f06004d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
