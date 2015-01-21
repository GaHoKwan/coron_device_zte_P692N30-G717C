.class public Lcom/mediatek/bluetooth/simap/BluetoothSimapService;
.super Landroid/app/Service;
.source "BluetoothSimapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;
    }
.end annotation


# static fields
.field public static final ACCESS_ALLOWED_ACTION:Ljava/lang/String; = "com.mediatek.bluetooth.simap.accessallowed"

.field public static final ACCESS_DISALLOWED_ACTION:Ljava/lang/String; = "com.mediatek.bluetooth.simap.accessdisallowed"

.field public static final ACCESS_REQUEST_ACTION:Ljava/lang/String; = "com.mediatek.bluetooth.simap.accessrequest"

.field public static final ACTION_CLEAR_AUTH_NOTIFICATION:Ljava/lang/String; = "com.mediatek.bluetooth.simap.intent.action.CLEAR_AUTH"

.field public static final ACTION_CLEAR_CONN_NOTIFICATION:Ljava/lang/String; = "com.mediatek.bluetooth.simap.intent.action.CLEAR_CONN"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BTSIMAP_CONNECTED:Ljava/lang/String; = "com.mediatek.bluetooth.simap.intent.action.BTSIMAP_CONNECTED"

.field public static final BTSIMAP_DISCONNECTED:Ljava/lang/String; = "com.mediatek.bluetooth.simap.intent.action.BTSIMAP_DISCONNECTED"

.field public static final CONNECTED_NOTIFY_ACTION:Ljava/lang/String; = "com.mediatek.bluetooth.simap.connectednotify"

.field public static final DEBUG:Z = true

.field static final DISCONNECT_REQUEST:Ljava/lang/String; = "simap_disconnect_request"

.field public static final EXTRA_ALWAYS_ALLOWED:Ljava/lang/String; = "com.mediatek.bluetooth.simap.alwaysallowed"

.field private static final KEY_SIMAP_ENABLE:Ljava/lang/String; = "simap_server_enable"

.field private static final KEY_SIMAP_SETTINGS:Ljava/lang/String; = "simap_server_settings"

.field private static final KEY_SIMAP_SIM_INDEX:Ljava/lang/String; = "simap_server_sim_index"

#the value of this static final field might be set in the static constructor
.field private static final MAX_SIM_NUM:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NOTIFICATION_ID_ACCESS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NOTIFICATION_ID_CONNECTED:I = 0x0

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final SEND_SIMUNAVALIBLE_IND:Ljava/lang/String; = "com.mediatek.bluetooth.simap.intent.action.SEND_SIMUNAVALIBLE_IND"

.field public static final SIMAP_AUTHORIZE_IND:I = 0x69

.field public static final SIMAP_CONNECTED:I = 0x6a

.field public static final SIMAP_DISCONNECTED:I = 0x6b

#the value of this static final field might be set in the static constructor
.field private static final SIMAP_ID_START:I = 0x0

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothSimapService"

.field public static final THIS_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.bluetooth"

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.mediatek.bluetooth.simap.userconfirmtimeout"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x186a0

.field private static final USER_TIMEOUT:I = 0x2

.field public static final VERBOSE:Z = true

.field private static mHasStarted:Z

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private GRACEFUL_DISC_MODE:I

.field private IMMEDIATE_DISC_MODE:I

.field private enableAction:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBinder:Landroid/bluetooth/IBluetoothSimap$Stub;

.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mInterrupted:Z

.field private mNativeData:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mSIMIndex:I

.field private mServiceInitiated:Z

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private final mSimapCallback:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothSimapCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSocketListener:Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;

