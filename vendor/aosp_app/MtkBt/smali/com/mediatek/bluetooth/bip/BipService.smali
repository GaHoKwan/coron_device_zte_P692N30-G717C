.class public Lcom/mediatek/bluetooth/bip/BipService;
.super Landroid/app/Service;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/bip/BipService$BipiContentObserver;,
        Lcom/mediatek/bluetooth/bip/BipService$DatabaseQueryThread;
    }
.end annotation


# static fields
.field public static final ACTION_BIPI_AUTH_INFO:Ljava/lang/String; = "com.mediatek.bluetooth.bppmanager.action.BIPI_AUTH_INFO"

.field public static final ACTION_BIPI_CANCEL:Ljava/lang/String; = "com.mediatek.bluetooth.bipiservice.action.BIPI_CANCEL"

.field public static final ACTION_BIPR_AUTH_INFO:Ljava/lang/String; = "com.mediatek.bluetooth.bppmanager.action.BIPR_AUTH_INFO"

.field public static final ACTION_BIPR_CANCEL:Ljava/lang/String; = "com.mediatek.bluetooth.bipiservice.action.BIPR_CANCEL"

.field public static final ACTION_BIP_DISABLE:Ljava/lang/String; = "com.mediatek.bluetooth.bipiservice.action.BIP_DISABLE"

.field public static final ACTION_CANCEL_PENDING:Ljava/lang/String; = "com.mediatek.bluetooth.bipiservice.action.CANCEL_PENDING"

.field public static final ACTION_RECEIVE_ACCEPT:Ljava/lang/String; = "com.mediatek.bluetooth.bipiservice.action.RECEIVE_ACCEPT"

.field public static final ACTION_RECEIVE_REJECT:Ljava/lang/String; = "com.mediatek.bluetooth.bipiservice.action.RECEIVE_REJECT"

.field public static final ACTION_RECEIVE_RESTORE:Ljava/lang/String; = "com.mediatek.bluetooth.bipiservice.action.RECEIVE_RESTORE"

.field public static final ACTION_SEND:Ljava/lang/String; = "com.mediatek.bluetooth.bipiservice.action.SEND"

.field public static final BIPI_CONNECTED:I = 0x3

.field public static final BIPI_DISABLED:I = 0x9

.field public static final BIPI_DISABLING:I = 0x8

.field public static final BIPI_DISCONNECTED:I = 0x7

.field public static final BIPI_DISCONNECTING:I = 0x6

.field public static final BIPI_ENABLED:I = 0x2

.field public static final BIPI_ENABLING:I = 0x1

.field public static final BIPI_ERROR:I = -0x1

.field public static final BIPI_PUSH_IMG:I = 0x4

.field public static final BIPI_PUSH_THUMBNAIL:I = 0x5

.field public static final BIPR_CONNECTED:I = 0x4

.field public static final BIPR_CONNECTING:I = 0x3

.field public static final BIPR_DISABLED:I = 0xa

.field public static final BIPR_DISABLING:I = 0x9

.field public static final BIPR_DISCONNECTED:I = 0x8

.field public static final BIPR_DISCONNECTING:I = 0x7

.field public static final BIPR_ENABLED:I = 0x2

.field public static final BIPR_ENABLING:I = 0x1

.field public static final BIPR_ERROR:I = -0x1

.field public static final BIPR_PUSH_IMG:I = 0x5

.field public static final BIPR_PUSH_THUMBNAIL:I = 0x6

.field public static final EXTRA_AUTH_PASSWD:Ljava/lang/String; = "com.mediatek.bluetooth.bipiservice.extra.EXTRA_AUTH_PASSWD"

.field public static final EXTRA_AUTH_USERID:Ljava/lang/String; = "com.mediatek.bluetooth.bipiservice.extra.EXTRA_AUTH_USERID"

.field public static final MSG_ON_BIPI_CANCEL:I = 0xd

.field public static final MSG_ON_BIPI_CONNECT:I = 0x4

.field public static final MSG_ON_BIPI_DISABLE:I = 0x2

.field public static final MSG_ON_BIPI_DISCONNECT:I = 0xc

.field public static final MSG_ON_BIPI_ENABLE:I = 0x1

.field public static final MSG_ON_BIPI_GET_CAPABILITY:I = 0x5

.field public static final MSG_ON_BIPI_IMAGE_PUSH_START:I = 0x6

.field public static final MSG_ON_BIPI_OBEX_AUTHREQ:I = 0x3

.field public static final MSG_ON_BIPI_PROGRESS:I = 0x7

.field public static final MSG_ON_BIPI_PUSH:I = 0x8

.field public static final MSG_ON_BIPI_THUMBNAIL_PUSH:I = 0xb

.field public static final MSG_ON_BIPI_THUMBNAIL_PUSH_START:I = 0xa

.field public static final MSG_ON_BIPI_THUMBNAIL_REQ:I = 0x9

.field public static final MSG_ON_BIPR_ACCESS_REQ:I = 0x1c

.field public static final MSG_ON_BIPR_ALWAYS_ACCEPT:I = 0x23

.field public static final MSG_ON_BIPR_AUTH_REQ:I = 0x17

.field public static final MSG_ON_BIPR_CAPABILITY_RES:I = 0x1b

.field public static final MSG_ON_BIPR_CONNECT:I = 0x19

.field public static final MSG_ON_BIPR_DISABLE:I = 0x16

.field public static final MSG_ON_BIPR_DISCONNECT:I = 0x22

.field public static final MSG_ON_BIPR_ENABLE:I = 0x15

.field public static final MSG_ON_BIPR_GET_CAPABILITY_REQ:I = 0x1a

.field public static final MSG_ON_BIPR_IMAGE_RECEIVE_START:I = 0x1d

.field public static final MSG_ON_BIPR_OBEX_AUTHREQ:I = 0x18

.field public static final MSG_ON_BIPR_PROGRESS:I = 0x1e

.field public static final MSG_ON_BIPR_RECEIVE:I = 0x1f

.field public static final MSG_ON_BIPR_THUMBNAIL_RECEIVE:I = 0x21

.field public static final MSG_ON_BIPR_THUMBNAIL_RECEIVE_START:I = 0x20

