.class public Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PrxrAlertReceiver.java"


# static fields
.field private static CURRENT_NOTIFICATION_ID:I

.field private static NOTIFICATION_ID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;->NOTIFICATION_ID:Ljava/util/HashMap;

    .line 66
    const/4 v0, 0x1

    sput v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;->CURRENT_NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private createAlertNotification(Landroid/content/Context;ZBLandroid/bluetooth/BluetoothDevice;)Landroid/app/Notification;
    .locals 14
    .parameter "context"
    .parameter "isLinkLoss"
    .parameter "alertLevel"
    .parameter "remoteDevice"

    .prologue
    .line 125
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createAlertNotification[+]: isLinkLoss["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "], alertLevel["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 128
    if-eqz p2, :cond_0

    const v10, 0x7f070144

    .line 129
    .local v10, ticker:I
    :goto_0
    if-eqz p2, :cond_1

    const v11, 0x7f070145

    .line 130
    .local v11, title:I
    :goto_1
    if-eqz p2, :cond_2

    const v5, 0x7f070146

    .line 131
    .local v5, message:I
    :goto_2
    if-eqz p2, :cond_3

    const v3, 0x7f02000d

    .line 132
    .local v3, iconResId:I
    :goto_3
    if-eqz p2, :cond_4

    const/high16 v9, 0x7f05

    .line 135
    .local v9, soundResId:I
    :goto_4
    if-nez p4, :cond_5

    const/4 v12, 0x0

    :goto_5
    invoke-direct {p0, v12}, Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;->getNotificationId(Ljava/lang/String;)I

    move-result v8

    .line 137
    .local v8, profileNotificationId:I
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, b:Landroid/app/Notification$Builder;
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 139
    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 140
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 143
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v4, intent:Landroid/content/Intent;
    const/high16 v12, 0x800

    invoke-static {p1, v8, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 150
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, deviceName:Ljava/lang/String;
    :goto_6
    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 152
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-virtual {p1, v5, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 153
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 156
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 159
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 160
    .local v6, n:Landroid/app/Notification;
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_7

    .line 162
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "android.resource://com.mediatek.bluetooth/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iput-object v12, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 163
    iget v12, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x4

    iput v12, v6, Landroid/app/Notification;->flags:I

    .line 170
    :goto_7
    return-object v6

    .line 128
    .end local v1           #b:Landroid/app/Notification$Builder;
    .end local v2           #deviceName:Ljava/lang/String;
    .end local v3           #iconResId:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #message:I
    .end local v6           #n:Landroid/app/Notification;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    .end local v8           #profileNotificationId:I
    .end local v9           #soundResId:I
    .end local v10           #ticker:I
    .end local v11           #title:I
    :cond_0
    const v10, 0x7f070147

    goto/16 :goto_0

    .line 129
    .restart local v10       #ticker:I
    :cond_1
    const v11, 0x7f070148

    goto/16 :goto_1

    .line 130
    .restart local v11       #title:I
    :cond_2
    const v5, 0x7f070149

    goto/16 :goto_2

    .line 131
    .restart local v5       #message:I
    :cond_3
    const v3, 0x7f02000e

    goto/16 :goto_3

    .line 132
    .restart local v3       #iconResId:I
    :cond_4
    const v9, 0x7f050001

    goto/16 :goto_4

    .line 135
    .restart local v9       #soundResId:I
    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 150
    .restart local v1       #b:Landroid/app/Notification$Builder;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v7       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v8       #profileNotificationId:I
    :cond_6
    const-string v2, ""

    goto :goto_6

    .line 166
    .restart local v2       #deviceName:Ljava/lang/String;
    .restart local v6       #n:Landroid/app/Notification;
    :cond_7
    const/4 v12, 0x0

    iput-object v12, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_7
.end method

.method private getNotificationId(Ljava/lang/String;)I
    .locals 4
    .parameter "address"

    .prologue
    const/16 v3, 0x12

    .line 175
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/mediatek/bluetooth/util/NotificationFactory;->getProfileNotificationId(II)I

    move-result v0

    .line 180
    :goto_0
    return v0

    .line 176
    :cond_0
    sget-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;->NOTIFICATION_ID:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    sget-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;->NOTIFICATION_ID:Ljava/util/HashMap;

    sget v1, Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;->CURRENT_NOTIFICATION_ID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;->CURRENT_NOTIFICATION_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_1
    sget-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;->NOTIFICATION_ID:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lcom/mediatek/bluetooth/util/NotificationFactory;->getProfileNotificationId(II)I

    move-result v0

    goto :goto_0
.end method

.method private handleLossAction(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 8
    .parameter "context"
    .parameter "intent"
    .parameter "isLinkLoss"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 96
    const-string v4, "com.mediatek.bluetooth.prx.extra.ALERT_LEVEL"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    .line 97
    .local v0, alertLevel:B
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 99
    .local v3, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loss-action: level["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "], device["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 102
    if-ne v0, v7, :cond_1

    .line 104
    const-string v4, "can\'t find alert-level in intent => no alert"

    invoke-static {v4}, Lcom/mediatek/bluetooth/util/BtLog;->w(Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 111
    .local v2, nm:Landroid/app/NotificationManager;
    if-nez v3, :cond_2

    move-object v4, v5

    :goto_1
    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;->getNotificationId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 112
    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0, p1, p3, v0, v3}, Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;->createAlertNotification(Landroid/content/Context;ZBLandroid/bluetooth/BluetoothDevice;)Landroid/app/Notification;

    move-result-object v1

    .line 116
    .local v1, n:Landroid/app/Notification;
    if-nez v3, :cond_3

    :goto_2
    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;->getNotificationId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 119
    const-wide/16 v4, 0xbb8

    invoke-static {p1, v4, v5}, Lcom/mediatek/bluetooth/util/SystemUtils;->screen(Landroid/content/Context;J)V

    goto :goto_0

    .line 111
    .end local v1           #n:Landroid/app/Notification;
    :cond_2
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 116
    .restart local v1       #n:Landroid/app/Notification;
    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    const-string v1, "PrxrAlertReceiver.onReceive()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.mediatek.bluetooth.prx.action.LINK_LOSS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    const-string v1, "ProximityReporterReceiver get action: LINK_LOSS"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;->handleLossAction(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v1, "com.mediatek.bluetooth.prx.action.PATH_LOSS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "ProximityReporterReceiver get action: PATH_LOSS"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrAlertReceiver;->handleLossAction(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_0
.end method
