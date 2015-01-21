.class public Lcom/zte/engineer/WifiAddressTest;
.super Lcom/zte/engineer/ZteActivity;
.source "WifiAddressTest.java"


# static fields
.field private static mFalse_wifi:Landroid/widget/Button;

.field private static mPass_wifi:Landroid/widget/Button;


# instance fields
.field mWifiAddress:Landroid/widget/TextView;

.field mWifiStatus:Landroid/widget/TextView;

.field macAddress:Ljava/lang/String;

.field protected mwifistatusReceiver:Landroid/content/BroadcastReceiver;

.field private myHandler:Landroid/os/Handler;

.field private needclose:Z

.field wifiInfo:Landroid/net/wifi/WifiInfo;

.field wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/zte/engineer/WifiAddressTest;->mPass_wifi:Landroid/widget/Button;

    .line 24
    sput-object v0, Lcom/zte/engineer/WifiAddressTest;->mFalse_wifi:Landroid/widget/Button;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/WifiAddressTest;->needclose:Z

    .line 34
    new-instance v0, Lcom/zte/engineer/WifiAddressTest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/WifiAddressTest$1;-><init>(Lcom/zte/engineer/WifiAddressTest;)V

    iput-object v0, p0, Lcom/zte/engineer/WifiAddressTest;->mwifistatusReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    new-instance v0, Lcom/zte/engineer/WifiAddressTest$2;

    invoke-direct {v0, p0}, Lcom/zte/engineer/WifiAddressTest$2;-><init>(Lcom/zte/engineer/WifiAddressTest;)V

    iput-object v0, p0, Lcom/zte/engineer/WifiAddressTest;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/zte/engineer/WifiAddressTest;->mPass_wifi:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/zte/engineer/WifiAddressTest;->mFalse_wifi:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/engineer/WifiAddressTest;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/engineer/WifiAddressTest;->myHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public finishSelf(I)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    iget-boolean v0, p0, Lcom/zte/engineer/WifiAddressTest;->needclose:Z

    if-ne v2, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/zte/engineer/WifiAddressTest;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 163
    iput-boolean v1, p0, Lcom/zte/engineer/WifiAddressTest;->needclose:Z

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/WifiAddressTest;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object v0, p0, Lcom/zte/engineer/WifiAddressTest;->mwifistatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 168
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0xa

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 193
    invoke-virtual {p0, v1}, Lcom/zte/engineer/WifiAddressTest;->finishSelf(I)V

    .line 197
    :goto_0
    return-void

    .line 183
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/zte/engineer/WifiAddressTest;->finishSelf(I)V

    goto :goto_0

    .line 188
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/WifiAddressTest;->finishSelf(I)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f06004c

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 100
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 104
    const v2, 0x7f080065

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    .local v1, mTextView:Landroid/widget/TextView;
    const v2, 0x7f080067

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->mWifiStatus:Landroid/widget/TextView;

    .line 106
    const v2, 0x7f080068

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->mWifiAddress:Landroid/widget/TextView;

    .line 108
    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    const v2, 0x7f08006e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Lcom/zte/engineer/WifiAddressTest;->mPass_wifi:Landroid/widget/Button;

    .line 112
    sget-object v2, Lcom/zte/engineer/WifiAddressTest;->mPass_wifi:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget-object v2, Lcom/zte/engineer/WifiAddressTest;->mPass_wifi:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 114
    const v2, 0x7f08006f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Lcom/zte/engineer/WifiAddressTest;->mFalse_wifi:Landroid/widget/Button;

    .line 115
    sget-object v2, Lcom/zte/engineer/WifiAddressTest;->mFalse_wifi:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget-object v2, Lcom/zte/engineer/WifiAddressTest;->mFalse_wifi:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 119
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 122
    iget-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 125
    iput-boolean v6, p0, Lcom/zte/engineer/WifiAddressTest;->needclose:Z

    .line 127
    iget-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->mWifiStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    const v5, 0x7f060021

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->mWifiAddress:Landroid/widget/TextView;

    const v3, 0x7f06004b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 145
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->mwifistatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    return-void

    .line 133
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    sget-object v2, Lcom/zte/engineer/WifiAddressTest;->mPass_wifi:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 134
    sget-object v2, Lcom/zte/engineer/WifiAddressTest;->mFalse_wifi:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    iget-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 138
    iget-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->macAddress:Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->mWifiStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    const v5, 0x7f060020

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/zte/engineer/WifiAddressTest;->mWifiAddress:Landroid/widget/TextView;

    const v3, 0x7f06004d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/zte/engineer/WifiAddressTest;->macAddress:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