.field public static final NOTIFICATION_ID_BIPI:I = 0x1c9c380

.field public static final NOTIFICATION_ID_BIPI_PENDING:I = 0x1efe920

.field public static final NOTIFICATION_ID_BIPR:I = 0x2160ec0

.field public static final NOTIFICATION_ID_BIP_END:I = 0x26259ff

.field public static final NOTIFICATION_INCOMING_REQ:I = 0x1

.field public static final NOTIFICATION_PENDING_JOB:I = 0x14

.field public static final NOTIFICATION_RECEIVE_FAIL:I = 0x17

.field public static final NOTIFICATION_RECEIVE_PROCESSING:I = 0x15

.field public static final NOTIFICATION_RECEIVE_SUCCESS:I = 0x16

.field public static final NOTIFICATION_TRANSMIT_FAIL:I = 0xd

.field public static final NOTIFICATION_TRANSMIT_PROCESSING:I = 0xb

.field public static final NOTIFICATION_TRANSMIT_SUCCESS:I = 0xc

.field private static final NOTIFICATION_TYPE_DEFAULT:I = 0x1

.field private static final NOTIFICATION_TYPE_SILENCE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BipService"

.field private static mAlwaysAccept:Z

.field private static mBipiNotificationId:I

.field private static mBipiState:I

.field private static mBiprNotificationId:I

.field private static mBiprState:I

.field private static mHasStarted:Z

.field private static final mRequiredThumb:I

.field private static mStartId:I


# instance fields
.field private initiatorWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

.field private final mBluetoothBipiStub:Landroid/bluetooth/IBluetoothBipi$Stub;

.field private final mBluetoothBiprStub:Landroid/bluetooth/IBluetoothBipr$Stub;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDatabaseQueryThread:Lcom/mediatek/bluetooth/bip/BipService$DatabaseQueryThread;

.field private mFilter:Landroid/content/IntentFilter;

.field private mInitiatorImageObject:Lcom/mediatek/bluetooth/bip/BipImage;

.field private mInitiatorJobUri:Landroid/net/Uri;

.field private mInitiatorObjectMime:Ljava/lang/String;

.field private mInitiatorObjectName:Ljava/lang/String;

.field private mInitiatorObjectPath:Ljava/lang/String;

.field private mInitiatorObjectSize:Ljava/lang/String;

.field private mInitiatorRemoteBtAddr:Ljava/lang/String;

.field private mInitiatorRemoteDevName:Ljava/lang/String;

.field private mInitiatorValues:Landroid/content/ContentValues;

.field private mMediaScannerConnection:Landroid/media/MediaScannerConnection;

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mObserver:Lcom/mediatek/bluetooth/bip/BipService$BipiContentObserver;

.field private mPendingName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResponderJobUri:Landroid/net/Uri;

.field private mResponderObjectName:Ljava/lang/String;

.field private mResponderObjectPath:Ljava/lang/String;

.field private mResponderObjectSize:I

.field private mResponderReceivingSize:I

.field private mResponderRemoteBtAddr:Ljava/lang/String;

.field private mResponderRemoteDevName:Ljava/lang/String;

.field private mResponderValues:Landroid/content/ContentValues;

.field private mUri:Landroid/net/Uri;

.field private nFilter:Landroid/content/IntentFilter;

.field private nReceiver:Landroid/content/BroadcastReceiver;

.field private powerManager:Landroid/os/PowerManager;

