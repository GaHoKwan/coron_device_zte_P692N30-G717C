.class public Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothShareGatewayReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothShareGatewayReceiver"

.field private static sBip:Z

.field private static sIntent:Landroid/content/Intent;

.field private static sType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private profileDispatcher(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "remoteDevice"

    .prologue
    .line 111
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;->sIntent:Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 129
    .local v0, uuids:[Landroid/os/ParcelUuid;
    const-string v1, "BluetoothShareGatewayReceiver"

    const-string v2, "OPP is supported"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;->sIntent:Landroid/content/Intent;

    const-string v2, "com.mediatek.bluetooth"

    const-string v3, "com.mediatek.bluetooth.opp.mmi.OppClientActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;->sIntent:Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;->sIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 141
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;->sIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/mediatek/bluetooth/util/SystemUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 143
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    const-string v4, "BluetoothShareGatewayReceiver"

    const-string v5, "BSG broadcast receiver receives intent"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 75
    .local v3, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "BluetoothShareGatewayReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received BT device selected intent, bt device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-eqz v3, :cond_0

    .line 87
    invoke-direct {p0, p1, v3}, Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;->profileDispatcher(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 108
    .end local v3           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v4, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/mediatek/bluetooth/share/BluetoothShareMgmtActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v2, openReceivedIntent:Landroid/content/Intent;
    const/high16 v4, 0x1400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    .end local v2           #openReceivedIntent:Landroid/content/Intent;
    :cond_2
    const-string v4, "com.mediatek.bluetooth.sharegateway.action.ACTION_SETTINGS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 97
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 98
    const-string v4, "Type"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;->sType:Ljava/lang/String;

    .line 99
    const-string v4, "BipFlag"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;->sBip:Z

    .line 100
    const-string v4, "Intent"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    sput-object v4, Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;->sIntent:Landroid/content/Intent;

    .line 101
    sget-object v4, Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;->sIntent:Landroid/content/Intent;

    if-nez v4, :cond_3

    .line 102
    const-string v4, "BluetoothShareGatewayReceiver"

    const-string v5, "sIntent == null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_3
    const-string v4, "BluetoothShareGatewayReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;->sType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; sBip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;->sBip:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
