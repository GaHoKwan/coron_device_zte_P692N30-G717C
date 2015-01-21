.class Lcom/mediatek/bluetooth/map/BluetoothMapNotification;
.super Ljava/lang/Object;
.source "BluetoothMapNotification.java"


# static fields
.field public static final ACTION_AUTHORIZE_INDICATION:Ljava/lang/String; = "com.mediatek.bluetooth.map.BluetoothMapNotification.action.AUTHORIZE_INDICATION"

.field public static final ACTION_CONNECT_INDICATION:Ljava/lang/String; = "com.mediatek.bluetooth.map.BluetoothMapNotification.action.CONNECT_INDICATION"

.field public static final ACTION_MAP_CLEAR_NOTIFICATION:Ljava/lang/String; = "com.mediatek.bluetooth.map.BluetoothMapNotification.action.MAP_CLEAR_NOTIFICATION"

.field public static final ACTION_MAP_DISCONNECTED:Ljava/lang/String; = "com.mediatek.bluetooth.map.BluetoothMapNotification.action.MAP_DISCONNECTED"

.field public static final ALERT_TYPE_AUTHORIZE:I = 0x0

.field public static final ALERT_TYPE_CONNECT:I = 0x1

.field public static final EXTRA_ALERT_TYPE:Ljava/lang/String; = "com.mediatek.bluetooth.map.BluetoothMapNotification.extra.ALERT_TYPE"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "com.mediatek.bluetooth.map.BluetoothMapNotification.extra.DEVICE"

.field private static final MAP_AUTHORIZE_NOTIFY:I

.field private static final MAP_CONNECT_NOTIFY:I

.field private static final MAP_ID_START:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothProfile;->getProfileStart(I)I

    move-result v0

    sput v0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->MAP_ID_START:I

    .line 90
    sget v0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->MAP_ID_START:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->MAP_AUTHORIZE_NOTIFY:I

    .line 91
    sget v0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->MAP_ID_START:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->MAP_CONNECT_NOTIFY:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "BluetoothMapNotification"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->TAG:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mDevices:Ljava/util/HashMap;

    .line 99
    return-void
.end method

