.class public Lcom/mediatek/bluetooth/dun/BluetoothDunService;
.super Landroid/app/Service;
.source "BluetoothDunService.java"


# static fields
.field public static final ACCESS_REQUEST_ACTION:Ljava/lang/String; = "com.mediatek.bluetooth.dun.accessrequest"

.field public static final ACCESS_RESPONSE_ACTION:Ljava/lang/String; = "com.mediatek.bluetooth.dun.accessresponse"

.field public static final ACTION_CLEAR_AUTH_NOTIFICATION:Ljava/lang/String; = "com.mediatek.bluetooth.dun.intent.action.CLEAR_AUTH"

.field private static final BLUETOOTH_IFACE_ADDR_START:Ljava/lang/String; = "192.168.44.1"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DUN_AUTHORIZE_NOTIFY:I = 0x0

.field private static final DUN_CONN_TIMEOUT:I = 0xea60

#the value of this static final field might be set in the static constructor
.field private static final DUN_ID_START:I = 0x0

.field private static final DUN_Profile:Ljava/lang/String; = "BluetoothDun"

.field private static final DUN_TETHER_RETRY:I = 0x1f4

.field public static final EXTRA_ACCESS_RESULT:Ljava/lang/String; = "com.mediatek.bluetooth.dun.accessresult"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "com.mediatek.bluetooth.dun.device"

.field private static final MESSAGE_CONNECT_TIMEOUT:I = 0x1

.field private static final MESSAGE_TETHER_RETRY:I = 0x2

.field public static final RESEND_NOTIFICATION_ACTION:Ljava/lang/String; = "com.mediatek.bluetooth.dun.resendnotification"

.field public static final RESULT_USER_ACCEPT:I = 0x1

.field public static final RESULT_USER_REJECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothDunService"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mDunConnPath:Ljava/lang/String;

.field private mDunState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasInitiated:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mServer:Landroid/bluetooth/IBluetoothDun$Stub;

.field private mTetheringOn:Z

