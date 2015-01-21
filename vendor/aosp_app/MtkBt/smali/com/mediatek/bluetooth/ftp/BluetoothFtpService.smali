.class public Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;
.super Landroid/app/Service;
.source "BluetoothFtpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;
    }
.end annotation


# static fields
.field private static final ABNORMAL:I = 0xe

.field private static final DEBUG:Z = true

.field static final DEFAULT_ROOT:Ljava/lang/String; = "/"

.field static final DEFAULT_SDCARD_PATH:Ljava/lang/String; = "/mnt/sdcard/"

.field protected static final DEVICE_NAME:Ljava/lang/String; = "device_name"

.field private static final DISABLED:I = 0xd

.field private static final DISABLING:I = 0xc

.field private static final ENABLED:I = 0xb

.field private static final ENABLING:I = 0xa

.field private static final FTPC_ABORT:I = 0x139e

.field protected static final FTPC_ACTIVATED_NOTIFY:I = 0x5b8d83

.field private static final FTPC_CONNECT:I = 0x139c

.field private static final FTPC_CREATE_FOLDER:I = 0x13a3

.field private static final FTPC_DELETE:I = 0x13a6

.field private static final FTPC_DISCONNECT:I = 0x139d

.field private static final FTPC_GOBACKWARD:I = 0x13a1

.field private static final FTPC_GOFORWARD:I = 0x13a0

.field private static final FTPC_GOTOROOT:I = 0x13a2

.field private static final FTPC_REFRESH:I = 0x139f

.field private static final FTPC_START_PULL:I = 0x13a4

.field private static final FTPC_START_PUSH:I = 0x13a5

.field protected static final FTPS_AUTHORIZE_NOTIFY:I = 0x5b8d81

.field private static final FTPS_AUTHORIZE_RES:I = 0x1394

.field protected static final FTPS_CONNECTED_NOTIFY:I = 0x5b8d82

.field private static final FTPS_DISABLE:I = 0x1393

.field private static final FTPS_ENABLE:I = 0x1392

.field private static final FTP_BT_OFF:I = 0x138a

.field private static final FTP_CLIENT:I = 0x13ed

.field private static final FTP_ID_START:I = 0x5b8d80

.field private static final FTP_INTERNAL_BASE:I = 0x1388

.field private static final FTP_SERVER:I = 0x13ec

.field private static final FTP_SHOW_TOAST:I = 0x1389

.field private static final FTP_UPDATE_MEDIA_STORE:I = 0x138b

.field private static final FTP_UPDATE_NOTIFICATION:I = 0x138c

.field private static final INTERNAL_KEY_PROGRESS:Ljava/lang/String; = "progress"

.field private static final INTERNAL_KEY_STR_DATA:Ljava/lang/String; = "string_data"

.field private static final INTERNAL_KEY_TOTAL:Ljava/lang/String; = "total"

.field private static final MTK_2SDCARD_SWAP:Z = false

.field private static final MTK_EMMC_SUPPORT:Z = true

.field protected static final NOTIFY_TYPE:Ljava/lang/String; = "notify_type"

.field static final SERVER_DISCONNECTED:Ljava/lang/String; = "server_disconnected"

.field private static final SERVER_KEY_ENABLE:Ljava/lang/String; = "server_enable"

.field private static final SERVER_KEY_PERMISSION:Ljava/lang/String; = "server_permission"

.field private static final SERVER_SETTINGS:Ljava/lang/String; = "ftp_server_settings"

.field private static final SERVICE_THREAD:Ljava/lang/String; = "BtFtpServiceThread"

.field private static final TAG:Ljava/lang/String; = "BluetoothFtpService"

.field static final XML_PATH:Ljava/lang/String; = "/data/@btmtk/ftpc_folder_obj.xml"


# instance fields
.field private mAbortByUser:Z

.field private mBtOffFilter:Landroid/content/IntentFilter;

.field private mBtOffReceiver:Landroid/content/BroadcastReceiver;

.field private mClientCurrentPath:Ljava/lang/String;

.field private mClientNextPath:Ljava/lang/String;

.field private mClientPulledLocalPath:Ljava/lang/String;

.field private mClientState:I

.field private mClientTransferName:Ljava/lang/String;

.field private mCurrentClient:Landroid/bluetooth/BluetoothDevice;

.field private mCurrentServer:Landroid/bluetooth/BluetoothDevice;

.field private mDisconnectByUser:Z

.field private final mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;

.field private final mFtpClientCallback:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFtpClientCtrl:Landroid/bluetooth/IBluetoothFtpCtrl$Stub;

.field private final mFtpServer:Landroid/bluetooth/IBluetoothFtpServer$Stub;

.field private final mFtpServerCallback:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothFtpServerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFtpServerCtrl:Landroid/bluetooth/IBluetoothFtpCtrl$Stub;

.field private final mFtpServerNotify:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify$Stub;

.field private mNM:Landroid/app/NotificationManager;

.field private mNativeData:I

.field private mNeedUpdatePref:Z

.field private mPM:Landroid/os/PowerManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSDRemovalFilter:Landroid/content/IntentFilter;

.field private mSDRemovalReceiver:Landroid/content/BroadcastReceiver;

.field private mSDUnmounting:Z

.field private mServerPermission:I

.field private mServerPreferences:Landroid/content/SharedPreferences;

.field private mServerState:I

.field private mServerTransferName:Ljava/lang/String;

.field private mServiceCallback:Landroid/os/Handler$Callback;

.field private mServiceHandler:Landroid/os/Handler;

.field private mServiceInitiated:Z

.field private mServiceThread:Landroid/os/HandlerThread;

.field private mSocketListener:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;

.field private mTransferringCursor:Landroid/database/Cursor;

