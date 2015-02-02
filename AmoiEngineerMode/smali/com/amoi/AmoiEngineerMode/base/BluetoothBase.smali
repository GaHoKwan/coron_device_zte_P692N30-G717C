.class public abstract Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;
.super Lcom/amoi/AmoiEngineerMode/base/TestBase;
.source "BluetoothBase.java"


# static fields
.field protected static final MAX_DISCOVERY_TIME:I = 0x5

.field protected static final TAG:Ljava/lang/String; = "Bluetooth"


# instance fields
.field protected bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected infoView:Landroid/widget/TextView;

.field protected mDiscoveryTimes:I

.field protected final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSuccess:Z

.field protected originalState:Z

.field protected testingView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->mSuccess:Z

    .line 37
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->mDiscoveryTimes:I

    .line 40
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected closeBluetooth()V
    .locals 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->originalState:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 185
    const-string v0, "EngineerMode"

    const-string v1, "Bluetooth close bluetooth..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    return-void
.end method

.method protected initBluetooth()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 143
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->originalState:Z

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->openBluetooth()V

    .line 155
    return-void
.end method

.method protected abstract initButton()V
.end method

.method protected initView()V
    .locals 2

    .prologue
    .line 130
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->setContentView(I)V

    .line 131
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->testingView:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->infoView:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->infoView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->infoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->initView()V

    .line 125
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->initButton()V

    .line 126
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->initBluetooth()V

    .line 127
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onDestroy()V

    .line 160
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->closeBluetooth()V

    .line 162
    return-void
.end method

.method protected openBluetooth()V
    .locals 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->originalState:Z

    if-nez v0, :cond_0

    .line 170
    const-string v0, "EngineerMode"

    const-string v1, "Bluetooth start bluetooth..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BluetoothBase;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    goto :goto_0
.end method

.method protected abstract showButton()V
.end method
