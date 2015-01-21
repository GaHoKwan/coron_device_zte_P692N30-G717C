.class public Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;
.super Landroid/app/Service;
.source "BluetoothBppManager.java"


# static fields
.field public static final ACTION_AUTH_INFO:Ljava/lang/String; = "com.mediatek.bluetooth.bppmanager.action.AUTH_INFO"

.field public static final ACTION_CANCEL:Ljava/lang/String; = "com.mediatek.bluetooth.bppmanager.action.CANCEL"

.field public static final ACTION_GET_DEFAULT_VALUE:Ljava/lang/String; = "com.mediatek.bluetooth.bppmanager.action.GET_DEFAULT_VALUE"

.field public static final ACTION_GET_PRINTER_ATTR:Ljava/lang/String; = "com.mediatek.bluetooth.bppmanager.action.GET_PRINTER_ATTR"

.field public static final ACTION_PASS_OBJECT:Ljava/lang/String; = "com.mediatek.bluetooth.bppmanager.action.PASS_OBJECT"

.field public static final ACTION_PRINT:Ljava/lang/String; = "com.mediatek.bluetooth.bppmanager.action.PRINT"

.field public static final BPPS_DISABLED:I = 0x2

.field public static final BPPS_ENABLED:I = 0x1

.field public static final BPPS_ERROR:I = -0x1

.field public static final EXTRA_AUTH_PASSWD:Ljava/lang/String; = "com.mediatek.bluetooth.bppmanager.extra.AUTH_PASSWD"

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = "com.mediatek.bluetooth.bppmanager.extra.FILE_NAME"

.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "com.mediatek.bluetooth.bppmanager.extra.FILE_PATH"

.field public static final EXTRA_FILE_SIZE:Ljava/lang/String; = "com.mediatek.bluetooth.bppmanager.extra.FILE_SIZE"

.field public static final EXTRA_MIME_TYPE:Ljava/lang/String; = "com.mediatek.bluetooth.bppmanager.extra.MIME_TYPE"

.field public static final MSG_ON_BPP_AUTH_IND:I = 0x7

.field public static final MSG_ON_BPP_CANCEL_CNF:I = 0x4

.field public static final MSG_ON_BPP_CONNECT_CNF:I = 0x2

.field public static final MSG_ON_BPP_DISABLE:I = 0xb

.field public static final MSG_ON_BPP_DISCONNECT_CNF:I = 0x9

.field public static final MSG_ON_BPP_DISCONNECT_IND:I = 0xa

.field public static final MSG_ON_BPP_ENABLE:I = 0x1

.field public static final MSG_ON_BPP_GET_PRINTER_ATTR_CNF:I = 0x3

.field public static final MSG_ON_BPP_JOBSTATUS_IND:I = 0x6

.field public static final MSG_ON_BPP_PRINT_CNF:I = 0x8

.field public static final MSG_ON_BPP_PROGRESS_IND:I = 0x5

.field public static final NOTIFICATION_ID_BPP:I = 0x2625a00

.field public static final NOTIFICATION_PRINT_FAIL:I = 0x3

.field public static final NOTIFICATION_PRINT_PROCESSING:I = 0x1

.field public static final NOTIFICATION_PRINT_SUCCESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothBppManager"

.field private static mContext:Landroid/content/Context;

.field private static mCopies:I

