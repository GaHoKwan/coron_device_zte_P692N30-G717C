.class public Lcom/zte/engineer/BtWifiAddressTest;
.super Lcom/zte/engineer/ZteActivity;
.source "BtWifiAddressTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BT_WIFITEST"

.field private static mFalse_bt:Landroid/widget/Button;

.field private static mPass_bt:Landroid/widget/Button;


# instance fields
.field BT_OK:Z

.field Wifi_OK:Z

.field isManualTurnOn:Z

.field mBluetooth:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothAddress:Landroid/widget/TextView;

.field mBluetoothStatus:Landroid/widget/TextView;

.field protected mBtWifistatusReceiver:Landroid/content/BroadcastReceiver;

.field mWifiAddress:Landroid/widget/TextView;

.field mWifiStatus:Landroid/widget/TextView;

.field macAddress:Ljava/lang/String;

.field private myHandler:Landroid/os/Handler;

.field private needclose:Z

.field wifiInfo:Landroid/net/wifi/WifiInfo;

.field wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/zte/engineer/BtWifiAddressTest;->mPass_bt:Landroid/widget/Button;

    .line 30
    sput-object v0, Lcom/zte/engineer/BtWifiAddressTest;->mFalse_bt:Landroid/widget/Button;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/zte/engineer/BtWifiAddressTest;->needclose:Z

    .line 41
    iput-boolean v0, p0, Lcom/zte/engineer/BtWifiAddressTest;->isManualTurnOn:Z

    .line 42
    iput-boolean v0, p0, Lcom/zte/engineer/BtWifiAddressTest;->BT_OK:Z

    .line 43
    iput-boolean v0, p0, Lcom/zte/engineer/BtWifiAddressTest;->Wifi_OK:Z

    .line 45
    new-instance v0, Lcom/zte/engineer/BtWifiAddressTest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/BtWifiAddressTest$1;-><init>(Lcom/zte/engineer/BtWifiAddressTest;)V

    iput-object v0, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBtWifistatusReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Lcom/zte/engineer/BtWifiAddressTest$2;

    invoke-direct {v0, p0}, Lcom/zte/engineer/BtWifiAddressTest$2;-><init>(Lcom/zte/engineer/BtWifiAddressTest;)V

    iput-object v0, p0, Lcom/zte/engineer/BtWifiAddressTest;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/BtWifiAddressTest;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/engineer/BtWifiAddressTest;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/zte/engineer/BtWifiAddressTest;->mPass_bt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/zte/engineer/BtWifiAddressTest;->mFalse_bt:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public finishSelf(I)V
    .locals 2
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-boolean v0, p0, Lcom/zte/engineer/BtWifiAddressTest;->needclose:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/zte/engineer/BtWifiAddressTest;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 249
    iput-boolean v1, p0, Lcom/zte/engineer/BtWifiAddressTest;->needclose:Z

    .line 251
    :cond_0
    iget-boolean v0, p0, Lcom/zte/engineer/BtWifiAddressTest;->isManualTurnOn:Z

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/zte/engineer/BtWifiAddressTest;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    iget-object v0, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBtWifistatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 258
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 279
    invoke-virtual {p0, v2}, Lcom/zte/engineer/BtWifiAddressTest;->finishSelf(I)V

    .line 283
    :goto_0
    return-void

    .line 267
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/zte/engineer/BtWifiAddressTest;->finishSelf(I)V

    goto :goto_0

    .line 272
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/BtWifiAddressTest;->finishSelf(I)V

    .line 273
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 274
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x7f08006e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f060049

    const v12, 0x7f060021

    const v11, 0x7f060020

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 149
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v5, 0x7f030015

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 153
    const v5, 0x7f080065

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 154
    .local v4, mTextView_wifi:Landroid/widget/TextView;
    const v5, 0x7f080067

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mWifiStatus:Landroid/widget/TextView;

    .line 155
    const v5, 0x7f080068

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mWifiAddress:Landroid/widget/TextView;

    .line 157
    const v5, 0x7f060012

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 159
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 161
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 163
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 164
    iput-boolean v9, p0, Lcom/zte/engineer/BtWifiAddressTest;->needclose:Z

    .line 166
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mWifiStatus:Landroid/widget/TextView;

    const v6, 0x7f06004c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mWifiAddress:Landroid/widget/TextView;

    const v6, 0x7f06004b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 181
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, filter_wifi:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBtWifistatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 189
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    .line 191
    .local v2, isEnable:Z
    const v5, 0x7f08006a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 192
    .local v3, mTextView_bt:Landroid/widget/TextView;
    const v5, 0x7f08006c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBluetoothStatus:Landroid/widget/TextView;

    .line 193
    const v5, 0x7f08006d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBluetoothAddress:Landroid/widget/TextView;

    .line 194
    const v5, 0x7f060011

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 196
    const v5, 0x7f08006e

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    sput-object v5, Lcom/zte/engineer/BtWifiAddressTest;->mPass_bt:Landroid/widget/Button;

    .line 197
    sget-object v5, Lcom/zte/engineer/BtWifiAddressTest;->mPass_bt:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget-object v5, Lcom/zte/engineer/BtWifiAddressTest;->mPass_bt:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 199
    const v5, 0x7f08006f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    sput-object v5, Lcom/zte/engineer/BtWifiAddressTest;->mFalse_bt:Landroid/widget/Button;

    .line 200
    sget-object v5, Lcom/zte/engineer/BtWifiAddressTest;->mFalse_bt:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    sget-object v5, Lcom/zte/engineer/BtWifiAddressTest;->mFalse_bt:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 203
    if-eqz v2, :cond_2

    .line 205
    iput-boolean v9, p0, Lcom/zte/engineer/BtWifiAddressTest;->BT_OK:Z

    .line 206
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBluetoothStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBluetoothAddress:Landroid/widget/TextView;

    const v6, 0x7f06004a

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, filter_bt:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBtWifistatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    iget-boolean v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->BT_OK:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->Wifi_OK:Z

    if-eqz v5, :cond_0

    .line 224
    sget-object v5, Lcom/zte/engineer/BtWifiAddressTest;->mPass_bt:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 225
    sget-object v5, Lcom/zte/engineer/BtWifiAddressTest;->mFalse_bt:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 228
    :cond_0
    return-void

    .line 171
    .end local v0           #filter_bt:Landroid/content/IntentFilter;
    .end local v1           #filter_wifi:Landroid/content/IntentFilter;
    .end local v2           #isEnable:Z
    .end local v3           #mTextView_bt:Landroid/widget/TextView;
    :cond_1
    iput-boolean v9, p0, Lcom/zte/engineer/BtWifiAddressTest;->Wifi_OK:Z

    .line 173
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 174
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->macAddress:Ljava/lang/String;

    .line 176
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mWifiStatus:Landroid/widget/TextView;

    const v6, 0x7f06004c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mWifiAddress:Landroid/widget/TextView;

    const v6, 0x7f06004d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/zte/engineer/BtWifiAddressTest;->macAddress:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 211
    .restart local v1       #filter_wifi:Landroid/content/IntentFilter;
    .restart local v2       #isEnable:Z
    .restart local v3       #mTextView_bt:Landroid/widget/TextView;
    :cond_2
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 212
    iput-boolean v9, p0, Lcom/zte/engineer/BtWifiAddressTest;->isManualTurnOn:Z

    .line 213
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBluetoothStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v5, p0, Lcom/zte/engineer/BtWifiAddressTest;->mBluetoothAddress:Landroid/widget/TextView;

    const v6, 0x7f06004b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 241
    return-void
.end method
