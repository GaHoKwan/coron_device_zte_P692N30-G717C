.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$CDRomState;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field private static final BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_UNMOUNT:Z = true

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field private static final EXTERNAL_OTG:Ljava/lang/String; = "/mnt/usbotg"

.field private static final EXTERNAL_SD1:Ljava/lang/String; = "/storage/sdcard0"

.field private static final EXTERNAL_SD2:Ljava/lang/String; = "/storage/sdcard1"

.field private static final FIRST_BOOT_MOUNTED:Ljava/lang/String; = "first_boot_mounted"

.field private static final H_SYSTEM_READY:I = 0x4

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final INSERT_OTG:Ljava/lang/String; = "insert_otg"

.field private static final INTENT_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field private static final LABEL_SD1:Ljava/lang/String; = "sdcard"

.field private static final LABEL_SD2:Ljava/lang/String; = "sdcard2"

.field private static final LABLE_OTG:Ljava/lang/String; = "usbotg"

.field private static final LABLE_SD:Ljava/lang/String; = "sdcard"

.field private static final LOCAL_LOGD:Z = true

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MAX_FILE_SIZE:J = 0xffffffffL

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final MEDIA_EJECT_SHUTDOWN_TIME:I = 0x1f4

.field private static final MEDIA_EJECT_TIME:I = 0x5dc

.field private static final MOUNT_UNMOUNT_ALL:Ljava/lang/String; = "mount_unmount_all"

.field private static final MTP_RESERVE_SPACE:I = 0xa00000

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final OMADM_SD_FORMAT:Ljava/lang/String; = "com.mediatek.dm.LAWMO_WIPE"

.field private static final OMADM_SYNC_LOCK:Ljava/lang/Object; = null

.field private static final OMADM_USB_DISABLE:Ljava/lang/String; = "com.mediatek.dm.LAWMO_LOCK"

.field private static final OMADM_USB_ENABLE:Ljava/lang/String; = "com.mediatek.dm.LAWMO_UNLOCK"

.field private static final OTG_EVENT605_LENGTH:I = 0xd

.field private static final OTG_EVENT632_LENGTH:I = 0x7

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final PROP_SD_SWAP:Ljava/lang/String; = "vold_swap_state"

.field private static final PROP_SD_SWAP_FALSE:Ljava/lang/String; = "0"

.field private static final PROP_SD_SWAP_TRUE:Ljava/lang/String; = "1"

.field private static final PROP_SWAPPING:Ljava/lang/String; = "sys.sd.swapping"

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field private static final SD_EXIST:Ljava/lang/String; = "SD_EXIST"

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE:Ljava/lang/String; = "storage"

.field private static final TAG_STORAGE_LIST:Ljava/lang/String; = "StorageList"

.field private static final TURNONUSB_SYNC_LOCK:Ljava/lang/Object; = null

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z


# instance fields
.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private mBootCompleted:Z

.field private final mBootIPOReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContext:Landroid/content/Context;

.field private final mDMReceiver:Landroid/content/BroadcastReceiver;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private mEmulatedTemplate:Landroid/os/storage/StorageVolume;

.field private mFirstTimeSDSwapIntent:Z

.field private mFirstTime_SwapStateForSDSwapMountPoint:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsAnyAllowUMS:Z

.field private mIsTurnOnOffUsb:Z

.field private mIsUsbConnected:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMountAll:Z

.field private mMountSwap:Z

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mOldUserId:I

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mSD1BootMounted:Z

.field private mSD2BootMounted:Z

.field private mSendUmsConnectedOnBoot:Z

.field private mSetDefaultEnable:Z

.field private mShutdownCount:I

.field private mShutdownRet:I

.field private mShutdownSD:Z

.field private mSwapStateForSDSwapIntent:Z

.field private mSwapStateForSDSwapMountPoint:Z

.field private volatile mSystemReady:Z

.field private mUMSCount:I

.field private mUmountSdByUserSwitch:Z

.field private mUmsAvailable:Z

.field private mUmsEnabling:Z

.field private mUnmountPrimary:Z

.field private mUnmountSwap:Z

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumePrimary:Landroid/os/storage/StorageVolume;

.field private mVolumeSecondary:Landroid/os/storage/StorageVolume;

.field private final mVolumeStates:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumes:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesByPath:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 255
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/MountService;->TURNONUSB_SYNC_LOCK:Ljava/lang/Object;

    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;

    .line 401
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2104
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    .line 221
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    .line 224
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    .line 227
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    .line 230
    iput-boolean v2, p0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 234
    iput-boolean v2, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 239
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 240
    iput-boolean v2, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 253
    iput-boolean v2, p0, Lcom/android/server/MountService;->mIsAnyAllowUMS:Z

    .line 254
    iput v2, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 260
    iput-boolean v2, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    .line 261
    iput-boolean v2, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    .line 262
    iput v2, p0, Lcom/android/server/MountService;->mShutdownRet:I

    .line 263
    iput-boolean v2, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 264
    iput-boolean v2, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 266
    iput-boolean v2, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 267
    iput-boolean v1, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    .line 268
    iput v2, p0, Lcom/android/server/MountService;->mUMSCount:I

    .line 269
    iput-boolean v2, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 270
    iput-boolean v2, p0, Lcom/android/server/MountService;->mMountAll:Z

    .line 271
    iput-boolean v2, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 279
    iput-boolean v2, p0, Lcom/android/server/MountService;->mMountSwap:Z

    .line 280
    iput-boolean v2, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 283
    iput-boolean v1, p0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    .line 284
    iput-boolean v2, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    .line 285
    iput-boolean v2, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapMountPoint:Z

    .line 286
    iput-boolean v1, p0, Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z

    .line 295
    iput v3, p0, Lcom/android/server/MountService;->mOldUserId:I

    .line 296
    iput v3, p0, Lcom/android/server/MountService;->mUserId:I

    .line 304
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 404
    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 421
    iput-object v11, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 816
    new-instance v0, Lcom/android/server/MountService$2;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 855
    new-instance v0, Lcom/android/server/MountService$3;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 866
    new-instance v0, Lcom/android/server/MountService$4;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDMReceiver:Landroid/content/BroadcastReceiver;

    .line 946
    new-instance v0, Lcom/android/server/MountService$5;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mBootIPOReceiver:Landroid/content/BroadcastReceiver;

    .line 2105
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 2107
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2108
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/MountService;->readStorageListLocked()V

    .line 2109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2114
    const-string v0, "package"

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 2117
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MountService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2118
    iget-object v0, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2119
    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 2122
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 2123
    .local v9, userFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2124
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2127
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2128
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v9, v11, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2132
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2133
    :try_start_1
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageVolume;

    .line 2134
    .local v10, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2140
    .end local v10           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2152
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 2153
    .local v6, bootIPOFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2154
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2155
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mBootIPOReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v6, v11, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2158
    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 2165
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "VoldConnector"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 2167
    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "VoldConnector"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2168
    .local v8, thread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 2174
    return-void

    .line 2109
    .end local v6           #bootIPOFilter:Landroid/content/IntentFilter;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #thread:Ljava/lang/Thread;
    .end local v9           #userFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2140
    .restart local v9       #userFilter:Landroid/content/IntentFilter;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/MountService;->mUMSCount:I

    return v0
.end method