.field private static mEntryError:[Ljava/lang/String;

.field private static mFileName:Ljava/lang/String;

.field private static mFilePath:Ljava/lang/String;

.field private static mFileSize:Ljava/lang/String;

.field private static mMimeType:Ljava/lang/String;

.field private static mNotificationId:I

.field private static mOrientation:Ljava/lang/String;

.field private static mPaperSize:Ljava/lang/String;

.field private static mProgress:I

.field private static mQuality:Ljava/lang/String;

.field private static mRemoteDev:Landroid/bluetooth/BluetoothDevice;

.field private static mSheetSetting:Ljava/lang/String;

.field private static mSidesSetting:Ljava/lang/String;


# instance fields
.field private final mBluetoothBppStub:Landroid/bluetooth/IBluetoothBpp$Stub;

.field private mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mConnected:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mHasStarted:Z

.field private mJobCanceled:Z

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStartId:I

.field private mTransContinue:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    const v0, 0x2625a00

    sput v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationId:I

    .line 132
    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    .line 133
    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    .line 134
    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mMimeType:Ljava/lang/String;

    .line 135
    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileSize:Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mProgress:I

    .line 139
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mCopies:I

    .line 140
    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mPaperSize:Ljava/lang/String;

    .line 141
    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mSidesSetting:Ljava/lang/String;

    .line 142
    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mSheetSetting:Ljava/lang/String;

    .line 143
    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mOrientation:Ljava/lang/String;

    .line 144
    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mQuality:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mStartId:I

    .line 123
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mHasStarted:Z

    .line 125
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mJobCanceled:Z

    .line 126
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mTransContinue:Z

    .line 127
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mConnected:Z

    .line 154
    new-instance v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$1;-><init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBluetoothBppStub:Landroid/bluetooth/IBluetoothBpp$Stub;

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilter:Landroid/content/IntentFilter;

    .line 196
    new-instance v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$2;-><init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;-><init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mRemoteDev:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mTransContinue:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;IILjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->createBppNotification(IILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mProgress:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mProgress:I

    return p0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mCopies:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mCopies:I

    return p0
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mJobCanceled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mJobCanceled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->sendStateChangedBroadcast(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mConnected:Z

    return p1
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mEntryError:[Ljava/lang/String;

    return-object v0
.end method

.method private final closeService()V
    .locals 2

    .prologue
    .line 726
    const-string v0, "BluetoothBppManager"

    const-string v1, "BppManager closeService"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mHasStarted:Z

    .line 728
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mStartId:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const-string v0, "BluetoothBppManager"

    const-string v1, "successfully stopped bpp manager"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    return-void
.end method

.method private createBppNotification(IILjava/lang/String;I)V
    .locals 11
    .parameter "sent"
    .parameter "total"
    .parameter "reason"
    .parameter "descriptionType"

    .prologue
    .line 736
    const-string v7, "BluetoothBppManager"

    const-string v8, "createBppNotification"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    mul-int/lit8 v7, p1, 0x64

    div-int v4, v7, p2

    .line 740
    .local v4, percentage:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 741
    .local v5, progress:Ljava/lang/String;
    const/4 v6, 0x0

    .line 742
    .local v6, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 744
    .local v1, description:Ljava/lang/String;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 746
    .local v2, n:Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    sget-object v7, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    const-class v8, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 747
    .local v3, pIntent:Landroid/content/Intent;
    const/high16 v7, 0x5400

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 748
    const-string v7, "action"

    const-string v8, "com.mediatek.bluetooth.bppprinting.action.PRINTING_UPDATE"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    const-string v7, "com.mediatek.bluetooth.bppprinting.extra.PERCENTAGE"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 751
    const-string v7, "com.mediatek.bluetooth.bppprinting.extra.FILE_NAME"

    sget-object v8, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    const-string v7, "com.mediatek.bluetooth.bppprinting.extra.REASON"

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string v7, "com.mediatek.bluetooth.bppprinting.extra.NOTIFICATION_ID"

    sget v8, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationId:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 755
    const/4 v7, 0x1

    if-ne p4, v7, :cond_1

    .line 757
    const-string v7, "BluetoothBppManager"

    const-string v8, "NOTIFICATION_PRINT_PROCESSING"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v7, "BluetoothBppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDialogType:2\tmPercentage:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\tmFileName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const v7, 0x7f070034

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 762
    const-string v7, "com.mediatek.bluetooth.bppprinting.extra.DIALOG_TYPE"

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v7, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 783
    .local v0, b:Landroid/app/Notification$Builder;
    const v7, 0x1080088

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 785
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 786
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 787
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 788
    sget-object v7, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    sget v8, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationId:I

    const/high16 v9, 0x800

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 789
    const/16 v7, 0x64

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v4, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 790
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 791
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 792
    iget v7, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 830
    .end local v0           #b:Landroid/app/Notification$Builder;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationMgr:Landroid/app/NotificationManager;

    sget v8, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationId:I

    invoke-virtual {v7, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 831
    return-void

    .line 794
    :cond_1
    const/4 v7, 0x2

    if-ne p4, v7, :cond_2

    .line 796
    const-string v7, "BluetoothBppManager"

    const-string v8, "NOTIFICATION_PRINT_SUCCESS"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const-string v7, "BluetoothBppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDialogType:3\tmPercentage:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\tmFileName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const v7, 0x7f070022

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 801
    const v7, 0x7f070035

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 803
    const v7, 0x1080089

    iput v7, v2, Landroid/app/Notification;->icon:I

    .line 805
    const-string v7, "com.mediatek.bluetooth.bppprinting.extra.DIALOG_TYPE"

    const/4 v8, 0x3

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 807
    sget-object v7, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    sget v9, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationId:I

    const/high16 v10, 0x800

    invoke-static {v8, v9, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v7, v6, v1, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 809
    iget-object v7, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationMgr:Landroid/app/NotificationManager;

    sget v8, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationId:I

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 811
    :cond_2
    const/4 v7, 0x3

    if-ne p4, v7, :cond_0

    .line 813
    const-string v7, "BluetoothBppManager"

    const-string v8, "NNOTIFICATION_PRINT_FAIL"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v7, "BluetoothBppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDialogType:4\tmPercentage:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\tmFileName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const v7, 0x7f070022

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 818
    const v7, 0x7f070036

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 820
    const v7, 0x1080078

    iput v7, v2, Landroid/app/Notification;->icon:I

    .line 822
    const-string v7, "com.mediatek.bluetooth.bppprinting.extra.DIALOG_TYPE"

    const/4 v8, 0x4

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    sget-object v7, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    sget v9, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationId:I

    const/high16 v10, 0x800

    invoke-static {v8, v9, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v7, v6, v1, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 827
    iget-object v7, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationMgr:Landroid/app/NotificationManager;

    sget v8, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationId:I

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/16 v6, 0x2f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 624
    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 625
    .local v12, action:Ljava/lang/String;
    const-string v1, "BluetoothBppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseIntent GET action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-nez v12, :cond_1

    .line 628
    const-string v1, "BluetoothBppManager"

    const-string v2, "action in null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    const-string v1, "com.mediatek.bluetooth.bppmanager.action.PASS_OBJECT"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 631
    const-string v1, "BluetoothBppManager"

    const-string v2, "ACTION_PASS_OBJECT"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v1, "com.mediatek.bluetooth.bppmanager.extra.FILE_PATH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    .line 634
    const-string v1, "com.mediatek.bluetooth.bppmanager.extra.MIME_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mMimeType:Ljava/lang/String;

    .line 635
    const-string v1, "com.mediatek.bluetooth.bppmanager.extra.FILE_SIZE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileSize:Ljava/lang/String;

    .line 637
    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileSize:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 638
    :cond_2
    const-string v1, "BluetoothBppManager"

    const-string v2, "file info error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_1
    const-string v1, "BluetoothBppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tfileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tfileSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v1, "BluetoothBppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mimeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 641
    :cond_3
    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    sget-object v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    .line 642
    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    sget-object v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    goto :goto_1

    .line 648
    :cond_4
    const-string v1, "com.mediatek.bluetooth.bppmanager.action.GET_PRINTER_ATTR"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 649
    const-string v1, "BluetoothBppManager"

    const-string v2, "ACTION_GET_PEINTER_ATTR"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v1, "com.mediatek.bluetooth.bppmanager.extra.FILE_PATH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    .line 652
    const-string v1, "com.mediatek.bluetooth.bppmanager.extra.MIME_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mMimeType:Ljava/lang/String;

    .line 653
    const-string v1, "com.mediatek.bluetooth.bppmanager.extra.FILE_SIZE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileSize:Ljava/lang/String;

    .line 655
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mRemoteDev:Landroid/bluetooth/BluetoothDevice;

    .line 657
    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileSize:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 658
    :cond_5
    const-string v1, "BluetoothBppManager"

    const-string v2, "file info error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 660
    :cond_6
    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mRemoteDev:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_7

    .line 661
    const-string v1, "BluetoothBppManager"

    const-string v2, "mRemoteDev is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 665
    :cond_7
    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    sget-object v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    .line 666
    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    sget-object v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    .line 668
    const-string v1, "BluetoothBppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tfileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tfileSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string v1, "BluetoothBppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mimeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const v1, 0x7f07002a

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 673
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    sget-object v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mRemoteDev:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppGetPrinterAttr(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 676
    :cond_8
    const-string v1, "com.mediatek.bluetooth.bppmanager.action.PRINT"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 677
    const-string v1, "BluetoothBppManager"

    const-string v2, "ACTION_PRINT"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v1, " com.mediatek.bluetooth.bppprintjobsettings.extra.papersize"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mPaperSize:Ljava/lang/String;

    .line 680
    const-string v1, " com.mediatek.bluetooth.bppprintjobsettings.extra.copies"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mCopies:I

    .line 681
    const-string v1, " com.mediatek.bluetooth.bppprintjobsettings.extra.sides"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mSidesSetting:Ljava/lang/String;

    .line 682
    const-string v1, " com.mediatek.bluetooth.bppprintjobsettings.extra.pagespersheet"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mSheetSetting:Ljava/lang/String;

    .line 683
    const-string v1, " com.mediatek.bluetooth.bppprintjobsettings.extra.orientation"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mOrientation:Ljava/lang/String;

    .line 684
    const-string v1, " com.mediatek.bluetooth.bppprintjobsettings.extra.quality"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mQuality:Ljava/lang/String;

    .line 687
    const-string v1, "BluetoothBppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " paperSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mPaperSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tcopies: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mCopies:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tsideSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mSidesSetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tsheetSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mSheetSetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\torientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mOrientation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tquality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mQuality:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mPaperSize:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mSidesSetting:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mSheetSetting:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mOrientation:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mQuality:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 696
    :cond_9
    const-string v1, "BluetoothBppManager"

    const-string v2, "print settings error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppDisconnect()V

    goto/16 :goto_0

    .line 701
    :cond_a
    new-instance v0, Lcom/mediatek/bluetooth/bpp/PrintObject;

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilePath:Ljava/lang/String;

    sget-object v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileName:Ljava/lang/String;

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mMimeType:Ljava/lang/String;

    sget-object v4, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFileSize:Ljava/lang/String;

    sget v6, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mCopies:I

    sget-object v7, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mSheetSetting:Ljava/lang/String;

    sget-object v8, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mSidesSetting:Ljava/lang/String;

    sget-object v9, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mOrientation:Ljava/lang/String;

    sget-object v10, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mQuality:Ljava/lang/String;

    sget-object v11, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mPaperSize:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lcom/mediatek/bluetooth/bpp/PrintObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .local v0, pobj:Lcom/mediatek/bluetooth/bpp/PrintObject;
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    sget-object v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mRemoteDev:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppPrint(Ljava/lang/String;Lcom/mediatek/bluetooth/bpp/PrintObject;)V

    goto/16 :goto_0

    .line 707
    .end local v0           #pobj:Lcom/mediatek/bluetooth/bpp/PrintObject;
    :cond_b
    const-string v1, "com.mediatek.bluetooth.bppmanager.action.GET_DEFAULT_VALUE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 708
    const v1, 0x7f07002b

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 709
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    sget-object v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mRemoteDev:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppGetPrinterAttr(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 711
    :cond_c
    const-string v1, "com.mediatek.bluetooth.bppmanager.action.AUTH_INFO"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 712
    const-string v1, "BluetoothBppManager"

    const-string v2, "ACTION_AUTH"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v13, Lcom/mediatek/bluetooth/bpp/AuthInfo;

    const-string v1, "UserId"

    const-string v2, "com.mediatek.bluetooth.bppmanager.extra.AUTH_PASSWD"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v4, v1, v2}, Lcom/mediatek/bluetooth/bpp/AuthInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 714
    .local v13, aobj:Lcom/mediatek/bluetooth/bpp/AuthInfo;
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    invoke-virtual {v1, v13}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppAuthRsp(Lcom/mediatek/bluetooth/bpp/AuthInfo;)V

    goto/16 :goto_0

    .line 716
    .end local v13           #aobj:Lcom/mediatek/bluetooth/bpp/AuthInfo;
    :cond_d
    const-string v1, "com.mediatek.bluetooth.bppmanager.action.CANCEL"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    const-string v1, "BluetoothBppManager"

    const-string v2, "ACTION_CANCEL"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppDisconnect()V

    .line 720
    iput-boolean v5, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mJobCanceled:Z

    goto/16 :goto_0
.end method

.method private sendStateChangedBroadcast(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "state"

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.profilemanager.extra.PROFILE"

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_BPP_Sender:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 180
    packed-switch p2, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 182
    :pswitch_0
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 185
    :pswitch_1
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 578
    const-string v0, "BluetoothBppManager"

    const-string v1, "BppManager onBind"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBluetoothBppStub:Landroid/bluetooth/IBluetoothBpp$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 527
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 528
    const-string v0, "BluetoothBppManager"

    const-string v1, "BppManager onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mHasStarted:Z

    if-nez v0, :cond_2

    .line 531
    const-string v0, "BluetoothBppManager"

    const-string v1, "Starting BPP mamanger......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iput-boolean v3, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mHasStarted:Z

    .line 533
    sget v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationId:I

    const v1, 0x2faf080

    if-ge v0, v1, :cond_1

    .line 534
    sget v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationId:I

    .line 540
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    .line 542
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 544
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "BluetoothBppManager"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 546
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 548
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mEntryError:[Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/SystemUtils;->getReceivedFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 555
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 557
    new-instance v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mCallbackHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    .line 559
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->enable()Z

    move-result v0

    if-eq v0, v3, :cond_0

    .line 560
    const-string v0, "BluetoothBppManager"

    const-string v1, " Bpp Server enable error 1"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 569
    :cond_0
    :goto_1
    return-void

    .line 537
    :cond_1
    const v0, 0x2625a00

    sput v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationId:I

    goto :goto_0

    .line 566
    :cond_2
    const-string v0, "BluetoothBppManager"

    const-string v1, " Bpp Server enable error 2"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppDisable()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 608
    const-string v0, "BluetoothBppManager"

    const-string v1, "BppManager onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mTransContinue:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationMgr:Landroid/app/NotificationManager;

    sget v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 618
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->closeService()V

    .line 619
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 620
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 590
    const-string v1, "BluetoothBppManager"

    const-string v2, "BppManager onStartCommand"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 594
    .local v0, retCode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 595
    iput p3, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mStartId:I

    .line 597
    if-eqz p1, :cond_0

    .line 598
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->parseIntent(Landroid/content/Intent;)V

    .line 601
    :cond_0
    return v0
.end method