.method private getIntent(ILandroid/bluetooth/BluetoothDevice;)Landroid/content/Intent;
    .locals 3
    .parameter "type"
    .parameter "device"

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 151
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    const-string v1, "com.mediatek.bluetooth.map.BluetoothMapNotification.extra.DEVICE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 153
    const-string v1, "com.mediatek.bluetooth.map.BluetoothMapNotification.extra.ALERT_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    if-nez p1, :cond_0

    .line 156
    const-string v1, "com.mediatek.bluetooth.map.BluetoothMapNotification.action.AUTHORIZE_INDICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :goto_0
    return-object v0

    .line 157
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 158
    const-string v1, "com.mediatek.bluetooth.map.BluetoothMapNotification.action.CONNECT_INDICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 161
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNotificationContentMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "type"
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 190
    if-nez p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f0700ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 192
    :cond_0
    if-ne p1, v2, :cond_1

    .line 193
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f0700d5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_1
    const-string v0, "error, unexpected alert type"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNotificationContentTitle(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "type"
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 179
    if-nez p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    .line 181
    :cond_0
    if-ne p1, v2, :cond_1

    .line 182
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f0700d4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_1
    const-string v0, "error, unexpected alert type"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNotificationID(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    sget v0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->MAP_AUTHORIZE_NOTIFY:I

    .line 206
    :goto_0
    return v0

    .line 202
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 203
    sget v0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->MAP_CONNECT_NOTIFY:I

    goto :goto_0

    .line 205
    :cond_1
    const-string v0, "error, unexpected alert type"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 206
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getNotificationTickerText(I)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f0700cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 170
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f0700d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    const-string v0, "error, unexpected alert type"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 289
    if-eqz p1, :cond_0

    .line 290
    const-string v0, "BluetoothMapNotification"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    return-void
.end method

.method private resetDeviceState(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "type"
    .parameter "device"

    .prologue
    .line 245
    if-nez p2, :cond_0

    .line 246
    const-string v0, "error, the device is null"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetDeviceState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDevices.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDevices.get(device):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->getDeviceState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDeviceState(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "type"
    .parameter "device"

    .prologue
    const/4 v1, 0x1

    .line 228
    if-nez p2, :cond_0

    .line 229
    const-string v0, "error, the device is null"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 232
    :cond_0
    if-nez p1, :cond_2

    .line 234
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mDevices:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDevices.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDevices.get(device):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->getDeviceState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :cond_2
    if-ne p1, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mDevices:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method


# virtual methods
.method public createNotification(ILandroid/bluetooth/BluetoothDevice;Z)V
    .locals 14
    .parameter "alertType"
    .parameter "device"
    .parameter "isNewView"

    .prologue
    .line 102
    iget-object v10, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 103
    .local v6, nm:Landroid/app/NotificationManager;
    const/4 v7, 0x0

    .line 105
    .local v7, notification:Landroid/app/Notification;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createNotification: alert type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",device is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",isNewView->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 109
    invoke-direct/range {p0 .. p2}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->getIntent(ILandroid/bluetooth/BluetoothDevice;)Landroid/content/Intent;

    move-result-object v4

    .line 118
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, name:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->getNotificationTickerText(I)Ljava/lang/String;

    move-result-object v9

    .line 120
    .local v9, tickerText:Ljava/lang/String;
    invoke-direct {p0, p1, v5}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->getNotificationContentTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, contentTitle:Ljava/lang/String;
    invoke-direct {p0, p1, v5}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->getNotificationContentMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, contentMessage:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->getNotificationID(I)I

    move-result v8

    .line 123
    .local v8, notificationId:I
    new-instance v7, Landroid/app/Notification;

    .end local v7           #notification:Landroid/app/Notification;
    const v10, 0x1080080

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v7, v10, v9, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 124
    .restart local v7       #notification:Landroid/app/Notification;
    iget-object v10, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v4, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v10, v2, v1, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 128
    iget v10, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x8

    iput v10, v7, Landroid/app/Notification;->flags:I

    .line 129
    if-eqz p3, :cond_0

    .line 131
    iget v10, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v7, Landroid/app/Notification;->defaults:I

    .line 132
    iget v10, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v7, Landroid/app/Notification;->defaults:I

    .line 140
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.mediatek.bluetooth.map.BluetoothMapNotification.action.MAP_CLEAR_NOTIFICATION"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, deleteIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v3, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 143
    invoke-virtual {v6, v8, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 144
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notificationId is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 145
    invoke-direct/range {p0 .. p2}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->setDeviceState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 146
    return-void

    .line 136
    .end local v3           #deleteIntent:Landroid/content/Intent;
    :cond_0
    const/4 v10, 0x0

    iput v10, v7, Landroid/app/Notification;->defaults:I

    goto :goto_0
.end method

.method public getAuthoringDevices()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 277
    .local v0, authorizingDevices:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 278
    .local v1, devices:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 280
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 281
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    .end local v2           #entry:Ljava/util/Map$Entry;
    :cond_1
    return-object v0
.end method

.method public getDeviceState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    const/4 v0, 0x7

    .line 265
    if-nez p1, :cond_1

    .line 266
    const-string v1, "error, the device is null"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public removeNotification(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "type"
    .parameter "device"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->getNotificationID(I)I

    move-result v0

    .line 214
    .local v0, id:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove notification: type is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->log(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 217
    .local v2, nm:Landroid/app/NotificationManager;
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->resetDeviceState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.mediatek.bluetooth.map.BluetoothMapNotification.action.MAP_DISCONNECTED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.mediatek.bluetooth.map.BluetoothMapNotification.extra.DEVICE"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    return-void
.end method