.method static synthetic access$1010(Lcom/android/server/MountService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/MountService;->mUMSCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/MountService;->mUMSCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/MountService;->mShutdownRet:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/MountService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/server/MountService;->mShutdownRet:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/MountService;->mShutdownCount:I

    return v0
.end method

.method static synthetic access$1410(Lcom/android/server/MountService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/MountService;->mShutdownCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/MountService;->mShutdownCount:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;Landroid/os/UserHandle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/MountService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/server/MountService;->mOldUserId:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/MountService;->mUserId:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/MountService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/server/MountService;->mUserId:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V

    return-void
.end method

.method static synthetic access$2600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->enableUSBFuction(Z)V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/MountService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/MountService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->enableDefaultPathDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/MountService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->doGetCDRomState()I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doShareUnshareCDRom(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/server/MountService;->TURNONUSB_SYNC_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 7
    .parameter "obbState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3141
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3142
    .local v0, binder:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3144
    .local v4, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_1

    .line 3145
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3146
    .restart local v4       #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3156
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3158
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3173
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3174
    return-void

    .line 3148
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 3149
    .local v3, o:Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3150
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3159
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #o:Lcom/android/server/MountService$ObbState;
    :catch_0
    move-exception v1

    .line 3164
    .local v1, e:Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3165
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3166
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3170
    :cond_3
    throw v1
.end method

.method private addVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .locals 4
    .parameter "volume"

    .prologue
    .line 2071
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVolumeLocked() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2073
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 2074
    .local v0, existing:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 2075
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    :cond_0
    return-void
.end method

.method public static buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 8
    .parameter "canonicalPath"
    .parameter "userId"
    .parameter "forVold"

    .prologue
    .line 3602
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3642
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 3606
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3609
    .local v4, path:Ljava/lang/String;
    new-instance v5, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v5, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3612
    .local v5, userEnv:Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3614
    .local v0, externalPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3617
    .local v1, legacyExternalPath:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3618
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3626
    :goto_1
    const-string v2, "Android/obb"

    .line 3627
    .local v2, obbPath:Ljava/lang/String;
    const-string v6, "Android/obb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3628
    const-string v6, "Android/obb"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3630
    if-eqz p2, :cond_3

    .line 3631
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getEmulatedStorageObbSource()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3619
    .end local v2           #obbPath:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3620
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 3633
    .restart local v2       #obbPath:Ljava/lang/String;
    :cond_3
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3634
    .local v3, ownerEnv:Landroid/os/Environment$UserEnvironment;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/os/Environment$UserEnvironment;->getExternalStorageObbDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3639
    .end local v3           #ownerEnv:Landroid/os/Environment$UserEnvironment;
    :cond_4
    if-eqz p2, :cond_5

    .line 3640
    new-instance v6, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getEmulatedStorageSource(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 3642
    :cond_5
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    .locals 6
    .parameter "user"

    .prologue
    .line 2052
    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_0

    .line 2053
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Missing emulated volume multi-user template"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2056
    :cond_0
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 2057
    .local v1, userEnv:Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2058
    .local v0, path:Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    invoke-static {v3, v0, p1}, Landroid/os/storage/StorageVolume;->fromTemplate(Landroid/os/storage/StorageVolume;Ljava/io/File;Landroid/os/UserHandle;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 2059
    .local v2, volume:Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 2060
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 2062
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSystemReady:Z

    if-eqz v3, :cond_1

    .line 2063
    const-string v3, "mounted"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2068
    :goto_0
    return-void

    .line 2066
    :cond_1
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .locals 8
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 1795
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "format"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1804
    :goto_0
    return v2

    .line 1797
    :catch_0
    move-exception v1

    .line 1798
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 1799
    .local v0, code:I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_0

    .line 1800
    const/4 v2, -0x2

    goto :goto_0

    .line 1801
    :cond_0
    const/16 v2, 0x193

    if-ne v0, v2, :cond_1

    .line 1802
    const/4 v2, -0x4

    goto :goto_0

    .line 1804
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private doGetCDRomState()I
    .locals 15

    .prologue
    const/4 v11, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 3757
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v13, "cd-rom status"

    new-array v14, v9, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3761
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v12, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v12, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3767
    .local v6, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3768
    .local v4, line:Ljava/lang/String;
    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3769
    .local v7, tok:[Ljava/lang/String;
    array-length v12, v7

    if-ge v12, v11, :cond_1

    .line 3770
    const-string v9, "MountService"

    const-string v10, "Malformed response get CD rom ststus"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #tok:[Ljava/lang/String;
    :goto_0
    return v8

    .line 3762
    :catch_0
    move-exception v2

    .line 3763
    .local v2, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v9, "MountService"

    const-string v10, "Failed to get CD rom ststus!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3776
    .end local v2           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #tok:[Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    :try_start_1
    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 3781
    .local v1, code:I
    const/16 v12, 0xd6

    if-ne v1, v12, :cond_6

    .line 3782
    const-string v12, "Shared"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v8, v9

    .line 3783
    goto :goto_0

    .line 3777
    .end local v1           #code:I
    :catch_1
    move-exception v5

    .line 3778
    .local v5, nfe:Ljava/lang/NumberFormatException;
    const-string v11, "MountService"

    const-string v12, "Error parsing code %s"

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v13, v7, v9

    aput-object v13, v10, v9

    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3784
    .end local v5           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_2
    const-string v12, "Unshared"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v8, v10

    .line 3785
    goto :goto_0

    .line 3786
    :cond_3
    const-string v12, "Sharing"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v8, v11

    .line 3787
    goto :goto_0

    .line 3788
    :cond_4
    const-string v12, "Unsharing"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3789
    const/4 v8, 0x3

    goto :goto_0

    .line 3790
    :cond_5
    const-string v12, "Not_Exist"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3791
    const/4 v8, 0x4

    goto :goto_0

    .line 3794
    :cond_6
    const-string v11, "MountService"

    const-string v12, "Unexpected response code %d"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v9

    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3798
    .end local v1           #code:I
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    :cond_7
    const-string v9, "MountService"

    const-string v10, "Got an empty response"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "path"
    .parameter "method"

    .prologue
    const/4 v2, 0x0

    .line 1812
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "shared"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1818
    .local v0, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0xd4

    if-ne v3, v4, :cond_0

    .line 1819
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1821
    .end local v0           #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    :goto_0
    return v2

    .line 1813
    :catch_0
    move-exception v1

    .line 1814
    .local v1, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read response to volume shared "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .locals 10
    .parameter "path"

    .prologue
    .line 1669
    const/4 v4, 0x0

    .line 1672
    .local v4, rc:I
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1673
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    .line 1674
    .local v5, volume:Landroid/os/storage/StorageVolume;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doMountVolume: Mouting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :try_start_1
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "mount"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-direct {v1, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1682
    .local v1, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doMountVolume  cmd:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1723
    .end local v1           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :cond_0
    :goto_0
    return v4

    .line 1674
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1684
    .restart local v5       #volume:Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v3

    .line 1688
    .local v3, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 1689
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    .line 1690
    .local v2, code:I
    const/16 v6, 0x191

    if-ne v2, v6, :cond_1

    .line 1694
    const/4 v4, -0x2

    .line 1718
    :goto_1
    if-eqz v0, :cond_0

    .line 1719
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1695
    :cond_1
    const/16 v6, 0x192

    if-ne v2, v6, :cond_2

    .line 1696
    const-string v6, "MountService"

    const-string v7, " updating volume state :: media nofs"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    const-string v6, "nofs"

    invoke-direct {p0, v5, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1701
    const-string v0, "android.intent.action.MEDIA_NOFS"

    .line 1702
    const/4 v4, -0x3

    goto :goto_1

    .line 1703
    :cond_2
    const/16 v6, 0x193

    if-ne v2, v6, :cond_3

    .line 1704
    const-string v6, "MountService"

    const-string v7, "updating volume state media corrupt"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    const-string v6, "unmountable"

    invoke-direct {p0, v5, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1709
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 1710
    const/4 v4, -0x4

    goto :goto_1

    .line 1712
    :cond_3
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private doSDSwapVolumeUpdate()V
    .locals 2

    .prologue
    .line 3854
    const-string v0, "MountService"

    const-string v1, "doSDSwapVolumeUpdate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    const-string v0, "MountService"

    const-string v1, "MTK_2SDCARD_SWAP not enable!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3857
    return-void
.end method

.method private doShareSDVolumeUpdate()V
    .locals 0

    .prologue
    .line 3836
    return-void
.end method

.method private doShareUnshareCDRom(Z)V
    .locals 7
    .parameter "share"

    .prologue
    .line 3744
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShareUnshareCDRom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "cd-rom %sshare"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    :goto_0
    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 3751
    :goto_1
    return-void

    .line 3746
    :cond_0
    const-string v1, "un"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3748
    :catch_0
    move-exception v0

    .line 3749
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare CD Rom"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "path"
    .parameter "method"
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1047
    const-string v1, "ums"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1048
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Method %s not supported"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1052
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    const-string v1, "share"

    :goto_0
    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v1, 0x2

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1056
    :goto_1
    return-void

    .line 1052
    :cond_1
    const-string v1, "unshare"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private doUnmountVolume(Ljava/lang/String;ZZ)I
    .locals 9
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    const/16 v3, 0x194

    const/4 v4, 0x0

    .line 1738
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1788
    :goto_0
    return v3

    .line 1748
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 1752
    const-string v5, "/storage/sdcard0"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1753
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4, v4}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1757
    :cond_1
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1758
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_2

    .line 1762
    const-string v5, "force_and_revert"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1773
    :goto_1
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    .line 1775
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1777
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 1778
    goto :goto_0

    .line 1764
    :cond_2
    if-eqz p2, :cond_3

    .line 1768
    :try_start_2
    const-string v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1779
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v2

    .line 1782
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1783
    .local v1, code:I
    if-ne v1, v3, :cond_4

    .line 1784
    const/4 v3, -0x5

    goto :goto_0

    .line 1771
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0       #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :cond_3
    :try_start_3
    const-string v5, "swap"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1777
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1785
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v1       #code:I
    .restart local v2       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_4
    const/16 v3, 0x195

    if-ne v1, v3, :cond_5

    .line 1786
    const/4 v3, -0x7

    goto :goto_0

    .line 1788
    :cond_5
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private enableDefaultPathDialog()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 4116
    const/4 v2, 0x0

    .line 4117
    .local v2, mountCount:I
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4118
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4119
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4121
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4122
    .local v3, state:Ljava/lang/String;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableDefaultPathDialog state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4123
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4127
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v3           #state:Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 4128
    if-le v2, v4, :cond_2

    :goto_1
    return v4

    .line 4127
    .end local v1           #iter:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4128
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private enableDefaultToast()Z
    .locals 5

    .prologue
    .line 4136
    const/4 v1, 0x0

    .line 4137
    .local v1, internal:Z
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4138
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 4139
    .local v2, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4140
    const/4 v1, 0x1

    .line 4144
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    monitor-exit v4

    .line 4145
    return v1

    .line 4144
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private enableUSBFuction(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 3729
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3731
    const/4 v0, 0x0

    .line 3732
    .local v0, cmd:Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "USB enable"

    .line 3733
    :goto_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 3738
    :goto_1
    return-void

    .line 3732
    :cond_0
    const-string v0, "USB disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3734
    :catch_0
    move-exception v2

    .line 3735
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3736
    .local v1, code:I
    const-string v3, "MountService"

    const-string v4, "enableUSBFunction failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4098
    const-class v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getDefaultPath"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    .locals 4

    .prologue
    .line 2089
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2090
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 2091
    .local v1, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2092
    monitor-exit v3

    .line 2096
    .end local v1           #volume:Landroid/os/storage/StorageVolume;
    :goto_0
    return-object v1

    .line 2095
    :cond_1
    monitor-exit v3

    .line 2096
    const/4 v1, 0x0

    goto :goto_0

    .line 2095
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getSwapState()Z
    .locals 4

    .prologue
    .line 4107
    const-class v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getSdSwapState"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private getUMSPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3846
    const-string v0, "/storage/sdcard0"

    return-object v0
.end method

.method private getUmsEnabling()Z
    .locals 2

    .prologue
    .line 2317
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2318
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v1

    return v0

    .line 2319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSystemReady()V
    .locals 18

    .prologue
    .line 723
    const-string v13, "MountService"

    const-string v14, "handleSystemReady"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 726
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-direct {v9, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 727
    .local v9, snapshot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 737
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 738
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    .line 739
    .local v1, count:I
    new-array v13, v1, [Ljava/lang/String;

    invoke-interface {v4, v13}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 740
    .local v7, rawPaths:[Ljava/lang/String;
    new-array v6, v1, [Ljava/lang/String;

    .line 741
    .local v6, paths:[Ljava/lang/String;
    new-array v11, v1, [Ljava/lang/String;

    .line 748
    .local v11, states:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 749
    add-int/lit8 v13, v1, -0x1

    sub-int/2addr v13, v2

    aget-object v13, v7, v13

    aput-object v13, v6, v2

    .line 750
    aget-object v13, v6, v2

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v11, v2

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 727
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #paths:[Ljava/lang/String;
    .end local v7           #rawPaths:[Ljava/lang/String;
    .end local v9           #snapshot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 755
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #paths:[Ljava/lang/String;
    .restart local v7       #rawPaths:[Ljava/lang/String;
    .restart local v9       #snapshot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11       #states:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 756
    aget-object v5, v6, v2

    .line 757
    .local v5, path:Ljava/lang/String;
    aget-object v10, v11, v2

    .line 759
    .local v10, state:Ljava/lang/String;
    const-string v13, "unmounted"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 760
    const-string v13, "/storage/sdcard0"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 761
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 762
    const-string v13, "MountService"

    const-string v14, "mSD1BootMounted = true"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v8

    .line 768
    .local v8, rc:I
    if-eqz v8, :cond_2

    .line 769
    const-string v13, "MountService"

    const-string v14, "Boot-time mount failed (%d)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 774
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    .line 755
    .end local v8           #rc:I
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 763
    :cond_4
    const-string v13, "/storage/sdcard1"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 764
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 765
    const-string v13, "MountService"

    const-string v14, "mSD2BootMounted = true"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 775
    :cond_5
    const-string v13, "shared"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 780
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v14, v15}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    .line 786
    .end local v5           #path:Ljava/lang/String;
    .end local v10           #state:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 787
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 788
    .local v12, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 789
    const-string v13, "mounted"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto :goto_4

    .line 792
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v12           #volume:Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v13

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_8
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 798
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    if-eqz v13, :cond_9

    .line 799
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 800
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 805
    :cond_9
    new-instance v13, Lcom/android/server/MountService$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v13}, Lcom/android/server/MountService$1;->start()V

    .line 811
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 812
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 813
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 814
    return-void
.end method

.method private handleUserSwitch()V
    .locals 0

    .prologue
    .line 4185
    return-void
.end method

.method private isExternalStorage(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 3986
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3987
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 3988
    .local v0, volume:Landroid/os/storage/StorageVolume;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3989
    if-nez v0, :cond_0

    .line 3990
    const-string v1, "MountService"

    const-string v2, "isExternalStorage error, invalid path!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    const/4 v1, 0x0

    .line 3993
    :goto_0
    return v1

    .line 3988
    .end local v0           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3993
    .restart local v0       #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    goto :goto_0
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .locals 5
    .parameter "packageName"
    .parameter "callerUid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2879
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_1

    .line 2894
    :cond_0
    :goto_0
    return v1

    .line 2883
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 2884
    goto :goto_0

    .line 2887
    :cond_2
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 2894
    .local v0, packageUid:I
    if-eq p2, v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isVolumeRegistered(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 1496
    const/4 v1, 0x0

    .line 1497
    .local v1, isVolumeRegistered:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1498
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1499
    const/4 v1, 0x1

    .line 1503
    :cond_0
    return v1

    .line 1497
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private notifyShareAvailabilityChange(Z)V
    .locals 9
    .parameter "avail"

    .prologue
    .line 1826
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1827
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 1828
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 1829
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1831
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, p1}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1828
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1832
    :catch_0
    move-exception v4

    .line 1833
    .local v4, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1839
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1835
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 1836
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1839
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1841
    iget-boolean v6, p0, Lcom/android/server/MountService;->mSystemReady:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1842
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 1847
    :goto_2
    if-nez p1, :cond_1

    .line 1851
    const/4 v3, 0x0

    .line 1852
    .local v3, needTurnOff:Z
    iget-boolean v6, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-eqz v6, :cond_3

    .line 1853
    const/4 v3, 0x1

    .line 1868
    :goto_3
    if-eqz v3, :cond_1

    .line 1869
    new-instance v6, Lcom/android/server/MountService$8;

    invoke-direct {v6, p0}, Lcom/android/server/MountService$8;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v6}, Lcom/android/server/MountService$8;->start()V

    .line 1879
    .end local v3           #needTurnOff:Z
    :cond_1
    return-void

    .line 1844
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_2

    .line 1855
    .restart local v3       #needTurnOff:Z
    :cond_3
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1856
    :try_start_4
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1857
    .local v5, size:I
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_4

    .line 1858
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "shared"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1859
    const/4 v3, 0x1

    .line 1863
    :cond_4
    monitor-exit v7

    goto :goto_3

    .end local v5           #size:I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 1857
    .restart local v5       #size:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private notifyVolumeChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "label"
    .parameter "path"

    .prologue
    .line 1554
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:disk bad removal"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1556
    :cond_0
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:invalid lable or invalid path"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :goto_0
    return-void

    .line 1559
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v15

    .line 1560
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 1561
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:volumes is null... "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    monitor-exit v15

    goto :goto_0

    .line 1579
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1564
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1565
    .local v14, size:I
    const/4 v13, 0x0

    .line 1566
    .local v13, idx_incd:I
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:before mVolumes size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    new-instance v1, Landroid/os/storage/StorageVolume;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 1568
    .local v1, volume:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 1569
    const/4 v2, -0x1

    if-eq v13, v2, :cond_3

    .line 1570
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:remove volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1575
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:after mVolumes size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v12}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1576
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1573
    .end local v12           #i:I
    :cond_3
    monitor-exit v15

    goto/16 :goto_0

    .line 1579
    .restart local v12       #i:I
    :cond_4
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private notifyVolumeChange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 17
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 1508
    const-string v3, "MountService"

    const-string v4, "otg patition state change"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1510
    :cond_0
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange:invalid lable or invalid path"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :goto_0
    return-void

    .line 1514
    :cond_1
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    .line 1515
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange:oldState=newState,don\'t care"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1518
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1519
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 1520
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange: volumes is null... "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    monitor-exit v16

    goto :goto_0

    .line 1548
    :catchall_0
    move-exception v3

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1523
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1524
    .local v15, size:I
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:before mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 1526
    .local v2, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->isVolumeRegistered(Ljava/lang/String;)Z

    move-result v13

    .line 1527
    .local v13, bPathIncluded:Z
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:otg path is registered? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    .line 1529
    if-nez v13, :cond_4

    .line 1530
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:add volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    :cond_4
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange,Volume state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1544
    :goto_1
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:after mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_8

    .line 1546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v14}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1545
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1536
    .end local v14           #i:I
    :cond_5
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_6

    .line 1537
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange,Volume state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 1539
    :cond_6
    const/4 v3, 0x5

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_7

    .line 1540
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 1542
    :cond_7
    monitor-exit v16

    goto/16 :goto_0

    .line 1548
    .restart local v14       #i:I
    :cond_8
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 1583
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1584
    return-void
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 7
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"
    .parameter "bValue"

    .prologue
    const/4 v6, 0x7

    .line 1589
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1590
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1591
    .local v2, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1592
    .local v1, state:Ljava/lang/String;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyVolumeStateChange::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bValue::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const/4 v0, 0x0

    .line 1598
    .local v0, action:Ljava/lang/String;
    if-ne p3, v6, :cond_0

    if-eq p4, p3, :cond_0

    .line 1599
    const-string v3, "MountService"

    const-string v4, "Sending ACTION_MEDIA_UNSHARED intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1603
    :cond_0
    const/4 v3, -0x1

    if-ne p4, v3, :cond_3

    .line 1663
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1664
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1666
    :cond_2
    :goto_1
    return-void

    .line 1592
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #state:Ljava/lang/String;
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1604
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #state:Ljava/lang/String;
    .restart local v2       #volume:Landroid/os/storage/StorageVolume;
    :cond_3
    if-eqz p4, :cond_1

    .line 1606
    const/4 v3, 0x1

    if-ne p4, v3, :cond_5

    .line 1611
    const-string v3, "bad_removal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "nofs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "unmountable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1615
    const-string v3, "MountService"

    const-string v4, "updating volume state for media bad removal nofs and unmountable"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const-string v3, "unmounted"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-nez v3, :cond_4

    .line 1618
    const-string v3, "MountService"

    const-string v4, "updateDefaultpath VolumeState.Idle"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1621
    :cond_4
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_0

    .line 1623
    :cond_5
    const/4 v3, 0x2

    if-eq p4, v3, :cond_1

    .line 1624
    const/4 v3, 0x3

    if-ne p4, v3, :cond_6

    .line 1625
    const-string v3, "MountService"

    const-string v4, "updating volume state checking"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const-string v3, "checking"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1627
    const-string v0, "android.intent.action.MEDIA_CHECKING"

    goto :goto_0

    .line 1628
    :cond_6
    const/4 v3, 0x4

    if-ne p4, v3, :cond_9

    .line 1629
    const-string v3, "MountService"

    const-string v4, "updating volume state mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    if-eqz p5, :cond_8

    .line 1631
    const-string v3, "MountService"

    const-string v4, "the filesystem of the mounted storage is FAT32. update maxFileSize to 4G"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const-wide v3, 0xffffffffL

    invoke-virtual {v2, v3, v4}, Landroid/os/storage/StorageVolume;->setMaxFileSize(J)V

    .line 1637
    :goto_2
    const-string v3, "mounted"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-nez v3, :cond_7

    .line 1639
    const-string v3, "MountService"

    const-string v4, "updateDefaultpath VolumeState.Mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1642
    :cond_7
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    goto/16 :goto_0

    .line 1634
    :cond_8
    const-string v3, "MountService"

    const-string v4, "the filesystem of the mounted storage is not FAT32. update maxFileSize to 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/storage/StorageVolume;->setMaxFileSize(J)V

    goto :goto_2

    .line 1643
    :cond_9
    const/4 v3, 0x5

    if-eq p4, v3, :cond_1

    .line 1645
    const/4 v3, 0x6

    if-eq p4, v3, :cond_1

    .line 1646
    if-ne p4, v6, :cond_a

    .line 1647
    const-string v3, "MountService"

    const-string v4, "Updating volume state media mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const-string v3, "unmounted"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1652
    const-string v3, "MountService"

    const-string v4, "Updating media shared"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const-string v3, "shared"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1654
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 1655
    const-string v3, "MountService"

    const-string v4, "Sending ACTION_MEDIA_SHARED intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1656
    :cond_a
    const/16 v3, 0x8

    if-ne p4, v3, :cond_b

    .line 1657
    const-string v3, "MountService"

    const-string v4, "Live shared mounts not supported yet!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1660
    :cond_b
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled VolumeState {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readStorageListLocked()V
    .locals 31

    .prologue
    .line 1927
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .local v24, resources:Landroid/content/res/Resources;
    const v19, #android:xml@storage_list#t

    .local v19, id:I
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v22

    .line 1935
    .local v22, parser:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v22 .. v22}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    .line 1938
    .local v14, attrs:Landroid/util/AttributeSet;
    :try_start_0
    const-string v3, "StorageList"

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1940
    :cond_0
    :goto_0
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1942
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    .line 1943
    .local v17, element:Ljava/lang/String;
    if-nez v17, :cond_2

    .line 2037
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v20, 0x1

    .line 2038
    .local v20, index:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2039
    .local v2, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2040
    add-int/lit8 v21, v20, 0x1

    .end local v20           #index:I
    .local v21, index:I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v20, v21

    .end local v21           #index:I
    .restart local v20       #index:I
    goto :goto_2

    .line 1945
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #index:I
    :cond_2
    :try_start_1
    const-string v3, "storage"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1946
    sget-object v3, Lcom/android/internal/R$styleable;->Storage:[I

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1949
    .local v13, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1951
    .local v23, path:Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v12, -0x1

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1953
    .local v4, descriptionId:I
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1955
    .local v15, description:Ljava/lang/CharSequence;
    const/4 v3, 0x2

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1957
    .local v5, primary:Z
    const/4 v3, 0x3

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1959
    .local v6, removable:Z
    const/4 v3, 0x4

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1961
    .local v7, emulated:Z
    const/4 v3, 0x5

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 1963
    .local v8, mtpReserve:I
    const/4 v3, 0x6

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 1966
    .local v9, allowMassStorage:Z
    const/4 v3, 0x7

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x400

    mul-long v27, v27, v29

    const-wide/16 v29, 0x400

    mul-long v10, v27, v29

    .line 1981
    .local v10, maxFileSize:J
    const-string v3, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "got storage path: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " description: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " primary: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " removable: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " emulated: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " mtpReserve: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " allowMassStorage: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " maxFileSize: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    if-eqz v7, :cond_4

    .line 1990
    new-instance v2, Landroid/os/storage/StorageVolume;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .end local v5           #primary:Z
    .end local v6           #removable:Z
    .end local v7           #emulated:Z
    .end local v9           #allowMassStorage:Z
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    .line 1993
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v26

    .line 1994
    .local v26, userManager:Lcom/android/server/pm/UserManagerService;
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/UserInfo;

    .line 1995
    .local v25, user:Landroid/content/pm/UserInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 2030
    .end local v4           #descriptionId:I
    .end local v8           #mtpReserve:I
    .end local v10           #maxFileSize:J
    .end local v13           #a:Landroid/content/res/TypedArray;
    .end local v15           #description:Ljava/lang/CharSequence;
    .end local v17           #element:Ljava/lang/String;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v23           #path:Ljava/lang/String;
    .end local v25           #user:Landroid/content/pm/UserInfo;
    .end local v26           #userManager:Lcom/android/server/pm/UserManagerService;
    :catch_0
    move-exception v16

    .line 2031
    .local v16, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2037
    .end local v16           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v20, 0x1

    .line 2038
    .restart local v20       #index:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2039
    .restart local v2       #volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v12

    if-nez v12, :cond_3

    .line 2040
    add-int/lit8 v21, v20, 0x1

    .end local v20           #index:I
    .restart local v21       #index:I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v20, v21

    .end local v21           #index:I
    .restart local v20       #index:I
    goto :goto_5

    .line 2007
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #index:I
    .restart local v4       #descriptionId:I
    .restart local v5       #primary:Z
    .restart local v6       #removable:Z
    .restart local v7       #emulated:Z
    .restart local v8       #mtpReserve:I
    .restart local v9       #allowMassStorage:Z
    .restart local v10       #maxFileSize:J
    .restart local v13       #a:Landroid/content/res/TypedArray;
    .restart local v15       #description:Ljava/lang/CharSequence;
    .restart local v17       #element:Ljava/lang/String;
    .restart local v23       #path:Ljava/lang/String;
    :cond_4
    if-eqz v23, :cond_5

    if-nez v15, :cond_7

    .line 2008
    :cond_5
    :try_start_3
    const-string v3, "MountService"

    const-string v12, "Missing storage path or description in readStorageList"

    invoke-static {v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    .end local v5           #primary:Z
    .end local v6           #removable:Z
    .end local v7           #emulated:Z
    .end local v9           #allowMassStorage:Z
    :cond_6
    :goto_6
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 2032
    .end local v4           #descriptionId:I
    .end local v8           #mtpReserve:I
    .end local v10           #maxFileSize:J
    .end local v13           #a:Landroid/content/res/TypedArray;
    .end local v15           #description:Ljava/lang/CharSequence;
    .end local v17           #element:Ljava/lang/String;
    .end local v23           #path:Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 2033
    .local v16, e:Ljava/io/IOException;
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2010
    .end local v16           #e:Ljava/io/IOException;
    .restart local v4       #descriptionId:I
    .restart local v5       #primary:Z
    .restart local v6       #removable:Z
    .restart local v7       #emulated:Z
    .restart local v8       #mtpReserve:I
    .restart local v9       #allowMassStorage:Z
    .restart local v10       #maxFileSize:J
    .restart local v13       #a:Landroid/content/res/TypedArray;
    .restart local v15       #description:Ljava/lang/CharSequence;
    .restart local v17       #element:Ljava/lang/String;
    .restart local v23       #path:Ljava/lang/String;
    :cond_7
    :try_start_5
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 2013
    .restart local v2       #volume:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 2015
    if-eqz v9, :cond_8

    .line 2016
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/MountService;->mIsAnyAllowUMS:Z

    .line 2019
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_9

    const-string v3, "/storage/sdcard0"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2020
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    goto :goto_6

    .line 2021
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_6

    const-string v3, "/storage/sdcard1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2022
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    .line 2043
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v4           #descriptionId:I
    .end local v5           #primary:Z
    .end local v6           #removable:Z
    .end local v7           #emulated:Z
    .end local v8           #mtpReserve:I
    .end local v9           #allowMassStorage:Z
    .end local v10           #maxFileSize:J
    .end local v13           #a:Landroid/content/res/TypedArray;
    .end local v15           #description:Ljava/lang/CharSequence;
    .end local v17           #element:Ljava/lang/String;
    .end local v23           #path:Ljava/lang/String;
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v20       #index:I
    :cond_a
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2037
    throw v3

    .line 2043
    .restart local v17       #element:Ljava/lang/String;
    :cond_b
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2045
    return-void

    .line 2037
    .end local v17           #element:Ljava/lang/String;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #index:I
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_4

    .restart local v17       #element:Ljava/lang/String;
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_1
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 4
    .parameter "obbState"

    .prologue
    .line 3177
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3178
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3179
    .local v1, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_1

    .line 3180
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3181
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 3183
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3184
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3188
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3189
    return-void
.end method

.method private removeVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 2082
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVolumeLocked() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2084
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    return-void
.end method

.method private sendSDSwapIntent()V
    .locals 5

    .prologue
    .line 3965
    invoke-direct {p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v1

    .line 3966
    .local v1, sdSwapStatus:Z
    iget-boolean v2, p0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    if-eq v1, v2, :cond_1

    .line 3967
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    .line 3974
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.SD_SWAP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3975
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "SD_EXIST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3976
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSDSwapIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3978
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    .line 3979
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 3970
    :cond_1
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSDSwapIntent: already sent INTENT_SD_SWAP, Just skip this. status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .locals 5
    .parameter "action"
    .parameter "volume"
    .parameter "user"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1882
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1884
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/MountService;->mUMSCount:I

    if-gtz v1, :cond_1

    :cond_0
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/MountService;->mMountAll:Z

    if-ne v1, v3, :cond_2

    .line 1887
    :cond_1
    const-string v1, "mount_unmount_all"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1890
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1891
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/storage/sdcard0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1892
    iput-boolean v4, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 1893
    iget-boolean v1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    if-nez v1, :cond_4

    .line 1894
    const-string v1, "first_boot_mounted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1895
    const-string v1, "MountService"

    const-string v2, "sendStorageIntent mSD1BootMounted"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_4
    :goto_0
    const-string v1, "storage_volume"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1906
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStorageIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1908
    return-void

    .line 1897
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/storage/sdcard1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1898
    iput-boolean v4, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 1899
    iget-boolean v1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    if-nez v1, :cond_4

    .line 1900
    const-string v1, "first_boot_mounted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1901
    const-string v1, "MountService"

    const-string v2, "sendStorageIntent mSD2BootMounted"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendUmsIntent(Z)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1911
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.UMS_CONNECTED"

    :goto_0
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1914
    return-void

    .line 1911
    :cond_0
    const-string v0, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_0
.end method

.method private setDefaultPath(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 4102
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    const-class v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setDefaultPath"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4104
    return-void
.end method

.method private setUmsEnabling(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2323
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2324
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 2325
    monitor-exit v1

    .line 2326
    return-void

    .line 2325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateDefaultPathForSwap(ZLjava/lang/String;)V
    .locals 0
    .parameter "mount"
    .parameter "path"

    .prologue
    .line 4065
    return-void
.end method

.method private updateDefaultpath()V
    .locals 8

    .prologue
    .line 3705
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 3706
    .local v0, defaultPath:Ljava/lang/String;
    move-object v4, v0

    .line 3707
    .local v4, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3708
    .local v3, needChange:Z
    const-string v5, "mounted"

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3709
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v6

    .line 3710
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3711
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3712
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 3713
    const-string v5, "mounted"

    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3714
    const/4 v3, 0x1

    .line 3718
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3719
    if-eqz v3, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3720
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDefaultPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->setDefaultPath(Ljava/lang/String;)V

    .line 3724
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_1
    return-void

    .line 3711
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3718
    .end local v1           #i:I
    .end local v2           #length:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .locals 1
    .parameter "volume"
    .parameter "state"

    .prologue
    .line 1059
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    return-void
.end method

.method private updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "volume"
    .parameter "state"
    .parameter "label"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1063
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1065
    .local v4, path:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1066
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v6, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1067
    .local v3, oldState:Ljava/lang/String;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1070
    const-string v6, "MountService"

    const-string v7, "Duplicate state transition (%s -> %s) for %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v9

    aput-object p2, v8, v10

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :goto_0
    return-void

    .line 1067
    .end local v3           #oldState:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1075
    .restart local v3       #oldState:Ljava/lang/String;
    :cond_0
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "volume state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const-string v6, "/storage/sdcard0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1095
    const-string v6, "unmounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1096
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v9, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1103
    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v7, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v4}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updateAsecVolumeStateBaidu(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_2
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_3

    .line 1112
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1114
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_3
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, v4, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1111
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1105
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    :cond_2
    const-string v6, "mounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1106
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v10, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_1

    .line 1115
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_0
    move-exception v5

    .line 1116
    .local v5, rex:Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1122
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v5           #rex:Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 1118
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 1119
    .local v1, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1122
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_3
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .parameter "perm"

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1918
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1920
    :cond_0
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4
    .parameter "latch"

    .prologue
    .line 708
    :goto_0
    const-wide/16 v1, 0x1388

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    return-void

    .line 711
    :cond_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " still waiting for MountService ready..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "MountService"

    const-string v2, "Interrupt while waiting for MountService to be ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForReady()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 703
    return-void
.end method

.method private warnOnNotMounted()V
    .locals 4

    .prologue
    .line 2594
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 2595
    .local v1, primary:Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_0

    .line 2596
    const/4 v0, 0x0

    .line 2598
    .local v0, mounted:Z
    :try_start_0
    const-string v2, "mounted"

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2602
    :goto_0
    if-nez v0, :cond_0

    .line 2603
    const-string v2, "MountService"

    const-string v3, "getSecureContainerList() called when storage not mounted"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    .end local v0           #mounted:Z
    :cond_0
    return-void

    .line 2599
    .restart local v0       #mounted:Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public changeEncryptionPassword(Ljava/lang/String;)I
    .locals 7
    .parameter "password"

    .prologue
    .line 3063
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3064
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3067
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3073
    const-string v2, "MountService"

    const-string v3, "changing encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "changepw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3079
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3082
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 3080
    :catch_0
    move-exception v0

    .line 3082
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 7
    .parameter "id"
    .parameter "sizeMb"
    .parameter "fstype"
    .parameter "key"
    .parameter "ownerUid"
    .parameter "external"

    .prologue
    .line 2631
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2632
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2633
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2635
    const/4 v1, 0x0

    .line 2637
    .local v1, rc:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "create"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    const/4 v2, 0x4

    aput-object p4, v5, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x6

    if-eqz p6, :cond_1

    const-string v2, "1"

    :goto_0
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2643
    :goto_1
    if-nez v1, :cond_0

    .line 2644
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2645
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2646
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2648
    :cond_0
    return v1

    .line 2637
    :cond_1
    :try_start_2
    const-string v2, "0"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2639
    :catch_0
    move-exception v0

    .line 2640
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_1

    .line 2646
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .locals 8
    .parameter "password"

    .prologue
    .line 2999
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3000
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3003
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3009
    const-string v3, "MountService"

    const-string v4, "decrypting storage..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "checkpw"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3016
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3017
    .local v0, code:I
    if-nez v0, :cond_1

    .line 3020
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/MountService$10;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$10;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3034
    .end local v0           #code:I
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :cond_1
    :goto_0
    return v0

    .line 3032
    :catch_0
    move-exception v1

    .line 3034
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    goto :goto_0
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2686
    const-string v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2687
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2688
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2696
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2698
    const/4 v3, 0x0

    .line 2700
    .local v3, rc:I
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "destroy"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2701
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_0

    .line 2702
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2704
    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2714
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v3, :cond_2

    .line 2715
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2716
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2717
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2719
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2722
    :cond_2
    return v3

    .line 2705
    :catch_0
    move-exception v2

    .line 2706
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2707
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 2708
    const/4 v3, -0x7

    goto :goto_0

    .line 2710
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 2719
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3648
    iget-object v10, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 3649
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " without permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3694
    :goto_0
    return-void

    .line 3655
    :cond_0
    iget-object v11, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v11

    .line 3656
    :try_start_0
    const-string v10, "  mObbMounts:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    iget-object v10, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3659
    .local v1, binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3660
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3661
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    const-string v10, "    Key="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3662
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3663
    .local v8, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/MountService$ObbState;

    .line 3664
    .local v7, obbState:Lcom/android/server/MountService$ObbState;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3676
    .end local v1           #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #obbState:Lcom/android/server/MountService$ObbState;
    .end local v8           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 3668
    .restart local v1       #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_2
    :try_start_1
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3669
    const-string v10, "  mObbPathToStateMap:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3670
    iget-object v10, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3671
    .local v6, maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3672
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3673
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3674
    const-string v10, " -> "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/MountService$ObbState;

    invoke-virtual {v10}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 3676
    .end local v3           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3678
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3680
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 3681
    :try_start_2
    const-string v10, "  mVolumes:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3683
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3684
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v0, :cond_4

    .line 3685
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageVolume;

    .line 3686
    .local v9, v:Landroid/os/storage/StorageVolume;
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3687
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3684
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3689
    .end local v9           #v:Landroid/os/storage/StorageVolume;
    :cond_4
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3691
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3692
    const-string v10, "  mConnection:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3693
    iget-object v10, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3689
    .end local v0           #N:I
    .end local v4           #i:I
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 7
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 3039
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3040
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3043
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3049
    const-string v2, "MountService"

    const-string v3, "encrypting storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "enablecrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3059
    :goto_0
    return v1

    .line 3054
    :catch_0
    move-exception v0

    .line 3056
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 7
    .parameter "id"

    .prologue
    .line 2652
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2653
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2655
    const/4 v1, 0x0

    .line 2657
    .local v1, rc:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "finalize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2665
    :goto_0
    return v1

    .line 2662
    :catch_0
    move-exception v0

    .line 2663
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public finishMediaUpdate()V
    .locals 2

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2876
    return-void
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .parameter "id"
    .parameter "gid"
    .parameter "filename"

    .prologue
    .line 2669
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2670
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2672
    const/4 v1, 0x0

    .line 2674
    .local v1, rc:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fixperms"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2682
    :goto_0
    return v1

    .line 2679
    :catch_0
    move-exception v0

    .line 2680
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 2561
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2562
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2564
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEncryptionState()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 2977
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2984
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cryptocomplete"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2985
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2993
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 2986
    :catch_0
    move-exception v0

    .line 2988
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2990
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 2992
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "rawPath"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2898
    const-string v5, "rawPath cannot be null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2900
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2901
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2904
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v5

    .line 2905
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 2906
    .local v3, state:Lcom/android/server/MountService$ObbState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2907
    if-nez v3, :cond_1

    .line 2908
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find OBB mounted at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    :cond_0
    :goto_0
    return-object v4

    .line 2906
    .end local v3           #state:Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2914
    .restart local v3       #state:Lcom/android/server/MountService$ObbState;
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "obb"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "path"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2915
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v5, 0xd3

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2916
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_0

    .line 2917
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    .line 2918
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2919
    .local v0, code:I
    const/16 v5, 0x196

    if-eq v0, v5, :cond_0

    .line 2922
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2854
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2855
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2856
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2860
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fspath"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2861
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2862
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2867
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 2863
    :catch_0
    move-exception v1

    .line 2864
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2865
    .local v0, code:I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 2866
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    const/4 v3, 0x0

    goto :goto_0

    .line 2869
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2609
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2610
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2611
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2614
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "asec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2617
    :goto_0
    return-object v1

    .line 2616
    :catch_0
    move-exception v0

    .line 2617
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-array v1, v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2833
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2834
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2835
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2839
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "path"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2840
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2841
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2846
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 2842
    :catch_0
    move-exception v1

    .line 2843
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2844
    .local v0, code:I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 2845
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    const/4 v3, 0x0

    goto :goto_0

    .line 2848
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 12
    .parameter "path"

    .prologue
    const/4 v11, 0x0

    .line 2568
    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2569
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2571
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "storage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "users"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    const/16 v7, 0x70

    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    .line 2576
    .local v4, r:[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .line 2577
    .local v0, data:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 2578
    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2580
    .local v5, tok:[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2577
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2581
    :catch_0
    move-exception v3

    .line 2582
    .local v3, nfe:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v6, "MountService"

    const-string v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v5, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    const/4 v6, 0x0

    new-array v0, v6, [I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2589
    .end local v0           #data:[I
    .end local v2           #i:I
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    .end local v4           #r:[Ljava/lang/String;
    .end local v5           #tok:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 2587
    :catch_1
    move-exception v1

    .line 2588
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "MountService"

    const-string v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2589
    new-array v0, v11, [I

    goto :goto_1
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3122
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3123
    .local v1, callingUserId:I
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.ACCESS_ALL_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    .line 3127
    .local v0, accessAll:Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3128
    :try_start_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3129
    .local v2, filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 3130
    .local v6, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    .line 3131
    .local v4, owner:Landroid/os/UserHandle;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne v10, v1, :cond_4

    :cond_1
    move v5, v7

    .line 3132
    .local v5, ownerMatch:Z
    :goto_2
    if-nez v0, :cond_2

    if-eqz v5, :cond_0

    .line 3133
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3137
    .end local v2           #filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #owner:Landroid/os/UserHandle;
    .end local v5           #ownerMatch:Z
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .end local v0           #accessAll:Z
    :cond_3
    move v0, v8

    .line 3123
    goto :goto_0

    .restart local v0       #accessAll:Z
    .restart local v2       #filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #owner:Landroid/os/UserHandle;
    .restart local v6       #volume:Landroid/os/storage/StorageVolume;
    :cond_4
    move v5, v8

    .line 3131
    goto :goto_2

    .line 3136
    .end local v4           #owner:Landroid/os/UserHandle;
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/storage/StorageVolume;

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v7
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "mountPoint"

    .prologue
    .line 2469
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2470
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2471
    .local v0, state:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2472
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Unknown volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2474
    const-string v0, "removed"

    .line 2482
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 2477
    :cond_1
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): ERROR!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    const-string v0, "error"

    goto :goto_0

    .line 2483
    .end local v0           #state:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isExternalStorageEmulated()Z
    .locals 1

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .parameter "rawPath"

    .prologue
    .line 2929
    const-string v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2930
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 2931
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2932
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 2798
    const-string v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2799
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2800
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2802
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2803
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2804
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 2

    .prologue
    .line 2329
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2331
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2332
    const/4 v0, 0x1

    .line 2335
    :goto_0
    return v0

    .line 2334
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2335
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    monitor-exit v1

    goto :goto_0

    .line 2336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 6

    .prologue
    .line 2440
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2446
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2447
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2448
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    .line 2449
    .local v2, paths:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2450
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2449
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2452
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2454
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 2455
    aget-object v3, v2, v1

    const-string v4, "ums"

    invoke-direct {p0, v3, v4}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2456
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsbMassStorageEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    const/4 v3, 0x1

    .line 2462
    :goto_2
    return v3

    .line 2452
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #paths:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2454
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #paths:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2461
    :cond_2
    const-string v3, "MountService"

    const-string v4, "isUsbMassStorageEnabled: false"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public monitor()V
    .locals 1

    .prologue
    .line 3698
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    .line 3699
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 3701
    :cond_0
    return-void
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .locals 8
    .parameter "rawPath"
    .parameter "canonicalPath"
    .parameter "key"
    .parameter "token"
    .parameter "nonce"

    .prologue
    .line 2938
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2939
    const-string v1, "canonicalPath cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2940
    const-string v1, "token cannot be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2943
    .local v4, callingUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2944
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    .line 2945
    .local v7, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2949
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "id"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2726
    const-string v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2727
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2728
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2730
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2731
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2732
    const/4 v2, -0x6

    monitor-exit v4

    .line 2751
    :cond_0
    :goto_0
    return v2

    .line 2734
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2736
    const/4 v2, 0x0

    .line 2738
    .local v2, rc:I
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2746
    :cond_2
    :goto_1
    if-nez v2, :cond_0

    .line 2747
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2748
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2749
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2734
    .end local v2           #rc:I
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 2739
    .restart local v2       #rc:I
    :catch_0
    move-exception v1

    .line 2740
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2741
    .local v0, code:I
    const/16 v3, 0x195

    if-eq v0, v3, :cond_2

    .line 2742
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 2492
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2494
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isExternalStorage(Ljava/lang/String;)Z

    move-result v0

    .line 2506
    .local v0, isExternal:Z
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2507
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v1

    .line 2524
    .local v1, ret:I
    return v1
.end method

.method public mountVolumeNotSwap(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 4052
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 4054
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 4055
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 1133
    new-instance v0, Lcom/android/server/MountService$6;

    const-string v1, "MountService#onDaemonConnected"

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$6;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$6;->start()V

    .line 1261
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 26
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 1268
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1269
    .local v11, builder:Ljava/lang/StringBuilder;
    const-string v3, "onEvent::"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " raw= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    if-eqz p3, :cond_0

    .line 1272
    const-string v3, " cooked = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    move-object/from16 v10, p3

    .local v10, arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v24, v10, v16

    .line 1274
    .local v24, str:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1277
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v19           #len$:I
    .end local v24           #str:Ljava/lang/String;
    :cond_0
    const-string v3, "MountService"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const/16 v3, 0x25d

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 1301
    const/4 v8, 0x0

    .line 1302
    .local v8, bValue:Z
    const/16 v3, 0xc

    aget-object v3, p3, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1303
    const/4 v8, 0x1

    .line 1305
    :cond_1
    const/4 v3, 0x2

    aget-object v4, p3, v3

    const/4 v3, 0x3

    aget-object v5, p3, v3

    const/4 v3, 0x7

    aget-object v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v3, 0xa

    aget-object v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1492
    .end local v8           #bValue:Z
    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    return v3

    .line 1309
    :cond_3
    const/16 v3, 0x276

    move/from16 v0, p1

    if-eq v0, v3, :cond_4

    const/16 v3, 0x277

    move/from16 v0, p1

    if-eq v0, v3, :cond_4

    const/16 v3, 0x278

    move/from16 v0, p1

    if-ne v0, v3, :cond_a

    .line 1315
    :cond_4
    const/4 v9, 0x0

    .line 1316
    .local v9, action:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1317
    .local v18, label:Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1318
    .local v22, path:Ljava/lang/String;
    const/16 v20, -0x1

    .line 1319
    .local v20, major:I
    const/16 v21, -0x1

    .line 1322
    .local v21, minor:I
    const/4 v3, 0x6

    :try_start_0
    aget-object v3, p3, v3

    const/4 v4, 0x1

    const/4 v5, 0x6

    aget-object v5, p3, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1323
    .local v13, devComp:Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1324
    .local v14, devTok:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1325
    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 1332
    .end local v13           #devComp:Ljava/lang/String;
    .end local v14           #devTok:[Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1333
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/storage/StorageVolume;

    .line 1334
    .local v25, volume:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1335
    .local v23, state:Ljava/lang/String;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1337
    const/16 v3, 0x276

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 1355
    new-instance v3, Lcom/android/server/MountService$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/android/server/MountService$7;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$7;->start()V

    .line 1387
    const-string v9, "android.intent.action.SD_INSERTED"

    .line 1452
    :cond_5
    :goto_4
    if-eqz v9, :cond_2

    .line 1453
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v9, v1, v3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 1326
    .end local v23           #state:Ljava/lang/String;
    .end local v25           #volume:Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v15

    .line 1327
    .local v15, ex:Ljava/lang/Exception;
    const-string v3, "MountService"

    const-string v4, "Failed to parse major/minor"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1335
    .end local v15           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1388
    .restart local v23       #state:Ljava/lang/String;
    .restart local v25       #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    const/16 v3, 0x277

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    .line 1400
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bad_removal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1401
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1403
    :cond_7
    const-string v3, "MountService"

    const-string v4, "Sending eject event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1406
    const-string v3, "MountService"

    const-string v4, "Sending unmounted event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const-string v3, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1410
    const-string v3, "MountService"

    const-string v4, "Sending media removed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const-string v3, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1412
    const-string v9, "android.intent.action.MEDIA_REMOVED"

    goto :goto_4

    .line 1413
    :cond_8
    const/16 v3, 0x278

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    .line 1423
    const-string v3, "MountService"

    const-string v4, "Sending eject event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1433
    const-string v3, "MountService"

    const-string v4, "Sending unmounted event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    const-string v3, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1438
    const-string v3, "MountService"

    const-string v4, "Sending media bad removal"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const-string v3, "bad_removal"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1440
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 1442
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getDefaultPath()Ljava/lang/String;

    move-result-object v12

    .line 1443
    .local v12, defaultPath:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1445
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->enableDefaultToast()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const v5, 0x2050079

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 1449
    .end local v12           #defaultPath:Ljava/lang/String;
    :cond_9
    const-string v3, "MountService"

    const-string v4, "Unknown code {%d}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1455
    .end local v9           #action:Ljava/lang/String;
    .end local v18           #label:Ljava/lang/String;
    .end local v20           #major:I
    .end local v21           #minor:I
    .end local v22           #path:Ljava/lang/String;
    .end local v23           #state:Ljava/lang/String;
    .end local v25           #volume:Landroid/os/storage/StorageVolume;
    :cond_a
    const/16 v3, 0x279

    move/from16 v0, p1

    if-ne v0, v3, :cond_b

    .line 1457
    const/4 v9, 0x0

    .line 1458
    .restart local v9       #action:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1459
    .restart local v18       #label:Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1462
    .restart local v22       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1463
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/storage/StorageVolume;

    .line 1464
    .restart local v25       #volume:Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1465
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoldResponseCode.VolumeEjectBeforeSwap: send eject to volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 1464
    .end local v25           #volume:Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 1469
    .end local v9           #action:Ljava/lang/String;
    .end local v18           #label:Ljava/lang/String;
    .end local v22           #path:Ljava/lang/String;
    :cond_b
    const/16 v3, 0x27a

    move/from16 v0, p1

    if-ne v0, v3, :cond_c

    .line 1470
    const/4 v9, 0x0

    .line 1471
    .restart local v9       #action:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1472
    .restart local v18       #label:Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1475
    .restart local v22       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1476
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/storage/StorageVolume;

    .line 1477
    .restart local v25       #volume:Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1478
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoldResponseCode.VolumeUnmountable: send MEDIA_UNMOUNTABLE to volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    const-string v3, "unmountable"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1480
    const-string v3, "android.intent.action.MEDIA_UNMOUNTABLE"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1481
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1483
    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.mediatek.SD_SWAP"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1484
    .local v17, intent:Landroid/content/Intent;
    const-string v3, "SD_EXIST"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1485
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSDSwapIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1477
    .end local v17           #intent:Landroid/content/Intent;
    .end local v25           #volume:Landroid/os/storage/StorageVolume;
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .line 1489
    .end local v9           #action:Ljava/lang/String;
    .end local v18           #label:Ljava/lang/String;
    .end local v22           #path:Ljava/lang/String;
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 2186
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2187
    :try_start_0
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2190
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2194
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 2195
    return-void

    .line 2191
    :catch_0
    move-exception v1

    .line 2192
    .local v1, rex:Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2194
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "oldId"
    .parameter "newId"

    .prologue
    .line 2808
    const-string v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2809
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2810
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2812
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2817
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2818
    :cond_0
    const/4 v1, -0x6

    monitor-exit v3

    .line 2829
    :goto_0
    return v1

    .line 2820
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2822
    const/4 v1, 0x0

    .line 2824
    .local v1, rc:I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "rename"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2825
    :catch_0
    move-exception v0

    .line 2826
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0

    .line 2820
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    .end local v1           #rc:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 18
    .parameter "enable"

    .prologue
    .line 2340
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2341
    const-string v14, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2355
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 2356
    .local v5, mState:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v14, "mounted"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2357
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 2360
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v15

    .line 2361
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2362
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 2363
    .local v2, count:I
    new-array v14, v2, [Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 2364
    .local v8, paths:[Ljava/lang/String;
    new-array v11, v2, [Ljava/lang/String;

    .line 2365
    .local v11, states:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    aget-object v16, v8, v3

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v11, v3

    .line 2365
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2368
    :cond_1
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2370
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 2371
    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_9

    .line 2372
    aget-object v7, v8, v3

    .line 2373
    .local v7, path:Ljava/lang/String;
    aget-object v10, v11, v3

    .line 2374
    .local v10, state:Ljava/lang/String;
    const-string v6, "ums"

    .line 2376
    .local v6, method:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2377
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 2378
    .local v13, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2379
    const-string v14, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Emulated volume: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", no need share!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2371
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2368
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #method:Ljava/lang/String;
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #state:Ljava/lang/String;
    .end local v11           #states:[Ljava/lang/String;
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 2383
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #method:Ljava/lang/String;
    .restart local v7       #path:Ljava/lang/String;
    .restart local v8       #paths:[Ljava/lang/String;
    .restart local v10       #state:Ljava/lang/String;
    .restart local v11       #states:[Ljava/lang/String;
    .restart local v13       #volume:Landroid/os/storage/StorageVolume;
    :cond_3
    :try_start_3
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v16, "/mnt/udisk/folder1"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2384
    const-string v14, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ICUSB: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", no need share!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    monitor-exit v15

    goto :goto_2

    .line 2387
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14

    .restart local v13       #volume:Landroid/os/storage/StorageVolume;
    :cond_4
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2389
    if-eqz p1, :cond_6

    const-string v14, "mounted"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2390
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 2391
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    .line 2403
    invoke-direct/range {p0 .. p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 2404
    new-instance v12, Lcom/android/server/MountService$UmsEnableCallBack;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v7, v6, v14}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2405
    .local v12, umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2407
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 2414
    .end local v12           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_5
    :goto_3
    if-nez p1, :cond_2

    const-string v14, "removed"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "bad_removal"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 2416
    const/16 v9, 0xf

    .line 2417
    .local v9, retry:I
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    if-lez v14, :cond_7

    if-lez v9, :cond_7

    .line 2418
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 2419
    add-int/lit8 v9, v9, -0x1

    .line 2420
    const-string v14, "MountService"

    const-string v15, "Turn off UMS, wait for turn on UMS done!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2408
    .end local v9           #retry:I
    :cond_6
    if-eqz p1, :cond_5

    const-string v14, "unmounted"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2409
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 2422
    .restart local v9       #retry:I
    :cond_7
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 2423
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2424
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/MountService;->mountVolume(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_8

    .line 2425
    const-string v14, "MountService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to remount "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " after disabling share method "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    goto/16 :goto_2

    .line 2436
    .end local v6           #method:Ljava/lang/String;
    .end local v7           #path:Ljava/lang/String;
    .end local v9           #retry:I
    .end local v10           #state:Ljava/lang/String;
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 2437
    return-void
.end method

.method public shareCDRom(Z)V
    .locals 4
    .parameter "share"

    .prologue
    .line 4002
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shareCDRom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    move v0, p1

    .line 4004
    .local v0, doShare:Z
    new-instance v1, Lcom/android/server/MountService$11;

    invoke-direct {v1, p0, v0}, Lcom/android/server/MountService$11;-><init>(Lcom/android/server/MountService;Z)V

    invoke-virtual {v1}, Lcom/android/server/MountService$11;->start()V

    .line 4020
    return-void
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .locals 14
    .parameter "observer"

    .prologue
    .line 2210
    const-string v11, "android.permission.SHUTDOWN"

    invoke-direct {p0, v11}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2212
    const-string v11, "MountService"

    const-string v12, "Shutting down"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 2214
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 2215
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    .line 2217
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2218
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    iget-object v11, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-direct {v7, v11}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2219
    .local v7, snapshot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2222
    const-string v11, "/storage/sdcard0"

    invoke-virtual {p0, v11}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2223
    .local v3, mState:Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2224
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    .line 2225
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 2230
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2231
    .local v4, path:Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2233
    .local v8, state:Ljava/lang/String;
    const-string v11, "shared"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2243
    const-string v11, "ums"

    const/4 v12, 0x0

    invoke-direct {p0, v4, v11, v12}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2265
    :cond_2
    :goto_2
    const-string v11, "mounted"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2273
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2274
    :try_start_1
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageVolume;

    .line 2275
    .local v10, volume:Landroid/os/storage/StorageVolume;
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2276
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2277
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2278
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    goto :goto_1

    .line 2219
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mState:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #snapshot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #state:Ljava/lang/String;
    .end local v10           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 2226
    .restart local v3       #mState:Ljava/lang/String;
    .restart local v7       #snapshot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v11, "shared"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2227
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    goto :goto_0

    .line 2244
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v8       #state:Ljava/lang/String;
    :cond_4
    const-string v11, "checking"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2250
    const/16 v5, 0x1e

    .line 2251
    .local v5, retries:I
    :goto_3
    const-string v11, "checking"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    add-int/lit8 v6, v5, -0x1

    .end local v5           #retries:I
    .local v6, retries:I
    if-ltz v5, :cond_9

    .line 2253
    const-wide/16 v11, 0x3e8

    :try_start_3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2258
    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v5, v6

    .end local v6           #retries:I
    .restart local v5       #retries:I
    goto :goto_3

    .line 2254
    .end local v5           #retries:I
    .restart local v6       #retries:I
    :catch_0
    move-exception v2

    .line 2255
    .local v2, iex:Ljava/lang/InterruptedException;
    const-string v11, "MountService"

    const-string v12, "Interrupted while waiting for media"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 2260
    .end local v2           #iex:Ljava/lang/InterruptedException;
    .end local v6           #retries:I
    .restart local v5       #retries:I
    :cond_5
    :goto_4
    if-nez v5, :cond_2

    .line 2261
    const-string v11, "MountService"

    const-string v12, "Timed out waiting for media to check"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2275
    .end local v5           #retries:I
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 2283
    .restart local v10       #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    iget v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 2285
    new-instance v9, Lcom/android/server/MountService$ShutdownCallBack;

    invoke-direct {v9, p0, v4, p1}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .line 2286
    .local v9, ucb:Lcom/android/server/MountService$ShutdownCallBack;
    iget-object v11, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2289
    .end local v4           #path:Ljava/lang/String;
    .end local v8           #state:Ljava/lang/String;
    .end local v9           #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    .end local v10           #volume:Landroid/os/storage/StorageVolume;
    :cond_7
    iget v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    if-gtz v11, :cond_8

    if-eqz p1, :cond_8

    .line 2296
    const/4 v11, 0x0

    :try_start_5
    invoke-interface {p1, v11}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2314
    :cond_8
    :goto_5
    return-void

    .line 2297
    :catch_1
    move-exception v0

    .line 2298
    .local v0, e:Landroid/os/RemoteException;
    const-string v11, "MountService"

    const-string v12, "RemoteException when shutting down"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v6       #retries:I
    .restart local v8       #state:Ljava/lang/String;
    :cond_9
    move v5, v6

    .end local v6           #retries:I
    .restart local v5       #retries:I
    goto :goto_4
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 2177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 2178
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2179
    return-void
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 9
    .parameter "rawPath"
    .parameter "force"
    .parameter "token"
    .parameter "nonce"

    .prologue
    .line 2953
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2956
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 2957
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MountService$ObbState;

    .line 2958
    .local v8, existingState:Lcom/android/server/MountService$ObbState;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2960
    if-eqz v8, :cond_0

    .line 2962
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2963
    .local v4, callingUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    iget-object v3, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2965
    .local v0, newState:Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 2966
    .local v7, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2973
    .end local v0           #newState:Lcom/android/server/MountService$ObbState;
    .end local v4           #callingUid:I
    .end local v7           #action:Lcom/android/server/MountService$ObbAction;
    :goto_0
    return-void

    .line 2958
    .end local v8           #existingState:Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2971
    .restart local v8       #existingState:Lcom/android/server/MountService$ObbState;
    :cond_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2755
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2756
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2757
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2759
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2760
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2761
    const/4 v3, -0x5

    monitor-exit v5

    .line 2794
    :cond_0
    :goto_0
    return v3

    .line 2763
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2771
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2773
    const/4 v3, 0x0

    .line 2775
    .local v3, rc:I
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unmount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2776
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_2

    .line 2777
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2779
    :cond_2
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2789
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :goto_1
    if-nez v3, :cond_0

    .line 2790
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2791
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2792
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2763
    .end local v3           #rc:I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 2780
    .restart local v3       #rc:I
    :catch_0
    move-exception v2

    .line 2781
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2782
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 2783
    const/4 v3, -0x7

    goto :goto_1

    .line 2785
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    .line 2528
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2529
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2531
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2533
    .local v1, volState:Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unmounting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " removeEncryption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2558
    :cond_0
    :goto_0
    return-void

    .line 2556
    :cond_1
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 2557
    .local v0, ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public unmountVolumeNotSwap(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    .line 4026
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 4027
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 4029
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4031
    .local v1, volState:Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unmounting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " removeEncryption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4046
    :cond_0
    :goto_0
    return-void

    .line 4044
    :cond_1
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 4045
    .local v0, ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 2198
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2199
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 2200
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v2, p1, :cond_0

    .line 2201
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2202
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2203
    monitor-exit v3

    .line 2207
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_0
    return-void

    .line 2206
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .locals 7
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3092
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 3093
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3096
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3099
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3100
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3103
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3106
    const-string v2, "MountService"

    const-string v3, "validating encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "verifypw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3112
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3116
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 3114
    :catch_0
    move-exception v0

    .line 3116
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method waitForAsecScan()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 699
    return-void
.end method

.method private updateAsecVolumeStateBaidu(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .locals 6
    .parameter "volume"
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .local v1, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getAsecVolumeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .local v0, asecPath:Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asecPath is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->isAsecVolumeAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "unmounted"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v5, v5}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v3, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "mounted"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_0
.end method