.field private responderWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    const v0, 0x1c9c380

    sput v0, Lcom/mediatek/bluetooth/bip/BipService;->mBipiNotificationId:I

    .line 207
    const v0, 0x2160ec0

    sput v0, Lcom/mediatek/bluetooth/bip/BipService;->mBiprNotificationId:I

    .line 209
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/bluetooth/bip/BipService;->mStartId:I

    .line 210
    sput-boolean v1, Lcom/mediatek/bluetooth/bip/BipService;->mHasStarted:Z

    .line 211
    sput-boolean v1, Lcom/mediatek/bluetooth/bip/BipService;->mAlwaysAccept:Z

    .line 212
    const/16 v0, 0x9

    sput v0, Lcom/mediatek/bluetooth/bip/BipService;->mBipiState:I

    .line 213
    const/16 v0, 0xa

    sput v0, Lcom/mediatek/bluetooth/bip/BipService;->mBiprState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 251
    iput-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mDatabaseQueryThread:Lcom/mediatek/bluetooth/bip/BipService$DatabaseQueryThread;

    .line 272
    new-instance v0, Lcom/mediatek/bluetooth/bip/BipService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bip/BipService$1;-><init>(Lcom/mediatek/bluetooth/bip/BipService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBluetoothBipiStub:Landroid/bluetooth/IBluetoothBipi$Stub;

    .line 338
    new-instance v0, Lcom/mediatek/bluetooth/bip/BipService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bip/BipService$2;-><init>(Lcom/mediatek/bluetooth/bip/BipService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBluetoothBiprStub:Landroid/bluetooth/IBluetoothBipr$Stub;

    .line 373
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mFilter:Landroid/content/IntentFilter;

    .line 374
    new-instance v0, Lcom/mediatek/bluetooth/bip/BipService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bip/BipService$3;-><init>(Lcom/mediatek/bluetooth/bip/BipService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 411
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.bluetooth.sharegateway.action.ACTION_SEND_BIP_FILES"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->nFilter:Landroid/content/IntentFilter;

    .line 412
    new-instance v0, Lcom/mediatek/bluetooth/bip/BipService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bip/BipService$4;-><init>(Lcom/mediatek/bluetooth/bip/BipService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->nReceiver:Landroid/content/BroadcastReceiver;

    .line 431
    iput-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 461
    new-instance v0, Lcom/mediatek/bluetooth/bip/BipService$5;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bip/BipService$5;-><init>(Lcom/mediatek/bluetooth/bip/BipService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/bip/BipService;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/mediatek/bluetooth/bip/BipService;->mHasStarted:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->initiatorWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/bluetooth/bip/BipService;Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/bip/BipService;->acquireWakeLock(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/bluetooth/bip/BipService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipService;->executeJob()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/bluetooth/bip/BipService;Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/bip/BipService;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/bluetooth/bip/BipService;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/bip/BipService;->createBipNotification(JI)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BipImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorImageObject:Lcom/mediatek/bluetooth/bip/BipImage;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/mediatek/bluetooth/bip/BipService;Lcom/mediatek/bluetooth/bip/BipImage;)Lcom/mediatek/bluetooth/bip/BipImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorImageObject:Lcom/mediatek/bluetooth/bip/BipImage;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/mediatek/bluetooth/bip/BipService;->mBipiState:I

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    sput p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipiState:I

    return p0
.end method

.method static synthetic access$2100(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectMime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/bluetooth/bip/BipService;Lcom/mediatek/bluetooth/bip/Capability;Lcom/mediatek/bluetooth/bip/BipImage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/bip/BipService;->compareImgFormat(Lcom/mediatek/bluetooth/bip/Capability;Lcom/mediatek/bluetooth/bip/BipImage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/mediatek/bluetooth/bip/BipService;Landroid/content/Context;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/bip/BipService;->sendStateChangedBroadcast(Landroid/content/Context;ZI)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteDevName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/mediatek/bluetooth/bip/BipService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteDevName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/mediatek/bluetooth/bip/BipService;->mBiprNotificationId:I

    return v0
.end method

.method static synthetic access$2602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    sput p0, Lcom/mediatek/bluetooth/bip/BipService;->mBiprNotificationId:I

    return p0
.end method

.method static synthetic access$2608()I
    .locals 2

    .prologue
    .line 97
    sget v0, Lcom/mediatek/bluetooth/bip/BipService;->mBiprNotificationId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/bluetooth/bip/BipService;->mBiprNotificationId:I

    return v0
.end method

.method static synthetic access$2700(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/mediatek/bluetooth/bip/BipService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/mediatek/bluetooth/bip/BipService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectSize:I

    return v0
.end method

.method static synthetic access$2802(Lcom/mediatek/bluetooth/bip/BipService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectSize:I

    return p1
.end method

.method static synthetic access$2900(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/mediatek/bluetooth/bip/BipService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/mediatek/bluetooth/bip/BipService;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/mediatek/bluetooth/bip/BipService;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderJobUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$3200()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/mediatek/bluetooth/bip/BipService;->mAlwaysAccept:Z

    return v0
.end method

.method static synthetic access$3202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    sput-boolean p0, Lcom/mediatek/bluetooth/bip/BipService;->mAlwaysAccept:Z

    return p0
.end method

.method static synthetic access$3300(Lcom/mediatek/bluetooth/bip/BipService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipService;->biprAccept()V

    return-void
.end method

.method static synthetic access$3400(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/media/MediaScannerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->responderWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/bluetooth/bip/BipService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderReceivingSize:I

    return v0
.end method

.method static synthetic access$3602(Lcom/mediatek/bluetooth/bip/BipService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderReceivingSize:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/bip/BipService;Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/bip/BipService;->extractContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/mediatek/bluetooth/bip/BipService;->mBiprState:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    sput p0, Lcom/mediatek/bluetooth/bip/BipService;->mBiprState:I

    return p0
.end method

.method static synthetic access$800(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteBtAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/bluetooth/bip/BipService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteBtAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private acquireWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 2
    .parameter "mWakeLock"

    .prologue
    .line 1138
    if-eqz p1, :cond_0

    .line 1139
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    const-string v0, "BipService"

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1144
    :cond_0
    return-void
.end method

.method private biprAccept()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1244
    const-string v0, "BipService"

    const-string v1, "biprAccept"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1247
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1248
    const/4 v0, 0x5

    sput v0, Lcom/mediatek/bluetooth/bip/BipService;->mBiprState:I

    .line 1249
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v3, v1}, Lcom/mediatek/bluetooth/bip/BipService;->sendStateChangedBroadcast(Landroid/content/Context;ZI)V

    .line 1250
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprAccessRsp(IILjava/lang/String;)Z

    .line 1251
    return-void
.end method

.method private final closeService()V
    .locals 2

    .prologue
    .line 1254
    const-string v0, "BipService"

    const-string v1, "BipiService closeService"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/bluetooth/bip/BipService;->mHasStarted:Z

    .line 1256
    sget v0, Lcom/mediatek/bluetooth/bip/BipService;->mStartId:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    const-string v0, "BipService"

    const-string v1, "successfully stopped Bipi service"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_0
    return-void
.end method

.method private compareImgFormat(Lcom/mediatek/bluetooth/bip/Capability;Lcom/mediatek/bluetooth/bip/BipImage;)Z
    .locals 4
    .parameter "capa"
    .parameter "img"

    .prologue
    const v3, 0xffff

    .line 1264
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p1, Lcom/mediatek/bluetooth/bip/Capability;->NumImageFormats:I

    if-ge v0, v1, :cond_5

    .line 1265
    iget-object v1, p1, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Encoding:Ljava/lang/String;

    iget-object v2, p2, Lcom/mediatek/bluetooth/bip/BipImage;->Encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1266
    iget-object v1, p1, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width2:I

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width:I

    iget v2, p2, Lcom/mediatek/bluetooth/bip/BipImage;->Width:I

    if-ne v1, v2, :cond_3

    .line 1270
    :cond_0
    iget-object v1, p1, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height2:I

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height:I

    iget v2, p2, Lcom/mediatek/bluetooth/bip/BipImage;->Height:I

    if-ne v1, v2, :cond_3

    .line 1274
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 1288
    :goto_2
    return v1

    .line 1266
    :cond_2
    iget-object v1, p1, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width:I

    iget v2, p2, Lcom/mediatek/bluetooth/bip/BipImage;->Width:I

    if-gt v1, v2, :cond_3

    iget-object v1, p1, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width2:I

    if-eq v1, v3, :cond_0

    iget v1, p2, Lcom/mediatek/bluetooth/bip/BipImage;->Width:I

    iget-object v2, p1, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width2:I

    if-le v1, v2, :cond_0

    .line 1264
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1270
    :cond_4
    iget-object v1, p1, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height:I

    iget v2, p2, Lcom/mediatek/bluetooth/bip/BipImage;->Height:I

    if-ge v1, v2, :cond_3

    iget-object v1, p1, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height2:I

    if-eq v1, v3, :cond_1

    iget v1, p2, Lcom/mediatek/bluetooth/bip/BipImage;->Height:I

    iget-object v2, p1, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height2:I

    if-gt v1, v2, :cond_3

    goto :goto_1

    .line 1288
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private createBipNotification(JI)V
    .locals 1
    .parameter "sent"
    .parameter "descriptionType"

    .prologue
    .line 1389
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetooth/bip/BipService;->createBipNotificationT(JII)V

    .line 1390
    return-void
.end method

.method private createBipNotificationT(JII)V
    .locals 21
    .parameter "sent"
    .parameter "descriptionType"
    .parameter "type"

    .prologue
    .line 1395
    const-string v16, "BipService"

    const-string v17, "createBipNotification"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const/16 v16, 0x1

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 1399
    const-string v16, "BipService"

    const-string v17, "NOTIFICATION_INCOMING_REQ"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const/4 v13, 0x0

    .line 1401
    .local v13, title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1403
    .local v5, description:Ljava/lang/String;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 1406
    .local v8, n:Landroid/app/Notification;
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-class v17, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1407
    .local v10, pIntent:Landroid/content/Intent;
    const/high16 v16, 0x5000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1408
    const-string v16, "com.mediatek.bluetooth.biprpushconfirmation.extra.DEVICE_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteDevName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1409
    const-string v16, "com.mediatek.bluetooth.biprpushconfirmation.extra.FILE_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1410
    const-string v16, "com.mediatek.bluetooth.biprpushconfirmation.extra.FILE_SIZE"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1412
    const-string v16, "BipService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "RemoteDevName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteDevName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\tfileName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\tfileSize:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const v16, 0x7f07000f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1415
    const v16, 0x7f070010

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectName:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1416
    iput-object v13, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1418
    const/16 v16, 0x1

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 1419
    iget v0, v8, Landroid/app/Notification;->defaults:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v8, Landroid/app/Notification;->defaults:I

    .line 1420
    iget v0, v8, Landroid/app/Notification;->defaults:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v8, Landroid/app/Notification;->defaults:I

    .line 1422
    :cond_0
    iget v0, v8, Landroid/app/Notification;->flags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v8, Landroid/app/Notification;->flags:I

    .line 1423
    iget v0, v8, Landroid/app/Notification;->flags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v8, Landroid/app/Notification;->flags:I

    .line 1424
    const v16, 0x1080080

    move/from16 v0, v16

    iput v0, v8, Landroid/app/Notification;->icon:I

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x26259ff

    const/high16 v19, 0x4800

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v13, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    const v17, 0x26259ff

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1700
    .end local v5           #description:Ljava/lang/String;
    .end local v8           #n:Landroid/app/Notification;
    .end local v10           #pIntent:Landroid/content/Intent;
    .end local v13           #title:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1436
    :cond_2
    const/16 v16, 0x14

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 1438
    const-string v16, "BipService"

    const-string v17, "NOTIFICATION_PENDING_JOB"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    move-wide/from16 v0, p1

    long-to-int v9, v0

    .line 1440
    .local v9, nId:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/bluetooth/bip/BipService;->mPendingName:Ljava/lang/String;

    .line 1441
    .local v6, fileName:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1442
    .restart local v13       #title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1444
    .restart local v5       #description:Ljava/lang/String;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 1446
    .restart local v8       #n:Landroid/app/Notification;
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-class v17, Lcom/mediatek/bluetooth/bip/BipTransmitting;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1447
    .restart local v10       #pIntent:Landroid/content/Intent;
    const/high16 v16, 0x5400

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1448
    const-string v16, "action"

    const-string v17, "com.mediatek.bluetooth.bipitransmitting.action.TRANSMISSION_UPDATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.FILE_NAME"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1450
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.NOTIFICATION_ID"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1451
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/16 v17, 0x14

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1453
    const-string v16, "BipService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mDialogType:20\tfileName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    const/high16 v16, 0x7f07

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1456
    const v16, 0x7f07000e

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1458
    iget v0, v8, Landroid/app/Notification;->flags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v8, Landroid/app/Notification;->flags:I

    .line 1459
    const v16, 0x1080089

    move/from16 v0, v16

    iput v0, v8, Landroid/app/Notification;->icon:I

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/high16 v18, 0x800

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v9, v10, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v13, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1469
    .end local v5           #description:Ljava/lang/String;
    .end local v6           #fileName:Ljava/lang/String;
    .end local v8           #n:Landroid/app/Notification;
    .end local v9           #nId:I
    .end local v10           #pIntent:Landroid/content/Intent;
    .end local v13           #title:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    .line 1470
    .restart local v6       #fileName:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1471
    .local v14, total:I
    const/4 v4, 0x0

    .line 1472
    .local v4, bIntent:Landroid/content/Intent;
    const/16 v16, 0x14

    move/from16 v0, p3

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 1473
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectName:Ljava/lang/String;

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectSize:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    .line 1475
    const-string v16, "BipService"

    const-string v17, "mInitiatorObjectSize is null"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    const/4 v14, 0x0

    .line 1479
    :goto_1
    new-instance v4, Landroid/content/Intent;

    .end local v4           #bIntent:Landroid/content/Intent;
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.action.TRANSMISSION_UPDATE"

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1487
    .restart local v4       #bIntent:Landroid/content/Intent;
    :cond_4
    :goto_2
    if-nez v4, :cond_7

    .line 1488
    const-string v16, "BipService"

    const-string v17, "broadcast intent is null"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1478
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectSize:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_1

    .line 1481
    :cond_6
    const/16 v16, 0x14

    move/from16 v0, p3

    move/from16 v1, v16

    if-le v0, v1, :cond_4

    .line 1482
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectName:Ljava/lang/String;

    .line 1483
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectSize:I

    .line 1484
    new-instance v4, Landroid/content/Intent;

    .end local v4           #bIntent:Landroid/content/Intent;
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.action.RECEIVING_UPDATE"

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4       #bIntent:Landroid/content/Intent;
    goto :goto_2

    .line 1495
    :cond_7
    const/4 v11, 0x0

    .line 1496
    .local v11, percentage:I
    if-eqz v14, :cond_8

    .line 1497
    const-wide/16 v16, 0x64

    mul-long v16, v16, p1

    int-to-long v0, v14

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v11, v0

    .line 1500
    :cond_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1501
    .local v12, progress:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1502
    .restart local v13       #title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1504
    .restart local v5       #description:Ljava/lang/String;
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.FILE_NAME"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.PERCENTAGE"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1507
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 1508
    .restart local v8       #n:Landroid/app/Notification;
    const/4 v7, 0x0

    .line 1509
    .local v7, mgmt_n:Landroid/app/Notification;
    const/4 v15, 0x0

    .line 1512
    .local v15, values:Landroid/content/ContentValues;
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-class v17, Lcom/mediatek/bluetooth/bip/BipTransmitting;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1513
    .restart local v10       #pIntent:Landroid/content/Intent;
    const/high16 v16, 0x5400

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1514
    const-string v16, "action"

    const-string v17, "com.mediatek.bluetooth.bipitransmitting.action.TRANSMISSION_UPDATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.PERCENTAGE"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1517
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.FILE_NAME"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    packed-switch p3, :pswitch_data_0

    .line 1692
    :goto_3
    :pswitch_0
    const-string v16, "BipService"

    const-string v17, "SEND broadcast to DIALOG"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1694
    const/16 v16, 0x15

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    sget v17, Lcom/mediatek/bluetooth/bip/BipService;->mBiprNotificationId:I

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1523
    :pswitch_1
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/16 v17, 0xb

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1525
    const-string v16, "BipService"

    const-string v17, "NOTIFICATION_TRANSMIT_PROCESSING"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const-string v16, "BipService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mDialogType:11\tmPercentage:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\tfileName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    const v16, 0x7f07000a

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1530
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.NOTIFICATION_ID"

    sget v17, Lcom/mediatek/bluetooth/bip/BipService;->mBipiNotificationId:I

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1531
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/16 v17, 0xb

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1551
    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1552
    .local v3, b:Landroid/app/Notification$Builder;
    const v16, 0x1080088

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1554
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1555
    invoke-virtual {v3, v12}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1556
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    sget v17, Lcom/mediatek/bluetooth/bip/BipService;->mBipiNotificationId:I

    const/high16 v18, 0x800

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1558
    const/16 v16, 0x64

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v11, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 1559
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1560
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 1561
    iget v0, v8, Landroid/app/Notification;->flags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v8, Landroid/app/Notification;->flags:I

    goto/16 :goto_3

    .line 1566
    .end local v3           #b:Landroid/app/Notification$Builder;
    :pswitch_2
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/16 v17, 0xc

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1568
    const-string v16, "BipService"

    const-string v17, "NOTIFICATION_TRANSMIT_SUCCESS"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const-string v16, "BipService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mDialogType:12\tmPercentage:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\tfileName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorValues:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "state"

    const/16 v18, 0x8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorJobUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    sget v17, Lcom/mediatek/bluetooth/bip/BipService;->mBipiNotificationId:I

    invoke-virtual/range {v16 .. v17}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/bluetooth/share/BluetoothShareNotification;->getShareManagementNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v7

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    sget v17, Lcom/mediatek/bluetooth/util/NotificationFactory;->NID_SHARE_MGMT_NOTIFICATION:I

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1580
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/16 v17, 0xc

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1581
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1586
    :pswitch_3
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/16 v17, 0xd

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1588
    const-string v16, "BipService"

    const-string v17, "NNOTIFICATION_TRANSMIT_FAIL"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    const-string v16, "BipService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mDialogType:13\tmPercentage:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\tfileName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorValues:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "state"

    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorJobUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    sget v17, Lcom/mediatek/bluetooth/bip/BipService;->mBipiNotificationId:I

    invoke-virtual/range {v16 .. v17}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/bluetooth/share/BluetoothShareNotification;->getShareManagementNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v7

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    sget v17, Lcom/mediatek/bluetooth/util/NotificationFactory;->NID_SHARE_MGMT_NOTIFICATION:I

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1600
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/16 v17, 0xd

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1601
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1606
    :pswitch_4
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/16 v17, 0x15

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1608
    const-string v16, "BipService"

    const-string v17, "NOTIFICATION_RECEIVE_PROCESSING"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    const-string v16, "BipService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mDialogType:21\tmPercentage:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\tfileName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const v16, 0x7f070016

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1613
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.NOTIFICATION_ID"

    sget v17, Lcom/mediatek/bluetooth/bip/BipService;->mBiprNotificationId:I

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1614
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/16 v17, 0x15

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1634
    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1635
    .restart local v3       #b:Landroid/app/Notification$Builder;
    const v16, 0x1080081

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1637
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1638
    invoke-virtual {v3, v12}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1639
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    sget v17, Lcom/mediatek/bluetooth/bip/BipService;->mBiprNotificationId:I

    const/high16 v18, 0x800

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1641
    const/16 v16, 0x64

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v11, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 1642
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1643
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 1644
    iget v0, v8, Landroid/app/Notification;->flags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v8, Landroid/app/Notification;->flags:I

    goto/16 :goto_3

    .line 1649
    .end local v3           #b:Landroid/app/Notification$Builder;
    :pswitch_5
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/16 v17, 0x16

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1651
    const-string v16, "BipService"

    const-string v17, "NOTIFICATION_RECEIVE_SUCCESS"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    const-string v16, "BipService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mDialogType:22\tmPercentage:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\tfileName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "state"

    const/16 v18, 0x8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderJobUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    sget v17, Lcom/mediatek/bluetooth/bip/BipService;->mBiprNotificationId:I

    invoke-virtual/range {v16 .. v17}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/bluetooth/share/BluetoothShareNotification;->getShareManagementNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v7

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    sget v17, Lcom/mediatek/bluetooth/util/NotificationFactory;->NID_SHARE_MGMT_NOTIFICATION:I

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1664
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/16 v17, 0x16

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1665
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1672
    :pswitch_6
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/16 v17, 0x17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1674
    const-string v16, "BipService"

    const-string v17, "NNOTIFICATION_RECEIVE_FAIL"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const-string v16, "BipService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mDialogType:23\tmPercentage:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\tfileName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "state"

    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderJobUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    sget v17, Lcom/mediatek/bluetooth/bip/BipService;->mBiprNotificationId:I

    invoke-virtual/range {v16 .. v17}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/bluetooth/share/BluetoothShareNotification;->getShareManagementNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v7

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    sget v17, Lcom/mediatek/bluetooth/util/NotificationFactory;->NID_SHARE_MGMT_NOTIFICATION:I

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1685
    const-string v16, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/16 v17, 0x17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1686
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1697
    :cond_9
    const/16 v16, 0xb

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    sget v17, Lcom/mediatek/bluetooth/bip/BipService;->mBipiNotificationId:I

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1520
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private executeJob()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, 0x1efe920

    .line 1294
    const-string v3, "BipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter executeJob,Environment.getExternalStorageState() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1297
    const-string v3, "BipService"

    const-string v4, "SD card unmounted"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    const v4, 0x7f07001a

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1300
    sput v8, Lcom/mediatek/bluetooth/bip/BipService;->mBipiState:I

    .line 1301
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiDisable()Z

    .line 1385
    :goto_0
    return-void

    .line 1314
    :cond_0
    new-instance v3, Lcom/mediatek/bluetooth/bip/BipService$DatabaseQueryThread;

    invoke-direct {v3, p0}, Lcom/mediatek/bluetooth/bip/BipService$DatabaseQueryThread;-><init>(Lcom/mediatek/bluetooth/bip/BipService;)V

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mDatabaseQueryThread:Lcom/mediatek/bluetooth/bip/BipService$DatabaseQueryThread;

    .line 1315
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mDatabaseQueryThread:Lcom/mediatek/bluetooth/bip/BipService$DatabaseQueryThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1318
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mDatabaseQueryThread:Lcom/mediatek/bluetooth/bip/BipService$DatabaseQueryThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 1319
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mDatabaseQueryThread:Lcom/mediatek/bluetooth/bip/BipService$DatabaseQueryThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    :goto_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1

    .line 1326
    const-string v3, "BipService"

    const-string v4, "mCursor is null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :goto_2
    const-string v3, "BipService"

    const-string v4, "leave executeJob"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1320
    :catch_0
    move-exception v2

    .line 1321
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v3, "BipService"

    const-string v4, "mDatabaseQueryThread close error."

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1328
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/mediatek/bluetooth/bip/BipService;->mBipiState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1330
    sget v3, Lcom/mediatek/bluetooth/bip/BipService;->mBipiNotificationId:I

    if-ge v3, v6, :cond_2

    .line 1331
    sget v3, Lcom/mediatek/bluetooth/bip/BipService;->mBipiNotificationId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/mediatek/bluetooth/bip/BipService;->mBipiNotificationId:I

    .line 1336
    :goto_3
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1338
    .local v0, Id:I
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    const-string v5, "uri"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mUri:Landroid/net/Uri;

    .line 1339
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    const-string v5, "data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectPath:Ljava/lang/String;

    .line 1340
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    const-string v5, "mime"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectMime:Ljava/lang/String;

    .line 1341
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    const-string v5, "total"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectSize:Ljava/lang/String;

    .line 1344
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    const-string v5, "data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectName:Ljava/lang/String;

    .line 1345
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectName:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectName:Ljava/lang/String;

    .line 1347
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    const-string v5, "peer_addr"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;

    .line 1348
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    const-string v5, "peer_name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteDevName:Ljava/lang/String;

    .line 1351
    sget-object v3, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorJobUri:Landroid/net/Uri;

    .line 1352
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/bip/BipService;->extractContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorValues:Landroid/content/ContentValues;

    .line 1354
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorValues:Landroid/content/ContentValues;

    const-string v4, "state"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1355
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorJobUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1358
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1360
    const-string v3, "BipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const-string v3, "BipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BipService;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const-string v3, "BipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Addr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const-string v3, "BipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteDevName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.mediatek.bluetooth.bipitransmitting.action.TRANSMISSION_UPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1367
    .local v1, bIntent:Landroid/content/Intent;
    const-string v3, "com.mediatek.bluetooth.bipitransmitting.extra.NOTIFICATION_ID"

    add-int v4, v6, v0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1368
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1373
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    add-int v4, v6, v0

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1374
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiGetCapabilityReq(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 1334
    .end local v0           #Id:I
    .end local v1           #bIntent:Landroid/content/Intent;
    :cond_2
    const v3, 0x1c9c381

    sput v3, Lcom/mediatek/bluetooth/bip/BipService;->mBipiNotificationId:I

    goto/16 :goto_3

    .line 1377
    :cond_3
    const-string v3, "BipService"

    const-string v4, "Job table is empty"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1379
    sput v8, Lcom/mediatek/bluetooth/bip/BipService;->mBipiState:I

    .line 1380
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiDisable()Z

    goto/16 :goto_2
.end method

.method private extractContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1760
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1762
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1764
    const-string v1, "type"

    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1766
    const-string v1, "state"

    const-string v2, "state"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1768
    const-string v1, "result"

    const-string v2, "result"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    const-string v1, "name"

    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    const-string v1, "uri"

    const-string v2, "uri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    const-string v1, "data"

    const-string v2, "data"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    const-string v1, "mime"

    const-string v2, "mime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    const-string v1, "peer_name"

    const-string v2, "peer_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    const-string v1, "peer_addr"

    const-string v2, "peer_addr"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    const-string v1, "total"

    const-string v2, "total"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1784
    const-string v1, "done"

    const-string v2, "done"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1786
    const-string v1, "creation"

    const-string v2, "creation"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1788
    const-string v1, "modified"

    const-string v2, "modified"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1791
    return-object v0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x7

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1148
    const-string v2, "action"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1149
    .local v0, action:Ljava/lang/String;
    const-string v2, "BipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseIntent GET action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    if-nez v0, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    const-string v2, "com.mediatek.bluetooth.bipiservice.action.SEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1155
    const-string v2, "BipService"

    const-string v3, "ACTION_SEND"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1157
    const/4 v2, 0x4

    sput v2, Lcom/mediatek/bluetooth/bip/BipService;->mBipiState:I

    .line 1158
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v8, v10}, Lcom/mediatek/bluetooth/bip/BipService;->sendStateChangedBroadcast(Landroid/content/Context;ZI)V

    .line 1159
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorImageObject:Lcom/mediatek/bluetooth/bip/BipImage;

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiPushImage(Ljava/lang/String;Lcom/mediatek/bluetooth/bip/BipImage;)Z

    goto :goto_0

    .line 1161
    :cond_2
    const-string v2, "com.mediatek.bluetooth.bppmanager.action.BIPI_AUTH_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1162
    const-string v2, "BipService"

    const-string v3, "ACTION_BIPI_AUTH_INFO"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    new-instance v1, Lcom/mediatek/bluetooth/bip/AuthInfo;

    const-string v2, "com.mediatek.bluetooth.bipiservice.extra.EXTRA_AUTH_USERID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.bluetooth.bipiservice.extra.EXTRA_AUTH_PASSWD"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v8, v2, v3}, Lcom/mediatek/bluetooth/bip/AuthInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1164
    .local v1, aobj:Lcom/mediatek/bluetooth/bip/AuthInfo;
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    invoke-virtual {v2, v1, v8}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipAuthRsp(Lcom/mediatek/bluetooth/bip/AuthInfo;Z)Z

    goto :goto_0

    .line 1166
    .end local v1           #aobj:Lcom/mediatek/bluetooth/bip/AuthInfo;
    :cond_3
    const-string v2, "com.mediatek.bluetooth.bipiservice.action.BIPI_CANCEL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1167
    const-string v2, "BipService"

    const-string v3, "ACTION_BIPI_CANCEL"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1169
    const/4 v2, 0x6

    sput v2, Lcom/mediatek/bluetooth/bip/BipService;->mBipiState:I

    .line 1170
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiDisconnect(Ljava/lang/String;)Z

    goto :goto_0

    .line 1173
    :cond_4
    const-string v2, "com.mediatek.bluetooth.bipiservice.action.CANCEL_PENDING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1174
    const-string v2, "BipService"

    const-string v3, "ACTION_CANCEL_PENDING"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1176
    :cond_5
    const-string v2, "com.mediatek.bluetooth.bipiservice.action.BIP_DISABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1177
    const-string v2, "BipService"

    const-string v3, "ACTION_BIP_DISABLE"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    sget-boolean v2, Lcom/mediatek/bluetooth/bip/BipService;->mHasStarted:Z

    if-eqz v2, :cond_8

    .line 1181
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type between ? and ? AND state = ?"

    new-array v5, v10, [Ljava/lang/String;

    const/16 v6, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/16 v6, 0x1d

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1191
    sget v2, Lcom/mediatek/bluetooth/bip/BipService;->mBipiState:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_6

    .line 1192
    sput v12, Lcom/mediatek/bluetooth/bip/BipService;->mBipiState:I

    .line 1193
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiDisconnect(Ljava/lang/String;)Z

    .line 1194
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v8, v10}, Lcom/mediatek/bluetooth/bip/BipService;->sendStateChangedBroadcast(Landroid/content/Context;ZI)V

    .line 1196
    :cond_6
    sget v2, Lcom/mediatek/bluetooth/bip/BipService;->mBiprState:I

    if-ge v2, v11, :cond_7

    .line 1197
    sput v12, Lcom/mediatek/bluetooth/bip/BipService;->mBiprState:I

    .line 1198
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprDisconnect()Z

    .line 1199
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v9, v3}, Lcom/mediatek/bluetooth/bip/BipService;->sendStateChangedBroadcast(Landroid/content/Context;ZI)V

    .line 1201
    :cond_7
    const/16 v2, 0x9

    sput v2, Lcom/mediatek/bluetooth/bip/BipService;->mBiprState:I

    .line 1202
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprDisable()Z

    goto/16 :goto_0

    .line 1206
    :cond_8
    const-string v2, "BipService"

    const-string v3, "Disable BIPR before it was enabled"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1209
    :cond_9
    const-string v2, "com.mediatek.bluetooth.bppmanager.action.BIPR_AUTH_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1210
    const-string v2, "BipService"

    const-string v3, "ACTION_BIPR_AUTH_INFO"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    new-instance v1, Lcom/mediatek/bluetooth/bip/AuthInfo;

    const-string v2, "com.mediatek.bluetooth.bipiservice.extra.EXTRA_AUTH_USERID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.bluetooth.bipiservice.extra.EXTRA_AUTH_PASSWD"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v8, v2, v3}, Lcom/mediatek/bluetooth/bip/AuthInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1212
    .restart local v1       #aobj:Lcom/mediatek/bluetooth/bip/AuthInfo;
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    invoke-virtual {v2, v1, v9}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipAuthRsp(Lcom/mediatek/bluetooth/bip/AuthInfo;Z)Z

    goto/16 :goto_0

    .line 1214
    .end local v1           #aobj:Lcom/mediatek/bluetooth/bip/AuthInfo;
    :cond_a
    const-string v2, "com.mediatek.bluetooth.bipiservice.action.BIPR_CANCEL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1215
    const-string v2, "BipService"

    const-string v3, "ACTION_BIPR_CANCEL"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    sput v11, Lcom/mediatek/bluetooth/bip/BipService;->mBiprState:I

    .line 1217
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprDisconnect()Z

    goto/16 :goto_0

    .line 1220
    :cond_b
    const-string v2, "com.mediatek.bluetooth.bipiservice.action.RECEIVE_ACCEPT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1221
    const-string v2, "alwaysAccept"

    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/mediatek/bluetooth/bip/BipService;->mAlwaysAccept:Z

    .line 1222
    const-string v2, "BipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_RECEIVE_ACCEPT and always Accept is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/mediatek/bluetooth/bip/BipService;->mAlwaysAccept:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipService;->biprAccept()V

    goto/16 :goto_0

    .line 1231
    :cond_c
    const-string v2, "com.mediatek.bluetooth.bipiservice.action.RECEIVE_REJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1232
    const-string v2, "BipService"

    const-string v3, "ACTION_RECEIVE_REJECT"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1234
    sput v11, Lcom/mediatek/bluetooth/bip/BipService;->mBiprState:I

    .line 1235
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprDisconnect()Z

    goto/16 :goto_0

    .line 1237
    :cond_d
    const-string v2, "com.mediatek.bluetooth.bipiservice.action.RECEIVE_RESTORE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1238
    const-string v2, "BipService"

    const-string v3, "ACTION_RECEIVE_REJECT"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectSize:I

    div-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v9, v4}, Lcom/mediatek/bluetooth/bip/BipService;->createBipNotificationT(JII)V

    goto/16 :goto_0
.end method

.method private releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 2
    .parameter "mWakeLock"

    .prologue
    .line 1129
    if-eqz p1, :cond_0

    .line 1130
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    const-string v0, "BipService"

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1135
    :cond_0
    return-void
.end method

.method private sendStateChangedBroadcast(Landroid/content/Context;ZI)V
    .locals 5
    .parameter "context"
    .parameter "isResponder"
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1705
    const/4 v0, 0x0

    .line 1707
    .local v0, intent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 1738
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    .line 1740
    if-eqz p2, :cond_2

    .line 1741
    const-string v2, "android.bluetooth.profilemanager.extra.PROFILE"

    sget-object v3, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_BIP_Responder:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1742
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteBtAddr:Ljava/lang/String;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteBtAddr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1753
    :goto_1
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1755
    :cond_1
    return-void

    .line 1710
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1711
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1712
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1717
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1718
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1719
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1724
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1725
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1726
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1731
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1732
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1733
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1747
    :cond_2
    const-string v2, "android.bluetooth.profilemanager.extra.PROFILE"

    sget-object v3, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_BIP_Initiator:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1748
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    :cond_3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1707
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 1075
    const-string v1, "BipService"

    const-string v2, "BipService onBind"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1078
    .local v0, action:Ljava/lang/String;
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onBind() action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const-class v1, Landroid/bluetooth/IBluetoothBipi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBluetoothBipiStub:Landroid/bluetooth/IBluetoothBipi$Stub;

    .line 1087
    :goto_0
    return-object v1

    .line 1083
    :cond_0
    const-class v1, Landroid/bluetooth/IBluetoothBipr;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBluetoothBiprStub:Landroid/bluetooth/IBluetoothBipr$Stub;

    goto :goto_0

    .line 1087
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 988
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 989
    const-string v1, "BipService"

    const-string v2, "BipService onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 993
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1001
    sget-boolean v1, Lcom/mediatek/bluetooth/bip/BipService;->mHasStarted:Z

    if-nez v1, :cond_0

    .line 1003
    const-string v1, "BipService"

    const-string v2, "Creating BIPI Service......"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    sput-boolean v4, Lcom/mediatek/bluetooth/bip/BipService;->mHasStarted:Z

    .line 1005
    const/16 v1, 0x9

    sput v1, Lcom/mediatek/bluetooth/bip/BipService;->mBipiState:I

    .line 1006
    const/16 v1, 0xa

    sput v1, Lcom/mediatek/bluetooth/bip/BipService;->mBiprState:I

    .line 1009
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    .line 1010
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1011
    new-instance v1, Lcom/mediatek/bluetooth/bip/BipService$BipiContentObserver;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/bip/BipService$BipiContentObserver;-><init>(Lcom/mediatek/bluetooth/bip/BipService;)V

    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mObserver:Lcom/mediatek/bluetooth/bip/BipService$BipiContentObserver;

    .line 1012
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService;->mObserver:Lcom/mediatek/bluetooth/bip/BipService$BipiContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1014
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->initiatorWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/bip/BipService;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 1015
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->responderWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/bip/BipService;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 1016
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->powerManager:Landroid/os/PowerManager;

    .line 1018
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->powerManager:Landroid/os/PowerManager;

    const-string v2, "BipService"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->initiatorWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1019
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->powerManager:Landroid/os/PowerManager;

    const-string v2, "BipService"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->responderWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1023
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 1026
    new-instance v1, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    .line 1027
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->enable()Z

    .line 1040
    new-instance v1, Landroid/media/MediaScannerConnection;

    new-instance v2, Lcom/mediatek/bluetooth/bip/BipService$6;

    invoke-direct {v2, p0}, Lcom/mediatek/bluetooth/bip/BipService$6;-><init>(Lcom/mediatek/bluetooth/bip/BipService;)V

    invoke-direct {v1, p0, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 1048
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1052
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1053
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->nReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->nFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1056
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    const-string v2, "recvPath"

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprEnable(Ljava/lang/String;)Z

    .line 1057
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/SystemUtils;->getReceivedFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->setRecvPath(Ljava/lang/String;)V

    .line 1070
    :goto_0
    return-void

    .line 1060
    :cond_0
    const-string v1, "BipService"

    const-string v2, "ERROR, BIPI has already created"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 1067
    :cond_1
    const-string v1, "BipService"

    const-string v2, "DISABLE before ENABLE"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1111
    const-string v0, "BipService"

    const-string v1, "BipService onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->initiatorWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/bip/BipService;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 1113
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->responderWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/bip/BipService;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 1115
    sget-boolean v0, Lcom/mediatek/bluetooth/bip/BipService;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService;->mObserver:Lcom/mediatek/bluetooth/bip/BipService$BipiContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1118
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1119
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->nReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1120
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->disable()V

    .line 1121
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->sendStateChangedBroadcast(Landroid/content/Context;ZI)V

    .line 1123
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1124
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipService;->closeService()V

    .line 1126
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 1094
    const-string v1, "BipService"

    const-string v2, "BipService onStartCommand"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 1097
    .local v0, retCode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1098
    sput p3, Lcom/mediatek/bluetooth/bip/BipService;->mStartId:I

    .line 1100
    if-eqz p1, :cond_0

    .line 1101
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/bip/BipService;->parseIntent(Landroid/content/Intent;)V

    .line 1104
    :cond_0
    return v0
.end method