.field private mStartId:I

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private savedEnableState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    sput v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->MAX_SIM_NUM:I

    .line 172
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothProfile;->getProfileStart(I)I

    move-result v0

    sput v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->SIMAP_ID_START:I

    .line 174
    sget v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->SIMAP_ID_START:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->NOTIFICATION_ID_ACCESS:I

    .line 175
    sget v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->SIMAP_ID_START:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->NOTIFICATION_ID_CONNECTED:I

    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 185
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mHasStarted:Z

    .line 1020
    const-string v0, "extsimap_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1021
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 177
    iput-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 181
    iput-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 189
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mServiceInitiated:Z

    .line 191
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->savedEnableState:Z

    .line 193
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->enableAction:Z

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mStartId:I

    .line 199
    iput v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSIMIndex:I

    .line 216
    iput v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->GRACEFUL_DISC_MODE:I

    .line 217
    iput v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->IMMEDIATE_DISC_MODE:I

    .line 377
    new-instance v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$1;-><init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 736
    new-instance v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;-><init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mBinder:Landroid/bluetooth/IBluetoothSimap$Stub;

    .line 844
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    .line 939
    new-instance v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;-><init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 1017
    iput-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSocketListener:Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->enableAction:Z

    return p1
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput-object p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->IMMEDIATE_DISC_MODE:I

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->disconnectClient(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->selectSIMNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSIMIndex:I

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSIMIndex:I

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mHasStarted:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->prepareListentoSocketNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->startListenNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->authorizeRsp(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->stopListenNative()V

    return-void
.end method

.method static synthetic access$2100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/IBluetoothSimap$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mBinder:Landroid/bluetooth/IBluetoothSimap$Stub;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->clearService()V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->GRACEFUL_DISC_MODE:I

    return v0
.end method

.method static synthetic access$2500(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sendSIMUnaccessibleInd()V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->updateDeviceName()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->createSimapAuthNotification(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->NOTIFICATION_ID_ACCESS:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->removeSimapAuthNotification(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->createSimapConnNotification()V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->NOTIFICATION_ID_CONNECTED:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->removeSimapConnNotification(I)V

    return-void
.end method

.method private authorizeRsp(Z)V
    .locals 4
    .parameter "accept"

    .prologue
    const/4 v3, 0x2

    .line 698
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authorizeRsp: accept="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 702
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 704
    const-string v0, "BluetoothSimapService"

    const-string v1, "mState!=STATE_AUTHORZING, ignore the authorizeRsp request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :goto_0
    return-void

    .line 708
    :cond_0
    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(I)V

    .line 710
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->authorizeRspNative(Z)V

    goto :goto_0
.end method

.method private native authorizeRspNative(Z)V
.end method

.method private static native classInitNative()Z
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private clearService()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 880
    const-string v3, "BluetoothSimapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearService(), mState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v2, 0x0

    .line 884
    .local v2, timeout:Z
    const/4 v0, 0x0

    .line 886
    .local v0, cnt:I
    const/4 v3, 0x0

    sput-boolean v3, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mHasStarted:Z

    .line 889
    iget v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    if-eq v3, v6, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->disable()V

    .line 895
    :goto_0
    iget v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    if-eq v3, v6, :cond_0

    .line 896
    const/16 v3, 0x7d0

    if-lt v0, v3, :cond_3

    .line 897
    const/4 v2, 0x1

    .line 910
    :cond_0
    if-eqz v2, :cond_1

    .line 915
    const-string v3, "BluetoothSimapService"

    const-string v4, "Waiting DEREGISTER_SERVER_CNF time-out. Force clear server context."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iput v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    .line 920
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSocketListener:Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;

    if-eqz v3, :cond_2

    .line 922
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSocketListener:Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;->shutdown()V

    .line 923
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSocketListener:Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 924
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSocketListener:Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;

    .line 925
    const-string v3, "BluetoothSimapService"

    const-string v4, "mSocketListener finish shutdown!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 932
    :cond_2
    :goto_1
    const-string v3, "BluetoothSimapService"

    const-string v4, "clearService call storeSettings() "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-boolean v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->savedEnableState:Z

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->storeSettings(Z)V

    .line 935
    return-void

    .line 902
    :cond_3
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 906
    :goto_2
    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 903
    :catch_0
    move-exception v1

    .line 904
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "BluetoothSimapService"

    const-string v4, "Waiting for server deregister-cnf was interrupted."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 926
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 927
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "BluetoothSimapService"

    const-string v4, "mSocketListener close error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final closeSimapService()V
    .locals 3

    .prologue
    .line 336
    const-string v1, "BluetoothSimapService"

    const-string v2, "Simap Service closeSimapService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mStartId:I

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const-string v1, "BluetoothSimapService"

    const-string v2, "successfully stopped simap service"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->stopListenNative()V

    .line 344
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSocketListener:Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;

    if-eqz v1, :cond_1

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSocketListener:Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 347
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSocketListener:Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->cleanupNativeDataNative()V

    .line 354
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "BluetoothSimapService"

    const-string v2, "mSocketListener close error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createSimapAuthNotification(Z)V
    .locals 13
    .parameter "createNew"

    .prologue
    const v12, 0x7f07014a

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 536
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 538
    .local v1, context:Landroid/content/Context;
    const-string v6, "notification"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 542
    .local v4, nm:Landroid/app/NotificationManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 543
    .local v0, clickIntent:Landroid/content/Intent;
    const-class v6, Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 544
    const/high16 v6, 0x1000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 545
    const-string v6, "com.mediatek.bluetooth.simap.accessrequest"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.mediatek.bluetooth.simap.intent.action.CLEAR_AUTH"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v2, deleteIntent:Landroid/content/Intent;
    const-class v6, Lcom/mediatek/bluetooth/simap/BluetoothSimapReceiver;

    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 552
    const/4 v5, 0x0

    .line 553
    .local v5, notification:Landroid/app/Notification;
    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, name:Ljava/lang/String;
    new-instance v5, Landroid/app/Notification;

    .end local v5           #notification:Landroid/app/Notification;
    const v6, 0x1080080

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 557
    .restart local v5       #notification:Landroid/app/Notification;
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07014f

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v10

    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v10, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 562
    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 563
    if-eqz p1, :cond_0

    .line 565
    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 566
    iput v11, v5, Landroid/app/Notification;->defaults:I

    .line 568
    :cond_0
    invoke-static {v1, v10, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 569
    sget v6, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->NOTIFICATION_ID_ACCESS:I

    invoke-virtual {v4, v6, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 570
    return-void
.end method

.method private createSimapConnNotification()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 580
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 583
    .local v1, context:Landroid/content/Context;
    const-string v7, "BluetoothSimapService"

    const-string v8, "createSimapConnNotification..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v7, "notification"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 589
    .local v4, nm:Landroid/app/NotificationManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 590
    .local v0, clickIntent:Landroid/content/Intent;
    const-class v7, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 591
    const/high16 v7, 0x1000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 592
    const-string v7, "com.mediatek.bluetooth.simap.connectednotify"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.mediatek.bluetooth.simap.intent.action.CLEAR_CONN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v2, deleteIntent:Landroid/content/Intent;
    const-class v7, Lcom/mediatek/bluetooth/simap/BluetoothSimapReceiver;

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 599
    const/4 v5, 0x0

    .line 600
    .local v5, notification:Landroid/app/Notification;
    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, name:Ljava/lang/String;
    const v7, 0x7f070153

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v3, v8, v11

    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 604
    .local v6, title:Ljava/lang/String;
    new-instance v5, Landroid/app/Notification;

    .end local v5           #notification:Landroid/app/Notification;
    const v7, 0x1080080

    const v8, 0x7f070152

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 606
    .restart local v5       #notification:Landroid/app/Notification;
    const v7, 0x7f070154

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v3, v8, v11

    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v11, v0, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 612
    iget v7, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v5, Landroid/app/Notification;->flags:I

    .line 613
    invoke-static {v1, v11, v2, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 614
    sget v7, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->NOTIFICATION_ID_CONNECTED:I

    invoke-virtual {v4, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 615
    return-void
.end method

.method private native disableNative()V
.end method

.method private disconnectClient(I)V
    .locals 3
    .parameter "discMode"

    .prologue
    .line 715
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectClient...discMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(I)V

    .line 717
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->disconnectNative(I)V

    .line 718
    return-void
.end method

.method private native disconnectNative(I)V
.end method

.method private native enableNative()Z
.end method

.method private getAvailSimId()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->MAX_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 371
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->isSimExist(I)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 372
    add-int/lit8 v1, v0, 0x1

    .line 374
    :cond_0
    return v1

    .line 370
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    sget-object v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private native initServiceNative()Z
.end method

.method private isSimExist(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 357
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    .line 358
    .local v1, tm:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-virtual {v1, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v0

    .line 360
    .local v0, simState:I
    if-ne v0, v2, :cond_0

    .line 361
    const/4 v2, 0x0

    .line 363
    :cond_0
    return v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1250
    const-string v0, "BluetoothSimapService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return-void
.end method

.method private onAuthorizeInd(Ljava/lang/String;)Z
    .locals 6
    .parameter "addr"

    .prologue
    const/4 v2, 0x0

    .line 1130
    const-string v3, "BluetoothSimapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter onAuthorizeInd(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const/4 v1, 0x0

    .line 1134
    .local v1, obj:Ljava/lang/Object;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1135
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 1136
    const-string v3, "BluetoothSimapService"

    const-string v4, "adapter == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->authorizeRspNative(Z)V

    .line 1152
    .end local v1           #obj:Ljava/lang/Object;
    :goto_0
    return v2

    .line 1141
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1142
    .local v1, obj:Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_1

    .line 1143
    const-string v3, "BluetoothSimapService"

    const-string v4, "obj == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->authorizeRspNative(Z)V

    goto :goto_0

    .line 1148
    :cond_1
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(I)V

    .line 1150
    const/16 v2, 0x69

    invoke-direct {p0, v2, v1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sendServiceMsg(ILjava/lang/Object;)V

    .line 1152
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onBtResetInd()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    .line 1187
    const-string v3, "BluetoothSimapService"

    const-string v4, "Enter onBtResetInd() [+]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    if-ne v3, v5, :cond_0

    .line 1192
    const-string v3, "BluetoothSimapService"

    const-string v4, "disable: mState is already STATE_IDLE, just return!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :goto_0
    return-void

    .line 1196
    :cond_0
    iget v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1198
    sget v3, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->NOTIFICATION_ID_ACCESS:I

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->removeSimapAuthNotification(I)V

    .line 1199
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1208
    :cond_1
    :goto_1
    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(I)V

    .line 1211
    const/16 v2, 0xd

    .line 1212
    .local v2, msgid:I
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_4

    .line 1213
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1214
    .local v0, N:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start broadcasting to callback. N="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->log(Ljava/lang/String;)V

    .line 1216
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1218
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothSimapCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/bluetooth/IBluetoothSimapCallback;->postEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1201
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #msgid:I
    :cond_2
    iget v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1203
    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(I)V

    .line 1205
    sget v3, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->NOTIFICATION_ID_CONNECTED:I

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->removeSimapConnNotification(I)V

    goto :goto_1

    .line 1225
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #msgid:I
    :cond_3
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1226
    const-string v3, "End broadcasting to callback."

    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->log(Ljava/lang/String;)V

    .line 1228
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_4
    const-string v3, "BluetoothSimapService"

    const-string v4, "onBtResetInd() [-] "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1220
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method private onBtSimapCmd(IILjava/lang/String;)Lcom/mediatek/bluetooth/simap/AfAdapterResult;
    .locals 1
    .parameter "fnCode"
    .parameter "iarg"
    .parameter "sarg"

    .prologue
    .line 1233
    new-instance v0, Lcom/mediatek/bluetooth/simap/AfAdapterResult;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/simap/AfAdapterResult;-><init>()V

    .line 1234
    .local v0, result:Lcom/mediatek/bluetooth/simap/AfAdapterResult;
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/bluetooth/simap/AfAdapterResult;->onCommand(IILjava/lang/String;)V

    .line 1235
    return-object v0
.end method

.method private onConnectedInd(Ljava/lang/String;)V
    .locals 2
    .parameter "deviceName"

    .prologue
    .line 1158
    const-string v0, "BluetoothSimapService"

    const-string v1, "Enter onConnectedInd()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(I)V

    .line 1162
    const/16 v0, 0x6a

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sendServiceMsg(ILjava/lang/Object;)V

    .line 1163
    return-void
.end method

.method private onDisableCnf(Z)V
    .locals 7
    .parameter "succ"

    .prologue
    const/4 v6, 0x0

    .line 1085
    const-string v3, "BluetoothSimapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter onDisableCnf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(I)V

    .line 1090
    const/16 v2, 0xd

    .line 1092
    .local v2, msgid:I
    const-string v3, "BluetoothSimapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisableCnf call storeSettings(false) enableAction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->enableAction:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-boolean v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->enableAction:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1095
    iput-boolean v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->savedEnableState:Z

    .line 1096
    iput-boolean v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->enableAction:Z

    .line 1098
    :cond_0
    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->storeSettings(Z)V

    .line 1107
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_2

    .line 1108
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1109
    .local v0, N:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start broadcasting to callback. N="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->log(Ljava/lang/String;)V

    .line 1111
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1113
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothSimapCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/bluetooth/IBluetoothSimapCallback;->postEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1120
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1121
    const-string v3, "End broadcasting to callback."

    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->log(Ljava/lang/String;)V

    .line 1126
    .end local v0           #N:I
    .end local v1           #i:I
    :goto_2
    return-void

    .line 1124
    :cond_2
    const-string v3, "For non-ui server enabling."

    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1115
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private onDisconnectCnf(Z)V
    .locals 3
    .parameter "succ"

    .prologue
    .line 1176
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter onDisconnectCnf(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(I)V

    .line 1179
    const/16 v0, 0x6b

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sendServiceMsg(ILjava/lang/Object;)V

    .line 1184
    return-void
.end method

.method private onDisconnectedInd()V
    .locals 2

    .prologue
    .line 1167
    const-string v0, "BluetoothSimapService"

    const-string v1, "Enter onDisconnectedInd()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(I)V

    .line 1171
    const/16 v0, 0x6b

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sendServiceMsg(ILjava/lang/Object;)V

    .line 1172
    return-void
.end method

.method private onEnableCnf(Z)V
    .locals 7
    .parameter "succ"

    .prologue
    const/4 v6, 0x1

    .line 1040
    const-string v3, "BluetoothSimapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter onEnableCnf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v2, 0x2

    .line 1045
    .local v2, msgid:I
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(I)V

    .line 1046
    const-string v3, "BluetoothSimapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableAction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->enableAction:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-boolean v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->enableAction:Z

    if-ne v3, v6, :cond_0

    .line 1049
    iput-boolean v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->savedEnableState:Z

    .line 1050
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->enableAction:Z

    .line 1053
    :cond_0
    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->storeSettings(Z)V

    .line 1062
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_2

    .line 1063
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1064
    .local v0, N:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start broadcasting to callback. N="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->log(Ljava/lang/String;)V

    .line 1066
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1068
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothSimapCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/bluetooth/IBluetoothSimapCallback;->postEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1075
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1076
    const-string v3, "End broadcasting to callback."

    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->log(Ljava/lang/String;)V

    .line 1081
    .end local v0           #N:I
    .end local v1           #i:I
    :goto_2
    return-void

    .line 1079
    :cond_2
    const-string v3, "For non-ui server enabling."

    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1070
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private native prepareListentoSocketNative()Z
.end method

.method private removeSimapAuthNotification(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 574
    .local v0, context:Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 576
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 577
    return-void
.end method

.method private removeSimapConnNotification(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 618
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 619
    .local v0, context:Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 621
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 622
    return-void
.end method

.method private native selectSIMNative(I)Z
.end method

.method private sendSIMUnaccessibleInd()V
    .locals 3

    .prologue
    .line 722
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSIMUnaccessibleInd...mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 725
    const-string v0, "BluetoothSimapService"

    const-string v1, "mState != BluetoothSimap.STATE_CONNECTED, just return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_0
    return-void

    .line 729
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sendSIMUnaccessibleIndNative()V

    goto :goto_0
.end method

.method private native sendSIMUnaccessibleIndNative()V
.end method

.method private sendServiceMsg(ILjava/lang/Object;)V
    .locals 4
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1241
    const-string v1, "BluetoothSimapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendServiceMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1243
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1244
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1246
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1247
    return-void
.end method

.method private setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 471
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState(state): Simap state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(II)V

    .line 473
    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 8
    .parameter "state"
    .parameter "result"

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0xa

    .line 476
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    if-eq p1, v3, :cond_3

    .line 478
    const-string v3, "BluetoothSimapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Simap state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-eq p1, v6, :cond_0

    iget v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    if-eq v3, v6, :cond_0

    iget v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 486
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    .local v0, bpm_intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.profilemanager.extra.PROFILE"

    sget-object v4, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_SIMAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 490
    if-ne p1, v6, :cond_4

    .line 492
    const/16 v1, 0xa

    .line 509
    .local v1, bpm_state:I
    :goto_0
    const-string v3, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    const-string v3, "BluetoothSimapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send broadcast: simap Enabling/Disabling status: bpm_state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 515
    .end local v0           #bpm_intent:Landroid/content/Intent;
    .end local v1           #bpm_state:I
    :cond_1
    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    if-eq p1, v7, :cond_2

    const/4 v3, 0x4

    if-ne p1, v3, :cond_8

    .line 519
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.profilemanager.extra.PROFILE"

    sget-object v4, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_SIMAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 521
    const-string v3, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    iget v4, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    iput p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    .line 523
    const-string v3, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    iget v4, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 525
    const-string v3, "BluetoothSimapService"

    const-string v4, "send broadcast: simap state changed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 494
    .restart local v0       #bpm_intent:Landroid/content/Intent;
    :cond_4
    :try_start_1
    iget v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    if-ne v3, v6, :cond_6

    .line 495
    if-ne p1, v7, :cond_5

    .line 496
    const/16 v1, 0xb

    .restart local v1       #bpm_state:I
    goto :goto_0

    .line 499
    .end local v1           #bpm_state:I
    :cond_5
    const/16 v1, 0xe

    .restart local v1       #bpm_state:I
    goto :goto_0

    .line 502
    .end local v1           #bpm_state:I
    :cond_6
    const/4 v3, -0x1

    if-ne p1, v3, :cond_7

    .line 503
    const/16 v1, 0xd

    .restart local v1       #bpm_state:I
    goto :goto_0

    .line 506
    .end local v1           #bpm_state:I
    :cond_7
    const/16 v1, 0xe

    .restart local v1       #bpm_state:I
    goto :goto_0

    .line 530
    .end local v0           #bpm_intent:Landroid/content/Intent;
    .end local v1           #bpm_state:I
    :cond_8
    iput p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 476
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private native startListenNative()Z
.end method

.method private native stopListenNative()V
.end method

.method private storeSettings(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 631
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeSettings: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSIMIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSIMIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "simap_server_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 639
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "simap_server_sim_index"

    iget v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSIMIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 644
    :cond_0
    return-void
.end method

.method private updateDeviceName()V
    .locals 3

    .prologue
    .line 999
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 1001
    sget-object v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    const-string v0, "BluetoothSimapService"

    const-string v1, "mRemoteDevice.getName()return empty, use the default name"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const v0, 0x7f07014e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 1005
    :cond_0
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDeviceName: sRemoteDeviceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1009
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->createSimapAuthNotification(Z)V

    .line 1014
    :cond_1
    :goto_0
    return-void

    .line 1010
    :cond_2
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1012
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->createSimapConnNotification()V

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    .line 670
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable, mState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 674
    const-string v0, "BluetoothSimapService"

    const-string v1, "disable: mState is already STATE_IDLE, just return!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_0
    return-void

    .line 679
    :cond_0
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 681
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->authorizeRsp(Z)V

    .line 683
    sget v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->NOTIFICATION_ID_ACCESS:I

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->removeSimapAuthNotification(I)V

    .line 692
    :cond_1
    :goto_1
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(I)V

    .line 693
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->disableNative()V

    goto :goto_0

    .line 686
    :cond_2
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 689
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->IMMEDIATE_DISC_MODE:I

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->disconnectClient(I)V

    goto :goto_1
.end method

.method public enable()Z
    .locals 3

    .prologue
    .line 648
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable, mState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(I)V

    .line 658
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->enableNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->setState(I)V

    .line 661
    const/4 v0, 0x0

    .line 664
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 330
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter onBind(): mBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mBinder:Landroid/bluetooth/IBluetoothSimap$Stub;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mBinder:Landroid/bluetooth/IBluetoothSimap$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 222
    const-string v1, "BluetoothSimapService"

    const-string v2, "SIMAP: onCreate..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mServiceInitiated:Z

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "BluetoothSimapService"

    const-string v2, "Already initiated, just return!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mInterrupted:Z

    .line 230
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I

    .line 231
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 233
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->initServiceNative()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mServiceInitiated:Z

    .line 234
    const-string v1, "BluetoothSimapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service initiated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mServiceInitiated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v1, "com.mediatek.bluetooth.simap.accessdisallowed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "com.mediatek.bluetooth.simap.accessallowed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "simap_disconnect_request"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "com.mediatek.bluetooth.simap.intent.action.SEND_SIMUNAVALIBLE_IND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    const-string v0, "BluetoothSimapService"

    const-string v1, "onDestroy..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->disable()V

    .line 312
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->closeSimapService()V

    .line 319
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 323
    sput-boolean v2, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mHasStarted:Z

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mStartId:I

    .line 325
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mServiceInitiated:Z

    .line 326
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 253
    const-string v0, "BluetoothSimapService"

    const-string v1, "onStartCommand [+]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-boolean v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "BluetoothSimapService"

    const-string v1, "Already started, just return!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return v3

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mServiceInitiated:Z

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSocketListener:Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;-><init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSocketListener:Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;

    .line 265
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSocketListener:Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;

    const-string v1, "SimapSocketListener"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSocketListener:Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 267
    const-string v0, "BluetoothSimapService"

    const-string v1, "SimapSocketListener started."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    const-string v0, "simap_server_settings"

    invoke-virtual {p0, v0, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mPreferences:Landroid/content/SharedPreferences;

    .line 272
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "simap_server_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->savedEnableState:Z

    .line 273
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->savedEnableState:Z

    if-eqz v0, :cond_2

    .line 274
    const-string v0, "Pre-enable SIMAP Server..."

    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->log(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->enable()Z

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "simap_server_sim_index"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSIMIndex:I

    .line 281
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSIMIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSIMIndex:I

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->isSimExist(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 284
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->getAvailSimId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSIMIndex:I

    .line 285
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->savedEnableState:Z

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->storeSettings(Z)V

    .line 287
    :cond_3
    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSIMIndex:I

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->selectSIMNative(I)Z

    .line 291
    iput p3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mStartId:I

    .line 293
    sput-boolean v3, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mHasStarted:Z

    .line 300
    :goto_1
    const-string v0, "BluetoothSimapService"

    const-string v1, "onStartCommand [-]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 296
    :cond_4
    const-string v0, "Failed to init BluetoothSimapService. Stop SIMAP service."

    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->log(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1
.end method