.field private final mTransferringProjection:[Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1965
    const-string v0, "extftp_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1966
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 173
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "progress"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "direction"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringProjection:[Ljava/lang/String;

    .line 182
    iput-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mResolver:Landroid/content/ContentResolver;

    .line 185
    iput-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    .line 188
    iput-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNM:Landroid/app/NotificationManager;

    .line 191
    iput-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mPM:Landroid/os/PowerManager;

    .line 194
    iput-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 200
    iput-boolean v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSDUnmounting:Z

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSDRemovalFilter:Landroid/content/IntentFilter;

    .line 206
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSDRemovalReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mBtOffFilter:Landroid/content/IntentFilter;

    .line 319
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$2;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mBtOffReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceCallback:Landroid/os/Handler$Callback;

    .line 489
    iput-boolean v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceInitiated:Z

    .line 492
    iput-boolean v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNeedUpdatePref:Z

    .line 499
    iput-boolean v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mDisconnectByUser:Z

    .line 500
    iput-boolean v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mAbortByUser:Z

    .line 536
    iput-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSocketListener:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;

    .line 543
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCtrl:Landroid/bluetooth/IBluetoothFtpCtrl$Stub;

    .line 612
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$5;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$5;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServerCtrl:Landroid/bluetooth/IBluetoothFtpCtrl$Stub;

    .line 638
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServerCallback:Landroid/os/RemoteCallbackList;

    .line 642
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer$Stub;

    .line 704
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$7;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$7;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServerNotify:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify$Stub;

    .line 722
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCallback:Landroid/os/RemoteCallbackList;

    .line 726
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerTransferName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverEnableReqNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverDisableReqNative()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverAuthorizeRspNative(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILjava/lang/String;Z)Landroid/app/Notification;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->genFtpNotification(ILjava/lang/String;Z)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNM:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILandroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->handleStateChanged(ILandroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentServer:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentServer:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->startClientTransfer(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientTransferName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mAbortByUser:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->handleClientTransferring(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->handleClientTransferResult(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->showTextToast(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateMediaStore(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateNotification(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->prepareListentoSocketNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->listentoSocketNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->stopListentoSocketNative()V

    return-void
.end method

.method static synthetic access$3100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientCurrentPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientCurrentPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mDisconnectByUser:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientDisconnectReqNative()V

    return-void
.end method

.method static synthetic access$3400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverDisconnectReqNative()V

    return-void
.end method

.method static synthetic access$3500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServerCallback:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postServerEvent(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPermission:I

    return v0
.end method

.method static synthetic access$3702(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPermission:I

    return p1
.end method

.method static synthetic access$3800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->setPermissionNative(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverAbortReqNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCallback:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientConnectReqNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postClientEvent(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientCancelConnectNative()V

    return-void
.end method

.method static synthetic access$4400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientRefreshReqNative()V

    return-void
.end method

.method static synthetic access$4500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printWrn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientNextPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientNextPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientGoForwardReqNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientGoBackwardReqNative()V

    return-void
.end method

.method static synthetic access$4900(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientGoToRootReqNative()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    return v0
.end method

.method static synthetic access$5000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientCreateFolderReqNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    return p1
.end method

.method static synthetic access$5100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientDeleteReqNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientAbortReqNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clearService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V

    return-void
.end method

.method static synthetic access$902(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNeedUpdatePref:Z

    return p1
.end method

.method private cbClientBrowsed(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter cbClientBrowsed(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1903
    const/16 v1, 0xcb

    iput v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    .line 1904
    const/16 v1, 0x28

    invoke-direct {p0, v1, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postClientEvent(II)I

    move-result v0

    .line 1906
    .local v0, postNum:I
    if-gtz v0, :cond_0

    if-nez p1, :cond_0

    .line 1907
    const/16 v1, 0xd0

    iput v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    .line 1909
    :cond_0
    return-void
.end method

.method private cbClientConnected()V
    .locals 2

    .prologue
    const/16 v1, 0x23

    .line 1877
    const-string v0, "Enter cbClientConnected()"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1878
    const/16 v0, 0xce

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    .line 1880
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postClientEvent(II)I

    .line 1881
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(ILandroid/os/Bundle;)V

    .line 1882
    return-void
.end method

.method private cbClientCreateFolderFailed()V
    .locals 2

    .prologue
    .line 1956
    const/16 v0, 0xcb

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    .line 1957
    const/16 v0, 0x30

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postClientEvent(II)I

    .line 1958
    return-void
.end method

.method private cbClientDeleted(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1946
    if-eqz p1, :cond_0

    .line 1947
    const/16 v0, 0xcb

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    .line 1951
    :goto_0
    const/16 v0, 0x2e

    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postClientEvent(II)I

    .line 1952
    return-void

    .line 1949
    :cond_0
    const/16 v0, 0xce

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    goto :goto_0
.end method

.method private cbClientDisconnected()V
    .locals 5

    .prologue
    const/16 v4, 0x31

    .line 1886
    const-string v2, "Enter cbClientDisconnected()"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1887
    const/4 v1, 0x0

    .local v1, rsp:I
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    .line 1888
    .local v0, prevState:I
    iget-boolean v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mDisconnectByUser:Z

    if-eqz v2, :cond_0

    .line 1889
    const/4 v1, 0x2

    .line 1896
    :goto_0
    const/16 v2, 0xc9

    iput v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    .line 1897
    invoke-direct {p0, v4, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postClientEvent(II)I

    .line 1898
    invoke-direct {p0, v4, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V

    .line 1899
    return-void

    .line 1891
    :cond_0
    iget v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    const/16 v3, 0xca

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private cbClientPulled(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1931
    const/16 v0, 0x2a

    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V

    .line 1932
    return-void
.end method

.method private cbClientPulling(JJ)V
    .locals 2
    .parameter "progress"
    .parameter "total"

    .prologue
    .line 1924
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1925
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "progress"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1926
    const-string v1, "total"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1927
    const/16 v1, 0x29

    invoke-direct {p0, v1, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(ILandroid/os/Bundle;)V

    .line 1928
    return-void
.end method

.method private cbClientPushed(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1942
    const/16 v0, 0x26

    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V

    .line 1943
    return-void
.end method

.method private cbClientPushing(JJ)V
    .locals 2
    .parameter "progress"
    .parameter "total"

    .prologue
    .line 1935
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1936
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "progress"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1937
    const-string v1, "total"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1938
    const/16 v1, 0x25

    invoke-direct {p0, v1, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(ILandroid/os/Bundle;)V

    .line 1939
    return-void
.end method

.method private cbClientSetpathed(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter cbClientSetpathed(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1913
    if-nez p1, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientNextPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientCurrentPath:Ljava/lang/String;

    .line 1915
    const/16 v0, 0xce

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    .line 1920
    :goto_0
    const/16 v0, 0x2c

    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postClientEvent(II)I

    .line 1921
    return-void

    .line 1917
    :cond_0
    const/16 v0, 0xcb

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    goto :goto_0
.end method

.method private cbServerAuthorizeInd(Ljava/lang/String;)V
    .locals 6
    .parameter "addr"

    .prologue
    .line 1495
    const-string v4, "Enter cbServerAuthorizeInd()"

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1496
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1498
    .local v0, bt:Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1500
    .local v1, data:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1501
    const-string v4, "Bluetooth is not supported"

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 1518
    :goto_0
    return-void

    .line 1505
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1506
    .local v2, deviceAddr:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1507
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1508
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;

    .line 1509
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1510
    .local v3, deviceName:Ljava/lang/String;
    const-string v4, "string_data"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    const/16 v4, 0x66

    iput v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    .line 1512
    const/4 v4, 0x3

    invoke-direct {p0, v4, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1514
    .end local v3           #deviceName:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid MAC address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 1515
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverAuthorizeRspNative(Z)V

    goto :goto_0
.end method

.method private cbServerConnectInd(Ljava/lang/String;)V
    .locals 6
    .parameter "addr"

    .prologue
    .line 1522
    const-string v4, "Enter cbServerConnectInd()"

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1523
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1525
    .local v0, bt:Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1527
    .local v1, data:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1528
    const-string v4, "Bluetooth is not supported"

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 1545
    :goto_0
    return-void

    .line 1532
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1533
    .local v2, deviceAddr:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1534
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1536
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1537
    .local v3, deviceName:Ljava/lang/String;
    const-string v4, "string_data"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const/16 v4, 0x67

    iput v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    .line 1539
    const/4 v4, 0x6

    invoke-direct {p0, v4, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1541
    .end local v3           #deviceName:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid MAC address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 1542
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverDisconnectReqNative()V

    goto :goto_0
.end method

.method private cbServerDisableResult(Z)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1483
    const-string v0, "Enter cbServerDisableResult()"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1484
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    .line 1486
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateServerEnablePreferenceValue(Z)V

    .line 1487
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postServerEvent(I)I

    .line 1490
    const/16 v0, 0x17

    const/16 v1, 0x67

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V

    .line 1491
    return-void
.end method

.method private cbServerDisconnectInd()V
    .locals 2

    .prologue
    .line 1549
    const-string v1, "Enter cbServerDisconnectInd()"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1550
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    .line 1551
    .local v0, prevState:I
    const/16 v1, 0x65

    iput v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    .line 1552
    const/16 v1, 0x17

    invoke-direct {p0, v1, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V

    .line 1553
    return-void
.end method

.method private cbServerEnableResult(Z)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v0, 0x1

    .line 1467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter cbServerEnableResult(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1468
    if-eqz p1, :cond_1

    .line 1469
    const/16 v1, 0x65

    iput v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    .line 1471
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateServerEnablePreferenceValue(Z)V

    .line 1472
    iget v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPermission:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->setPermissionNative(Z)Z

    .line 1473
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postServerEvent(I)I

    .line 1479
    :goto_1
    return-void

    .line 1472
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1476
    :cond_1
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    .line 1477
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postServerEvent(I)I

    goto :goto_1
.end method

.method private cbServerEndPushing(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End pushing, res: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1589
    if-nez p1, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerTransferName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->scanPath(Ljava/lang/String;)V

    .line 1592
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerTransferName:Ljava/lang/String;

    .line 1594
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1595
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1597
    :cond_1
    return-void
.end method

.method private cbServerEndTransferring()V
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1567
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerTransferName:Ljava/lang/String;

    .line 1568
    return-void
.end method

.method private cbServerObjectDeleted(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 1601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1602
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1603
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "string_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const/16 v1, 0x138b

    invoke-direct {p0, v1, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(ILandroid/os/Bundle;)V

    .line 1605
    return-void
.end method

.method private cbServerStartPushing(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 1572
    const/4 v0, 0x0

    .line 1573
    .local v0, scanPath:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v1, "/mnt/sdcard/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1574
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mnt/sdcard/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1581
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start pushing, path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scan path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1582
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerTransferName:Ljava/lang/String;

    .line 1583
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1584
    return-void

    .line 1578
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private cbServerStartTransferring(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start transferring, filename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1558
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerTransferName:Ljava/lang/String;

    .line 1559
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1560
    return-void
.end method

.method private native cleanServiceNative()V
.end method

.method private declared-synchronized clearService()Z
    .locals 10

    .prologue
    const/16 v9, 0xc9

    const/16 v8, 0x64

    const/4 v4, 0x1

    .line 1058
    monitor-enter p0

    :try_start_0
    const-string v5, "clearService()"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1060
    const/4 v3, 0x0

    .line 1061
    .local v3, timeout:Z
    const/4 v0, 0x0

    .line 1063
    .local v0, cnt:I
    const/16 v5, 0x13ec

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V

    .line 1064
    const/16 v5, 0x13ed

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSDRemovalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1076
    :try_start_2
    iget v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    if-eq v5, v9, :cond_0

    iget v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 1078
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mDisconnectByUser:Z

    .line 1079
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientDisconnectReqNative()V

    .line 1083
    :cond_0
    iget v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    if-eq v5, v8, :cond_1

    .line 1084
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNeedUpdatePref:Z

    .line 1085
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverDisableReqNative()V

    .line 1089
    :cond_1
    :goto_0
    iget v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    if-ne v5, v9, :cond_2

    iget v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    if-eq v5, v8, :cond_3

    .line 1090
    :cond_2
    const/16 v5, 0x12c

    if-lt v0, v5, :cond_7

    .line 1091
    const/4 v3, 0x1

    .line 1104
    :cond_3
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSocketListener:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_4

    .line 1106
    :try_start_3
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSocketListener:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;->shutdown()V

    .line 1107
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSocketListener:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V

    .line 1108
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSocketListener:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1114
    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    .line 1115
    :try_start_4
    iget v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    if-eq v5, v9, :cond_5

    .line 1116
    const-string v5, "BluetoothFtpService"

    const-string v6, "[BT][FTP] Waiting FTPC_TPDISCONNECT_IND time-out. Force clear client context."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->forceClearClientNative()V

    .line 1120
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->cbClientDisconnected()V

    .line 1123
    :cond_5
    iget v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    if-eq v5, v8, :cond_6

    .line 1124
    const-string v5, "BluetoothFtpService"

    const-string v6, "[BT][FTP] Waiting FTPS_DEREGISTER_SERVER_CNF time-out. Force clear server context."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->forceClearServerNative()V

    .line 1128
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->cbServerDisableResult(Z)V

    .line 1132
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientDisableReqNative()V

    .line 1133
    const/16 v5, 0xc8

    iput v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    .line 1134
    const/16 v5, 0x13ed

    const/16 v6, 0xd

    invoke-direct {p0, v5, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V

    .line 1135
    const/16 v5, 0x13ec

    const/16 v6, 0xd

    invoke-direct {p0, v5, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1137
    :goto_2
    monitor-exit p0

    return v4

    .line 1068
    :catch_0
    move-exception v2

    .line 1069
    .local v2, iae:Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v4, "BluetoothFtpService"

    const-string v5, "[BT][FTP] BT power-off before FTP service is ready."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/16 v4, 0x13ec

    const/16 v5, 0xd

    invoke-direct {p0, v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V

    .line 1071
    const/16 v4, 0x13ed

    const/16 v5, 0xd

    invoke-direct {p0, v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1072
    const/4 v4, 0x0

    goto :goto_2

    .line 1096
    .end local v2           #iae:Ljava/lang/IllegalArgumentException;
    :cond_7
    const-wide/16 v5, 0x1e

    :try_start_6
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1100
    :goto_3
    add-int/lit8 v0, v0, 0x1e

    goto :goto_0

    .line 1097
    :catch_1
    move-exception v1

    .line 1098
    .local v1, e:Ljava/lang/Exception;
    :try_start_7
    const-string v5, "Waiting for client disconnect-ind was interrupted."

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 1058
    .end local v0           #cnt:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #timeout:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1109
    .restart local v0       #cnt:I
    .restart local v3       #timeout:Z
    :catch_2
    move-exception v1

    .line 1110
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_8
    const-string v5, "mSocketListener close error."

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method private native clientAbortReqNative()Z
.end method

.method private native clientCancelConnectNative()V
.end method

.method private native clientConnectReqNative(Ljava/lang/String;)V
.end method

.method private native clientCreateFolderReqNative(Ljava/lang/String;)V
.end method

.method private native clientDeleteReqNative(Ljava/lang/String;)V
.end method

.method private native clientDisableReqNative()V
.end method

.method private native clientDisconnectReqNative()V
.end method

.method private native clientEnableReqNative()Z
.end method

.method private native clientGoBackwardReqNative()V
.end method

.method private native clientGoForwardReqNative(Ljava/lang/String;)V
.end method

.method private native clientGoToRootReqNative()V
.end method

.method private native clientPullReqNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native clientPushReqNative(Ljava/lang/String;)Z
.end method

.method private native clientRefreshReqNative()V
.end method

.method private convertState(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 1310
    const/4 v0, -0x1

    .line 1311
    .local v0, ret:I
    sparse-switch p1, :sswitch_data_0

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 1339
    :goto_0
    return v0

    .line 1315
    :sswitch_0
    const/4 v0, 0x0

    .line 1316
    goto :goto_0

    .line 1321
    :sswitch_1
    const/4 v0, 0x1

    .line 1322
    goto :goto_0

    .line 1332
    :sswitch_2
    const/4 v0, 0x2

    .line 1333
    goto :goto_0

    .line 1311
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_2
        0xcc -> :sswitch_2
        0xcd -> :sswitch_2
        0xcf -> :sswitch_2
        0xd0 -> :sswitch_2
        0xd1 -> :sswitch_2
    .end sparse-switch
.end method

.method private endClientTransfer()V
    .locals 1

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1799
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1802
    :cond_0
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    packed-switch v0, :pswitch_data_0

    .line 1814
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1815
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    .line 1818
    :cond_1
    return-void

    .line 1806
    :pswitch_1
    const/16 v0, 0xcb

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    goto :goto_0

    .line 1802
    :pswitch_data_0
    .packed-switch 0xcc
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private native forceClearClientNative()V
.end method

.method private native forceClearServerNative()V
.end method

.method private genFtpNotification(ILjava/lang/String;Z)Landroid/app/Notification;
    .locals 15
    .parameter "type"
    .parameter "deviceName"
    .parameter "enableEffects"

    .prologue
    .line 1186
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1187
    .local v3, context:Landroid/content/Context;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1188
    .local v7, intent:Landroid/content/Intent;
    const/4 v9, 0x0

    .line 1189
    .local v9, noti:Landroid/app/Notification;
    const/4 v2, 0x0

    .line 1190
    .local v2, contentIntent:Landroid/app/PendingIntent;
    if-eqz p3, :cond_0

    const/4 v4, 0x3

    .line 1193
    .local v4, defaults:I
    :goto_0
    const/4 v6, -0x1

    .line 1194
    .local v6, icon_id:I
    const/4 v1, 0x0

    .local v1, clazz:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, ticker:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1196
    .local v8, msg:Ljava/lang/String;
    const v12, 0x5b8d81

    move/from16 v0, p1

    if-ne v0, v12, :cond_1

    .line 1197
    const v6, 0x1080080

    .line 1198
    const-class v12, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1199
    const v12, 0x7f070054

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1200
    const v12, 0x7f070055

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1201
    const v12, 0x7f070056

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1202
    const/16 v5, 0x10

    .line 1228
    .local v5, flags:I
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    const/high16 v13, 0x1000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "notify_type"

    move/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "device_name"

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1233
    new-instance v9, Landroid/app/Notification;

    .end local v9           #noti:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v9, v6, v10, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1234
    .restart local v9       #noti:Landroid/app/Notification;
    iget v12, v9, Landroid/app/Notification;->defaults:I

    or-int/2addr v12, v4

    iput v12, v9, Landroid/app/Notification;->defaults:I

    .line 1235
    iget v12, v9, Landroid/app/Notification;->flags:I

    or-int/2addr v12, v5

    iput v12, v9, Landroid/app/Notification;->flags:I

    .line 1236
    const/4 v12, 0x0

    const/high16 v13, 0x800

    invoke-static {p0, v12, v7, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1238
    invoke-virtual {v9, v3, v11, v8, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v12, v9

    .line 1240
    .end local v5           #flags:I
    :goto_2
    return-object v12

    .line 1190
    .end local v1           #clazz:Ljava/lang/String;
    .end local v4           #defaults:I
    .end local v6           #icon_id:I
    .end local v8           #msg:Ljava/lang/String;
    .end local v10           #ticker:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1204
    .restart local v1       #clazz:Ljava/lang/String;
    .restart local v4       #defaults:I
    .restart local v6       #icon_id:I
    .restart local v8       #msg:Ljava/lang/String;
    .restart local v10       #ticker:Ljava/lang/String;
    .restart local v11       #title:Ljava/lang/String;
    :cond_1
    const v12, 0x5b8d82

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 1205
    const v6, 0x7f020027

    .line 1206
    const-class v12, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1207
    const v12, 0x7f07005b

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1208
    const v12, 0x7f07005c

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1211
    const v12, 0x7f07005d

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1212
    const/16 v5, 0x10

    .restart local v5       #flags:I
    goto :goto_1

    .line 1214
    .end local v5           #flags:I
    :cond_2
    const v12, 0x5b8d83

    move/from16 v0, p1

    if-ne v0, v12, :cond_3

    .line 1215
    const v6, 0x7f02001a

    .line 1216
    const-class v12, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1217
    const v12, 0x7f070068

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1218
    const v12, 0x7f070069

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1221
    const v12, 0x7f07006a

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1222
    const/16 v5, 0x20

    .restart local v5       #flags:I
    goto/16 :goto_1

    .line 1225
    .end local v5           #flags:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private getAvailableFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "path"
    .parameter "name"

    .prologue
    .line 1270
    const/4 v2, 0x0

    .line 1271
    .local v2, ret:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v2

    .line 1288
    .end local v2           #ret:Ljava/lang/String;
    .local v3, ret:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1280
    .end local v3           #ret:Ljava/lang/String;
    .restart local v2       #ret:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0x3e8

    if-ge v1, v4, :cond_1

    .line 1281
    const-string v4, "(DUP %02d)%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1282
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move-object v3, v2

    .line 1288
    .end local v2           #ret:Ljava/lang/String;
    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1280
    .end local v3           #ret:Ljava/lang/String;
    .restart local v2       #ret:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private native getPremissionNative()Z
.end method

.method private getTransferringUri()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 1293
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    .line 1294
    const/4 v2, 0x0

    .line 1299
    :goto_0
    return-object v2

    .line 1296
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1297
    .local v1, id_idx:I
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1298
    .local v0, id:I
    sget-object v3, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$TransferringFile;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1299
    .local v2, uri:Landroid/net/Uri;
    goto :goto_0
.end method

.method private handleClientTransferResult(II)V
    .locals 6
    .parameter "msg"
    .parameter "res"

    .prologue
    const/16 v5, 0x2a

    .line 1754
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->getTransferringUri()Landroid/net/Uri;

    move-result-object v1

    .line 1755
    .local v1, updateUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1757
    .local v2, values:Landroid/content/ContentValues;
    if-nez v1, :cond_0

    .line 1758
    const-string v3, "handleClientTransferResult(), updateUri is null"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 1789
    :goto_0
    return-void

    .line 1762
    :cond_0
    const/16 v3, 0x26

    if-ne p1, v3, :cond_3

    .line 1763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pushed, result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1769
    :cond_1
    :goto_1
    if-nez p2, :cond_4

    .line 1770
    if-ne p1, v5, :cond_2

    .line 1771
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientTransferName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->scanPath(Ljava/lang/String;)V

    .line 1773
    :cond_2
    const-string v3, "status"

    const/16 v4, 0x16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1774
    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->nextClientTransfer(I)I

    move-result p2

    .line 1781
    :goto_2
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1782
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postClientEvent(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1784
    :catch_0
    move-exception v0

    .line 1785
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClientTransferResult(), Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 1786
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientDisconnectReqNative()V

    goto :goto_0

    .line 1764
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    if-ne p1, v5, :cond_1

    .line 1765
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pulled, result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1777
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->endClientTransfer()V

    .line 1778
    const-string v3, "status"

    const/16 v4, 0x17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private handleClientTransferring(ILandroid/os/Bundle;)V
    .locals 10
    .parameter "msg"
    .parameter "data"

    .prologue
    const-wide/16 v8, 0x0

    .line 1722
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->getTransferringUri()Landroid/net/Uri;

    move-result-object v5

    .line 1723
    .local v5, updateUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1726
    .local v6, values:Landroid/content/ContentValues;
    if-eqz v5, :cond_0

    if-nez p2, :cond_1

    .line 1727
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleClientTransferring(), updateUri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 1751
    :goto_0
    return-void

    .line 1731
    :cond_1
    const-string v7, "progress"

    invoke-virtual {p2, v7, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1732
    .local v1, progress:J
    const-string v7, "total"

    invoke-virtual {p2, v7, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1734
    .local v3, total:J
    const/16 v7, 0x25

    if-ne p1, v7, :cond_3

    .line 1735
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pushing, progress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", total: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1741
    :cond_2
    :goto_1
    :try_start_0
    const-string v7, "progress"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1742
    const-string v7, "total"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1743
    iget-object v7, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1745
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postClientEvent(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1747
    :catch_0
    move-exception v0

    .line 1748
    .local v0, ex:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleClientTransferring(), Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 1749
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientDisconnectReqNative()V

    goto :goto_0

    .line 1736
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    const/16 v7, 0x29

    if-ne p1, v7, :cond_2

    .line 1737
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pulling, progress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", total: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleStateChanged(ILandroid/bluetooth/BluetoothDevice;II)V
    .locals 5
    .parameter "role"
    .parameter "device"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v4, -0x1

    .line 1359
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.ftp.action.STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1362
    .local v0, intent:Landroid/content/Intent;
    const/16 v3, 0x13ec

    if-ne p1, v3, :cond_0

    .line 1379
    :goto_0
    return-void

    .line 1367
    :cond_0
    invoke-direct {p0, p3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->convertState(I)I

    move-result v2

    .line 1368
    .local v2, oldState:I
    invoke-direct {p0, p4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->convertState(I)I

    move-result v1

    .line 1369
    .local v1, newState:I
    if-eq v2, v4, :cond_1

    if-ne v1, v4, :cond_2

    .line 1370
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid states, from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    goto :goto_0

    .line 1374
    :cond_2
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1375
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1376
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1378
    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native initServiceNative()Z
.end method

.method private native listentoSocketNative()Z
.end method

.method private nextClientTransfer(I)I
    .locals 11
    .parameter "res"

    .prologue
    const/4 v10, 0x0

    .line 1674
    iget-object v8, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1676
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1677
    .local v7, values:Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->getTransferringUri()Landroid/net/Uri;

    move-result-object v6

    .line 1679
    .local v6, updateUri:Landroid/net/Uri;
    iget-boolean v8, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mAbortByUser:Z

    if-eqz v8, :cond_1

    .line 1680
    const-string v8, "User aborted between files."

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1681
    const-string v8, "status"

    const/16 v9, 0x17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1682
    iget-object v8, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v6, v7, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1684
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mAbortByUser:Z

    .line 1685
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->endClientTransfer()V

    .line 1686
    const/16 p1, 0x70

    .line 1718
    .end local v6           #updateUri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1689
    .restart local v6       #updateUri:Landroid/net/Uri;
    .restart local v7       #values:Landroid/content/ContentValues;
    .restart local p1
    :cond_1
    const-string v8, "status"

    const/16 v9, 0x15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1690
    iget-object v8, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v6, v7, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1693
    iget-object v8, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    const-string v9, "name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1694
    .local v3, nameIdx:I
    iget-object v8, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    const-string v9, "direction"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1696
    .local v1, directIdx:I
    iget-object v8, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1697
    .local v2, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1698
    .local v0, direct:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Next file to trnasfer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", direction: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1700
    const/16 v8, 0x1f

    if-ne v0, v8, :cond_2

    .line 1701
    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientTransferName:Ljava/lang/String;

    .line 1702
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientPushReqNative(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1703
    const/16 v8, 0x26

    const/16 v9, 0x44

    invoke-direct {p0, v8, v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V

    goto :goto_0

    .line 1706
    :cond_2
    const/16 v8, 0x1e

    if-ne v0, v8, :cond_0

    .line 1707
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientPulledLocalPath:Ljava/lang/String;

    .line 1708
    .local v4, path:Ljava/lang/String;
    invoke-direct {p0, v4, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->getAvailableFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1709
    .local v5, rename:Ljava/lang/String;
    invoke-direct {p0, v4, v2, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientPullReqNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v5, :cond_3

    .end local v2           #name:Ljava/lang/String;
    :goto_1
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientTransferName:Ljava/lang/String;

    goto/16 :goto_0

    .restart local v2       #name:Ljava/lang/String;
    :cond_3
    move-object v2, v5

    goto :goto_1

    .line 1714
    .end local v0           #direct:I
    .end local v1           #directIdx:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #nameIdx:I
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #rename:Ljava/lang/String;
    .end local v6           #updateUri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->endClientTransfer()V

    .line 1715
    const-string v8, "No file to transfer."

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private postClientEvent(II)I
    .locals 4
    .parameter "event"
    .parameter "param"

    .prologue
    .line 1826
    const/4 v2, 0x0

    .line 1829
    .local v2, ret:I
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCallback:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_1

    .line 1830
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1832
    .local v0, N:I
    move v2, v0

    .line 1834
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1836
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;->postEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1834
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1841
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1847
    .end local v0           #N:I
    .end local v1           #i:I
    :goto_2
    return v2

    .line 1844
    :cond_1
    const-string v3, "mFtpClientCallback is null"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    goto :goto_2

    .line 1837
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private postClientEvent(ILandroid/os/Bundle;)I
    .locals 4
    .parameter "event"
    .parameter "data"

    .prologue
    .line 1852
    const/4 v2, 0x0

    .line 1854
    .local v2, ret:I
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCallback:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_1

    .line 1855
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1857
    .local v0, N:I
    move v2, v0

    .line 1859
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1861
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;->postEventWithData(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1866
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1872
    .end local v0           #N:I
    .end local v1           #i:I
    :goto_2
    return v2

    .line 1869
    :cond_1
    const-string v3, "mFtpClientCallback is null"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    goto :goto_2

    .line 1862
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private postServerEvent(I)I
    .locals 5
    .parameter "event"

    .prologue
    .line 1441
    const/4 v2, 0x0

    .line 1442
    .local v2, ret:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postServerEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1444
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServerCallback:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_1

    .line 1445
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServerCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1447
    .local v0, N:I
    move v2, v0

    .line 1449
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1451
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServerCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothFtpServerCallback;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/bluetooth/IBluetoothFtpServerCallback;->postEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1456
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServerCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1462
    .end local v0           #N:I
    .end local v1           #i:I
    :goto_2
    return v2

    .line 1459
    :cond_1
    const-string v3, "mFtpServerCallback is null"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    goto :goto_2

    .line 1452
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private prepareClientPulledLocalPath(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 1408
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientPulledLocalPath:Ljava/lang/String;

    .line 1409
    if-nez p1, :cond_1

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1412
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1413
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1414
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientPulledLocalPath:Ljava/lang/String;

    goto :goto_0

    .line 1419
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1420
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientPulledLocalPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private native prepareListentoSocketNative()Z
.end method

.method private printErr(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1154
    const-string v0, "BluetoothFtpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][FTP] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1146
    const-string v0, "BluetoothFtpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][FTP] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    return-void
.end method

.method private printWrn(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1150
    const-string v0, "BluetoothFtpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][FTP] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return-void
.end method

.method private scanPath(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 1429
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1430
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1431
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1433
    return-void
.end method

.method private sendServiceMsg(II)V
    .locals 4
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 1172
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1173
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1174
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1176
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1177
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1181
    :goto_0
    return-void

    .line 1179
    :cond_0
    const-string v1, "BluetoothFtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][FTP] mServiceHandler is null. msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendServiceMsg(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "what"
    .parameter "data"

    .prologue
    .line 1159
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1160
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1161
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1163
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1164
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1168
    :goto_0
    return-void

    .line 1166
    :cond_0
    const-string v1, "BluetoothFtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][FTP] mServiceHandler is null. msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native serverAbortReqNative()Z
.end method

.method private native serverAuthorizeRspNative(Z)V
.end method

.method private native serverDisableReqNative()V
.end method

.method private native serverDisconnectReqNative()V
.end method

.method private native serverEnableReqNative(Ljava/lang/String;)V
.end method

.method private native serverGetStatusNative()I
.end method

.method private native setPermissionNative(Z)Z
.end method

.method private native setRootDirNative(Ljava/lang/String;)Z
.end method

.method private showTextToast(I)V
    .locals 2
    .parameter "text_id"

    .prologue
    .line 1305
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1306
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1307
    return-void
.end method

.method private startClientTransfer(I)V
    .locals 14
    .parameter "msg_id"

    .prologue
    .line 1613
    const/4 v6, 0x0

    .line 1614
    .local v6, error:Z
    const/4 v8, 0x0

    .line 1615
    .local v8, name:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1616
    .local v12, updateUri:Landroid/net/Uri;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1618
    .local v13, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mAbortByUser:Z

    .line 1619
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1623
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$TransferringFile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    .line 1624
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 1625
    const-string v0, "startClientTransfer(), mTransferringCursor is null"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1630
    const-string v0, "status"

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1631
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->getTransferringUri()Landroid/net/Uri;

    move-result-object v12

    .line 1632
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v13, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1635
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1636
    .local v9, nameIdx:I
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1651
    const/16 v0, 0x13a5

    if-ne p1, v0, :cond_3

    .line 1652
    iput-object v8, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientTransferName:Ljava/lang/String;

    .line 1653
    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientPushReqNative(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1654
    const/16 v0, 0x26

    const/16 v1, 0x44

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V

    goto :goto_0

    .line 1639
    .end local v9           #nameIdx:I
    :cond_2
    :try_start_1
    const-string v0, "No record is in transferring queue."

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 1640
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1645
    :catch_0
    move-exception v7

    .line 1646
    .local v7, ex:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startClientTransfer(), msg_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 1647
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientDisconnectReqNative()V

    goto :goto_0

    .line 1657
    .end local v7           #ex:Ljava/lang/Exception;
    .restart local v9       #nameIdx:I
    :cond_3
    const/16 v0, 0x13a4

    if-ne p1, v0, :cond_5

    .line 1658
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/SystemUtils;->getReceivedFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->prepareClientPulledLocalPath(Ljava/lang/String;)V

    .line 1659
    iget-object v10, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientPulledLocalPath:Ljava/lang/String;

    .line 1660
    .local v10, path:Ljava/lang/String;
    invoke-direct {p0, v10, v8}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->getAvailableFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1661
    .local v11, rename:Ljava/lang/String;
    invoke-direct {p0, v10, v8, v11}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientPullReqNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v11, :cond_4

    move-object v11, v8

    .end local v11           #rename:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientTransferName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1665
    .end local v10           #path:Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong Message ID to start transferring: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;

    goto/16 :goto_0
.end method

.method private native stopListentoSocketNative()V
.end method

.method private updateActivation(II)V
    .locals 3
    .parameter "role"
    .parameter "state"

    .prologue
    .line 1345
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1347
    .local v0, intent:Landroid/content/Intent;
    const/16 v2, 0x13ec

    if-ne p1, v2, :cond_0

    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_FTP_Server:Landroid/bluetooth/BluetoothProfileManager$Profile;

    .line 1351
    .local v1, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    :goto_0
    const-string v2, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1352
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1354
    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1355
    return-void

    .line 1347
    .end local v1           #profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_FTP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    goto :goto_0
.end method

.method private updateMediaStore(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 1395
    :try_start_0
    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1396
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1398
    .local v1, ret:I
    if-lez v1, :cond_0

    .line 1399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " row(s) deleted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    .end local v1           #ret:I
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 1401
    :catch_0
    move-exception v0

    .line 1402
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "BluetoothFtpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BT][FTP] updateMediaStore(), Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNotification(I)V
    .locals 4
    .parameter "notify"

    .prologue
    .line 1245
    const/4 v1, 0x0

    .line 1246
    .local v1, noti:Landroid/app/Notification;
    const/4 v0, 0x0

    .line 1248
    .local v0, deviceName:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    .line 1249
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1256
    const v2, 0x5b8d81

    if-ne p1, v2, :cond_2

    .line 1257
    iget v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    const/16 v3, 0x66

    if-eq v2, v3, :cond_3

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    const-string v2, "updateNotification(), mCurrentClient is null."

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    goto :goto_0

    .line 1259
    :cond_2
    const v2, 0x5b8d82

    if-ne p1, v2, :cond_3

    .line 1260
    iget v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    const/16 v3, 0x67

    if-ne v2, v3, :cond_0

    .line 1264
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->genFtpNotification(ILjava/lang/String;Z)Landroid/app/Notification;

    move-result-object v1

    .line 1265
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v2, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private updateServerEnablePreferenceValue(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1383
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNeedUpdatePref:Z

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "server_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1391
    :goto_0
    return-void

    .line 1389
    :cond_0
    const-string v0, "BluetoothFtpService"

    const-string v1, "[BT][FTP] Ignore updating the preference this time."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 1012
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1013
    .local v0, action:Ljava/lang/String;
    const-string v1, "BluetoothFtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][FTP] Enter onBind(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-string v1, "android.bluetooth.ftp.action.BIND_SERVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServerCtrl:Landroid/bluetooth/IBluetoothFtpCtrl$Stub;

    .line 1027
    :goto_0
    return-object v1

    .line 1017
    :cond_0
    const-string v1, "android.bluetooth.ftp.action.BIND_CLIENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1018
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCtrl:Landroid/bluetooth/IBluetoothFtpCtrl$Stub;

    goto :goto_0

    .line 1019
    :cond_1
    const-class v1, Landroid/bluetooth/IBluetoothFtpServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1020
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer$Stub;

    goto :goto_0

    .line 1021
    :cond_2
    const-class v1, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1022
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServerNotify:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify$Stub;

    goto :goto_0

    .line 1023
    :cond_3
    const-class v1, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1024
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;

    goto :goto_0

    .line 1027
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 891
    const-string v0, "Enter onCreate()"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mResolver:Landroid/content/ContentResolver;

    .line 896
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNM:Landroid/app/NotificationManager;

    .line 897
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNM:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 898
    const-string v0, "Get Notification-Manager failed. Stop FTP service."

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 902
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mPM:Landroid/os/PowerManager;

    .line 903
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mPM:Landroid/os/PowerManager;

    if-nez v0, :cond_1

    .line 904
    const-string v0, "Get Power-Manager failed. Stop FTP service."

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 909
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BtFtpServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceThread:Landroid/os/HandlerThread;

    .line 910
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 911
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceHandler:Landroid/os/Handler;

    .line 914
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    .line 915
    const/16 v0, 0xc8

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    .line 918
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentServer:Landroid/bluetooth/BluetoothDevice;

    .line 920
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mBtOffFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mBtOffReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mBtOffFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 923
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->initServiceNative()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceInitiated:Z

    .line 924
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1032
    const-string v2, "onDestroy()"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1034
    const/4 v1, 0x0

    .line 1035
    .local v1, timeout:Z
    const/4 v0, 0x0

    .line 1037
    .local v0, cnt:I
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mBtOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1039
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->cleanServiceNative()V

    .line 1040
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServerCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1042
    iput-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceHandler:Landroid/os/Handler;

    .line 1043
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    .line 1044
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 1045
    iput-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceThread:Landroid/os/HandlerThread;

    .line 1047
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/16 v8, 0xa

    const/4 v2, 0x2

    const/16 v7, 0x13ec

    const/16 v6, 0xb

    const/16 v5, 0x13ed

    .line 928
    const-string v3, "Enter onStartCommand()"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 931
    invoke-direct {p0, v7, v8}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V

    .line 932
    invoke-direct {p0, v5, v8}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V

    .line 934
    iget-boolean v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServiceInitiated:Z

    if-eqz v3, :cond_6

    .line 935
    const-string v3, "BluetoothFtpService is initiated."

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 937
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 938
    .local v0, bt:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 939
    const-string v3, "BluetoothFtpService"

    const-string v4, "[BT][FTP] Bluetooth is not supported."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    .end local v0           #bt:Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    return v2

    .line 942
    .restart local v0       #bt:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 944
    :cond_1
    const-string v3, "BluetoothFtpService"

    const-string v4, "[BT][FTP] Bluetooth is not enabled. Abandon starting FTP service this time."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/16 v3, 0xe

    invoke-direct {p0, v7, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V

    .line 946
    const/16 v3, 0xe

    invoke-direct {p0, v5, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V

    goto :goto_0

    .line 951
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSocketListener:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;

    if-nez v3, :cond_4

    .line 952
    new-instance v2, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;

    invoke-direct {v2, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSocketListener:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;

    .line 953
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSocketListener:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 954
    const-string v2, "SocketListener started."

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 965
    invoke-static {}, Lcom/mediatek/bluetooth/util/SystemUtils;->getMountPointPath()Ljava/lang/String;

    move-result-object v1

    .line 966
    .local v1, root:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pre-enable FTP Server, root: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 968
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mPM:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "BluetoothFtpService"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 971
    const-string v2, "ftp_server_settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPreferences:Landroid/content/SharedPreferences;

    .line 972
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPreferences:Landroid/content/SharedPreferences;

    const-string v3, "server_permission"

    const/16 v4, 0x3e8

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPermission:I

    .line 975
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPreferences:Landroid/content/SharedPreferences;

    const-string v3, "server_enable"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 978
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverEnableReqNative(Ljava/lang/String;)V

    .line 987
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTP server init-state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPermission:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 988
    invoke-direct {p0, v7, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V

    .line 991
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientEnableReqNative()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 992
    const/16 v2, 0xc9

    iput v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I

    .line 993
    invoke-direct {p0, v5, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V

    .line 998
    :goto_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSDRemovalFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 999
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSDRemovalFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1000
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSDRemovalFilter:Landroid/content/IntentFilter;

    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1001
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSDRemovalReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mSDRemovalFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1008
    .end local v0           #bt:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #root:Ljava/lang/String;
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 957
    .restart local v0       #bt:Landroid/bluetooth/BluetoothAdapter;
    :cond_4
    const-string v3, "BluetoothFtpService"

    const-string v4, "[BT][FTP] FTP service has started."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-direct {p0, v7, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V

    .line 960
    invoke-direct {p0, v5, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V

    goto/16 :goto_0

    .line 995
    .restart local v1       #root:Ljava/lang/String;
    :cond_5
    const/16 v2, 0xe

    invoke-direct {p0, v5, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateActivation(II)V

    goto :goto_1

    .line 1004
    .end local v0           #bt:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #root:Ljava/lang/String;
    :cond_6
    const-string v2, "Failed to init BluetoothFtpService. Stop FTP service."

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_2
.end method