.field private mTetheringReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothProfile;->getProfileStart(I)I

    move-result v0

    sput v0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->DUN_ID_START:I

    .line 185
    sget v0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->DUN_ID_START:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->DUN_AUTHORIZE_NOTIFY:I

    .line 361
    const-string v0, "extdun_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHasInitiated:Z

    .line 199
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    new-instance v0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService$1;-><init>(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 301
    new-instance v0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;-><init>(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mServer:Landroid/bluetooth/IBluetoothDun$Stub;

    .line 425
    new-instance v0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService$3;-><init>(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHandler:Landroid/os/Handler;

    .line 366
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-static {p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunConnPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/bluetooth/dun/BluetoothDunService;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mTetheringOn:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/bluetooth/dun/BluetoothDunService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mTetheringOn:Z

    return p1
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 135
    sget v0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->DUN_AUTHORIZE_NOTIFY:I

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/bluetooth/dun/BluetoothDunService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->removeDunAuthNotification(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/bluetooth/dun/BluetoothDunService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunSetState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/dun/BluetoothDunService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunConnectRspNative(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/dun/BluetoothDunService;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->createDunAuthNotification(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunDisconnectNative()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->clearService()V

    return-void
.end method

.method private native cleanupNative()V
.end method

.method private clearService()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 610
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHasInitiated:Z

    if-nez v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 615
    :cond_0
    iget v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I

    if-eq v0, v1, :cond_1

    .line 618
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 620
    iget v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 622
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 623
    sget v0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->DUN_AUTHORIZE_NOTIFY:I

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->removeDunAuthNotification(I)V

    .line 627
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunDisableNative()V

    .line 628
    invoke-direct {p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->cleanupNative()V

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHasInitiated:Z

    .line 631
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private convertStringtoState(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 769
    const-string v0, "disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    const/4 v0, 0x2

    .line 773
    :goto_0
    return v0

    .line 771
    :cond_0
    const-string v0, "connected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    const/4 v0, 0x1

    goto :goto_0

    .line 773
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private createDunAuthNotification(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 10
    .parameter "context"
    .parameter "device"
    .parameter "resend"

    .prologue
    const/4 v9, 0x0

    .line 636
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 637
    .local v3, nm:Landroid/app/NotificationManager;
    const/4 v4, 0x0

    .line 640
    .local v4, notification:Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 641
    .local v1, intent:Landroid/content/Intent;
    const-class v5, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;

    invoke-virtual {v1, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 642
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 643
    const-string v5, "com.mediatek.bluetooth.dun.accessrequest"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    const-string v5, "com.mediatek.bluetooth.dun.device"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 648
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.mediatek.bluetooth.dun.intent.action.CLEAR_AUTH"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v0, deleteIntent:Landroid/content/Intent;
    const-class v5, Lcom/mediatek/bluetooth/dun/BluetoothDunReceiver;

    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 651
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 652
    .local v2, name:Ljava/lang/String;
    new-instance v4, Landroid/app/Notification;

    .end local v4           #notification:Landroid/app/Notification;
    const v5, 0x1080080

    const v6, 0x7f070051

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 654
    .restart local v4       #notification:Landroid/app/Notification;
    const v5, 0x7f070052

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070053

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v9, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, p1, v5, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 658
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 659
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 660
    if-nez p3, :cond_0

    .line 662
    iget v5, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/app/Notification;->defaults:I

    .line 663
    iget v5, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/app/Notification;->defaults:I

    .line 669
    :goto_0
    invoke-static {p1, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 671
    sget v5, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->DUN_AUTHORIZE_NOTIFY:I

    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 672
    return-void

    .line 667
    :cond_0
    iput v9, v4, Landroid/app/Notification;->defaults:I

    goto :goto_0
.end method

.method private synchronized native declared-synchronized dunConnectRspNative(Ljava/lang/String;Z)V
.end method

.method private synchronized native declared-synchronized dunDialupRspNative(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private synchronized native declared-synchronized dunDisableNative()V
.end method

.method private synchronized native declared-synchronized dunDisconnectNative()V
.end method

.method private synchronized native declared-synchronized dunEnableNative()V
.end method

.method private dunSetState(I)V
    .locals 5
    .parameter "state"

    .prologue
    .line 591
    iget v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I

    .line 592
    .local v2, prevstate:I
    const/4 v0, 0x0

    .line 593
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iput p1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I

    .line 595
    iget-object v3, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunConnPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 597
    iget-object v3, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunConnPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 600
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.profilemanager.extra.PROFILE"

    sget-object v4, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_DUN:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 602
    const-string v3, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    const-string v3, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 605
    iget-object v3, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method private native initNative()Z
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 777
    const-string v0, "BluetoothDunService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return-void
.end method

.method private notifyProfileState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyProfileState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V

    .line 761
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.profilemanager.extra.PROFILE"

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_DUN:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 763
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 764
    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method private declared-synchronized onDunConnectReq(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mTetheringOn:Z

    if-nez v2, :cond_0

    .line 457
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunConnectRspNative(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :goto_0
    monitor-exit p0

    return-void

    .line 462
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dun connect request, device address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 465
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->createDunAuthNotification(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 467
    iput-object p1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunConnPath:Ljava/lang/String;

    .line 468
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunSetState(I)V

    .line 470
    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 471
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 455
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized onDunDialupReq()V
    .locals 11

    .prologue
    .line 537
    monitor-enter p0

    const/4 v9, 0x2

    :try_start_0
    new-array v6, v9, [Ljava/lang/String;

    .line 538
    .local v6, dnsServers:[Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 540
    .local v5, connmgr:Landroid/net/ConnectivityManager;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 541
    .local v0, MobileInfo:Landroid/net/NetworkInfo;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 542
    .local v2, WifiInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 544
    const-string v9, "BluetoothDunService"

    const-string v10, "dialup request, get network info failed"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v7, "unknown"

    .line 546
    .local v7, response:Ljava/lang/String;
    const-string v9, "192.168.44.1"

    invoke-direct {p0, v7, v9, v6}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunDialupRspNative(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :goto_0
    monitor-exit p0

    return-void

    .line 549
    .end local v7           #response:Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 550
    .local v1, MobileState:Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 552
    .local v3, WifiState:Landroid/net/NetworkInfo$State;
    if-eqz v0, :cond_1

    .line 553
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 554
    :cond_1
    if-eqz v2, :cond_2

    .line 555
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 557
    :cond_2
    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v9, :cond_3

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v9, :cond_6

    .line 559
    :cond_3
    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v9, :cond_5

    move-object v8, v1

    .line 560
    .local v8, state:Landroid/net/NetworkInfo$State;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startUsingNetworkFeature: ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V

    .line 561
    const-string v7, "active"

    .line 562
    .restart local v7       #response:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "net.dns1"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 563
    const/4 v9, 0x1

    const-string v10, "net.dns2"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 564
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Network connected, DNS1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "DNS2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V

    .line 565
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 567
    const/4 v9, 0x1

    const-string v10, "8.8.8.8"

    aput-object v10, v6, v9

    .line 569
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Network connected, DNS2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "DNS1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lcom/mediatek/bluetooth/BluetoothTethering;->getBluetoothTetheringInstance()Lcom/mediatek/bluetooth/BluetoothTethering;

    move-result-object v4

    .line 571
    .local v4, btTethering:Lcom/mediatek/bluetooth/BluetoothTethering;
    invoke-virtual {v4, p0}, Lcom/mediatek/bluetooth/BluetoothTethering;->registerBTTether(Landroid/content/Context;)V

    .line 585
    .end local v4           #btTethering:Lcom/mediatek/bluetooth/BluetoothTethering;
    .end local v8           #state:Landroid/net/NetworkInfo$State;
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dunDialupRspNative response: ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V

    .line 586
    const-string v9, "192.168.44.1"

    invoke-direct {p0, v7, v9, v6}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunDialupRspNative(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 537
    .end local v0           #MobileInfo:Landroid/net/NetworkInfo;
    .end local v1           #MobileState:Landroid/net/NetworkInfo$State;
    .end local v2           #WifiInfo:Landroid/net/NetworkInfo;
    .end local v3           #WifiState:Landroid/net/NetworkInfo$State;
    .end local v5           #connmgr:Landroid/net/ConnectivityManager;
    .end local v6           #dnsServers:[Ljava/lang/String;
    .end local v7           #response:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .restart local v0       #MobileInfo:Landroid/net/NetworkInfo;
    .restart local v1       #MobileState:Landroid/net/NetworkInfo$State;
    .restart local v2       #WifiInfo:Landroid/net/NetworkInfo;
    .restart local v3       #WifiState:Landroid/net/NetworkInfo$State;
    .restart local v5       #connmgr:Landroid/net/ConnectivityManager;
    .restart local v6       #dnsServers:[Ljava/lang/String;
    :cond_5
    move-object v8, v3

    .line 559
    goto/16 :goto_1

    .line 573
    :cond_6
    :try_start_2
    sget-object v9, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v1, v9, :cond_7

    sget-object v9, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v3, v9, :cond_8

    .line 575
    :cond_7
    const-string v7, "busy"

    .restart local v7       #response:Ljava/lang/String;
    goto :goto_2

    .line 577
    .end local v7           #response:Ljava/lang/String;
    :cond_8
    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v9, :cond_9

    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v9, :cond_a

    .line 579
    :cond_9
    const-string v7, "unavailable"

    .restart local v7       #response:Ljava/lang/String;
    goto :goto_2

    .line 583
    .end local v7           #response:Ljava/lang/String;
    :cond_a
    const-string v7, "unknown"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v7       #response:Ljava/lang/String;
    goto :goto_2
.end method

.method private declared-synchronized onDunDisableCnf(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 491
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 493
    const/16 v0, 0xd

    :try_start_0
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->notifyProfileState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :goto_0
    monitor-exit p0

    return-void

    .line 497
    :cond_0
    const/16 v0, 0xe

    :try_start_1
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->notifyProfileState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onDunEnableCnf(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 477
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 479
    const/16 v0, 0xb

    :try_start_0
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->notifyProfileState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :goto_0
    monitor-exit p0

    return-void

    .line 483
    :cond_0
    const/16 v0, 0xe

    :try_start_1
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->notifyProfileState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onDunStateChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "path"
    .parameter "stateValues"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 504
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->convertStringtoState(Ljava/lang/String;)I

    move-result v2

    .line 505
    .local v2, state:I
    iget v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I

    .line 508
    .local v1, prevstate:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dun state changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V

    .line 509
    if-ne v2, v5, :cond_1

    .line 512
    iget-object v3, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunSetState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    monitor-exit p0

    return-void

    .line 514
    :cond_1
    if-ne v2, v6, :cond_0

    .line 516
    :try_start_1
    invoke-static {}, Lcom/mediatek/bluetooth/BluetoothTethering;->getBluetoothTetheringInstance()Lcom/mediatek/bluetooth/BluetoothTethering;

    move-result-object v0

    .line 517
    .local v0, btTethering:Lcom/mediatek/bluetooth/BluetoothTethering;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/BluetoothTethering;->unregisterBTTether()V

    .line 518
    iget-object v3, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 522
    iget-object v3, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    sget v3, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->DUN_AUTHORIZE_NOTIFY:I

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->removeDunAuthNotification(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 504
    .end local v0           #btTethering:Lcom/mediatek/bluetooth/BluetoothTethering;
    .end local v1           #prevstate:I
    .end local v2           #state:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private removeDunAuthNotification(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 676
    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 678
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 679
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 411
    const-string v0, "BluetoothDunService"

    const-string v1, "Enter onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-class v0, Landroid/bluetooth/IBluetoothDun;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mServer:Landroid/bluetooth/IBluetoothDun$Stub;

    .line 415
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 370
    const-string v0, "Bluetooth Dun Service is created"

    invoke-static {v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;

    .line 372
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mTetheringOn:Z

    .line 374
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 420
    const-string v0, "Bluetooth Dun Service is destroyed"

    invoke-static {v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->clearService()V

    .line 423
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x1

    .line 378
    const-string v1, "Bluetooth Dun Service is started"

    invoke-static {v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V

    .line 380
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHasInitiated:Z

    if-nez v1, :cond_1

    .line 381
    invoke-direct {p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->initNative()Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    const-string v1, "BluetoothDunService"

    const-string v2, "Could not init BluetoothDunService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->notifyProfileState(I)V

    .line 407
    :goto_0
    return v3

    .line 388
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v1, "com.mediatek.bluetooth.dun.accessresponse"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v1, "com.mediatek.bluetooth.dun.resendnotification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v1, "android.bluetooth.BluetoothTethering.BLUETOOTH_INTERFACE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    invoke-direct {p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunEnableNative()V

    .line 398
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->notifyProfileState(I)V

    .line 400
    iput-boolean v3, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mHasInitiated:Z

    goto :goto_0

    .line 403
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_1
    const-string v1, "Already started, just return!"

    invoke-static {v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
