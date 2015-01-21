.class public final Lcom/android/server/display/DisplayManagerService;
.super Landroid/hardware/display/IDisplayManager$Stub;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerService$1;,
        Lcom/android/server/display/DisplayManagerService$CallbackRecord;,
        Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;,
        Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;,
        Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;,
        Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;,
        Lcom/android/server/display/DisplayManagerService$SyncRoot;,
        Lcom/android/server/display/DisplayManagerService$DisplayMap;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final DEBUG_VIRTUAL_DISPLAY:Z = false

.field private static final DISPLAY_BLANK_STATE_BLANKED:I = 0x1

.field private static final DISPLAY_BLANK_STATE_UNBLANKED:I = 0x2

.field private static final DISPLAY_BLANK_STATE_UNKNOWN:I = 0x0

.field private static final FORCE_WIFI_DISPLAY_ENABLE:Ljava/lang/String; = "persist.debug.wfd.enable"

.field private static final MSG_DELIVER_DISPLAY_EVENT:I = 0x3

.field private static final MSG_REGISTER_ADDITIONAL_DISPLAY_ADAPTERS:I = 0x2

.field private static final MSG_REGISTER_DEFAULT_DISPLAY_ADAPTER:I = 0x1

.field private static final MSG_REQUEST_TRAVERSAL:I = 0x4

.field private static final MSG_UPDATE_VIEWPORT:I = 0x5

.field private static final SYSTEM_DISABLE_MIRROR:Ljava/lang/String; = "service.ss.disable.mirror"

.field private static final SYSTEM_HEADLESS:Ljava/lang/String; = "ro.config.headless"

.field private static final TAG:Ljava/lang/String; = "DisplayManagerService"

.field private static final VIRTUAL_DISPLAY_CACHE_COUNT:I = 0x5

.field private static final WAIT_FOR_DEFAULT_DISPLAY_TIMEOUT:J = 0x2710L

.field public static final WORK:Ljava/lang/String; = "com.powermo.connectivity.services.AndroidServiceRootServer.WORK"

.field public static final WORK_COMMAND:Ljava/lang/String; = "LIB_COMMAND"

.field public static final WORK_COMMAND_ENABLE:Ljava/lang/String; = "enable"

.field public static defaultDensityDpi:I

.field public static defaultDensityXDpi:F

.field public static defaultDensityYDpi:F

.field private static mCanAdjustDeviceRotation:Z

.field private static mExtraDisplayId:I

.field public static mSupportThumbnail:Z

.field public static mThumbnailMirrorDefault:Z


# instance fields
.field addRemoteThumbnailControllerDisplayLocked:Ljava/lang/reflect/Method;

.field private defaultExternalDevice:Lcom/android/server/display/DisplayDevice;

.field private defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

.field private hasDefaultExternalDisplay:Z

.field private mAllDisplayBlankStateFromPowerManager:I

.field public final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultViewport:Lcom/android/server/display/DisplayViewport;

.field private final mDisableMirror:Z

.field private final mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

.field private final mDisplayAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayMaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/DisplayManagerService$DisplayMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/server/display/DisplayTransactionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

.field private final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field private mHasVirtualDisplay:Z

.field private final mHeadless:Z

.field private mInputManagerFuncs:Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

.field private final mLogicalDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mNextNonDefaultDisplayId:I

.field public mOnlyCore:Z

.field private mPendingTraversal:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field mRemoteThumbnailControllerAdapter:Lcom/android/server/display/DisplayAdapter;

.field private final mRemovedDisplayDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedVirtualDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/VirtualLogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field public mSafeMode:Z

.field private final mSingleDisplayDemoMode:Z

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private final mTempCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempDefaultViewport:Lcom/android/server/display/DisplayViewport;

.field private final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTempExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

.field private final mUiHandler:Landroid/os/Handler;

.field private mVirtualDisplayHasParent:Z

.field private final mVirtualDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/VirtualLogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

.field private mWindowManagerFuncs:Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;

.field removeRemoteThumbnailControllerDisplayLocked:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 112
    sput-boolean v2, Lcom/android/server/display/DisplayManagerService;->mSupportThumbnail:Z

    .line 113
    sput v0, Lcom/android/server/display/DisplayManagerService;->defaultDensityXDpi:F

    .line 114
    sput v0, Lcom/android/server/display/DisplayManagerService;->defaultDensityYDpi:F

    .line 115
    sput v1, Lcom/android/server/display/DisplayManagerService;->defaultDensityDpi:I

    .line 116
    sput-boolean v2, Lcom/android/server/display/DisplayManagerService;->mThumbnailMirrorDefault:Z

    .line 117
    sput-boolean v1, Lcom/android/server/display/DisplayManagerService;->mCanAdjustDeviceRotation:Z

    .line 226
    const/4 v0, -0x1

    sput v0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 5
    .parameter "context"
    .parameter "mainHandler"
    .parameter "uiHandler"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 234
    invoke-direct {p0}, Landroid/hardware/display/IDisplayManager$Stub;-><init>()V

    .line 150
    new-instance v0, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$SyncRoot;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 168
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 184
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedVirtualDisplays:Landroid/util/SparseArray;

    .line 187
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 189
    iput v4, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    .line 192
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 207
    new-instance v0, Lcom/android/server/display/DisplayViewport;

    invoke-direct {v0}, Lcom/android/server/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    .line 208
    new-instance v0, Lcom/android/server/display/DisplayViewport;

    invoke-direct {v0}, Lcom/android/server/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    .line 211
    new-instance v0, Lcom/android/server/display/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 222
    new-instance v0, Lcom/android/server/display/DisplayViewport;

    invoke-direct {v0}, Lcom/android/server/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Lcom/android/server/display/DisplayViewport;

    .line 223
    new-instance v0, Lcom/android/server/display/DisplayViewport;

    invoke-direct {v0}, Lcom/android/server/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    .line 228
    iput-boolean v3, p0, Lcom/android/server/display/DisplayManagerService;->hasDefaultExternalDisplay:Z

    .line 229
    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 230
    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDevice:Lcom/android/server/display/DisplayDevice;

    .line 1440
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayMaps:Landroid/util/SparseArray;

    .line 235
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 236
    const-string v0, "ro.config.headless"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mHeadless:Z

    .line 237
    const-string v0, "service.ss.disable.mirror"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisableMirror:Z

    .line 239
    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 240
    iput-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 241
    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    .line 242
    const-string v0, "persist.demo.singledisplay"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    .line 244
    const-string v0, "1"

    const-string v1, "persist.display.virtual"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mHasVirtualDisplay:Z

    .line 245
    const-string v0, "1"

    const-string v1, "persist.display.virtual.parent"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayHasParent:Z

    .line 246
    const-string v0, "1"

    const-string v1, "persist.thumbnail.enable"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayManagerService;->mSupportThumbnail:Z

    .line 247
    const-string v0, "1"

    const-string v1, "persist.thumbnail.default.recur"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayManagerService;->mThumbnailMirrorDefault:Z

    .line 249
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 250
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapter()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerFuncs:Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->onCallbackDied(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerFuncs:Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Lcom/android/server/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    return-object v0
.end method

.method private addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 9
    .parameter "device"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1147
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1148
    .local v0, deviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    move v3, v5

    .line 1150
    .local v3, isDefault:Z
    :goto_0
    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1151
    const-string v6, "DisplayManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring attempt to add a second default display: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const/4 v3, 0x0

    .line 1155
    :cond_0
    if-nez v3, :cond_2

    iget-boolean v6, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    if-eqz v6, :cond_2

    .line 1156
    const-string v5, "DisplayManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not creating a logical display for a secondary display  because single display demo mode is enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :goto_1
    return-void

    .end local v3           #isDefault:Z
    :cond_1
    move v3, v6

    .line 1148
    goto :goto_0

    .line 1161
    .restart local v3       #isDefault:Z
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->assignDisplayIdLocked(Z)I

    move-result v2

    .line 1162
    .local v2, displayId:I
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->assignLayerStackLocked(I)I

    move-result v4

    .line 1164
    .local v4, layerStack:I
    const-string v6, "DisplayManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Add logical display Id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " layerStack : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    new-instance v1, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {v1, v2, v4, p1}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;)V

    .line 1167
    .local v1, display:Lcom/android/server/display/LogicalDisplay;
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 1168
    iget-boolean v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisableMirror:Z

    if-eqz v6, :cond_3

    .line 1169
    invoke-virtual {v1, v5}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    .line 1170
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1172
    const-string v5, "DisplayManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring display device because the logical display created from it was not considered valid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1177
    :cond_4
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1180
    if-eqz v3, :cond_5

    .line 1181
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1184
    :cond_5
    iget v6, p1, Lcom/android/server/display/DisplayDevice;->defaultDisplayId:I

    if-ltz v6, :cond_6

    .line 1185
    iget v6, p1, Lcom/android/server/display/DisplayDevice;->defaultDisplayId:I

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v7

    invoke-virtual {p0, v6, v7, v5}, Lcom/android/server/display/DisplayManagerService;->assignDisplayMap(IIZ)V

    .line 1202
    :cond_6
    invoke-direct {p0, v2, v5}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    goto :goto_1
.end method

.method private addVirtualDisplayLocked(IIIIIII)I
    .locals 15
    .parameter "parentDisplayId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "flags"
    .parameter "rotation"

    .prologue
    .line 1019
    const/4 v10, 0x0

    .line 1020
    .local v10, found:Z
    const/4 v9, 0x0

    .line 1021
    .local v9, display:Lcom/android/server/display/LogicalDisplay;
    iget-boolean v3, p0, Lcom/android/server/display/DisplayManagerService;->mHasVirtualDisplay:Z

    if-nez v3, :cond_1

    .line 1022
    const/4 v2, -0x1

    .line 1081
    :cond_0
    :goto_0
    return v2

    .line 1024
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v11

    .local v11, i:I
    move v12, v11

    .end local v11           #i:I
    .local v12, i:I
    :goto_1
    add-int/lit8 v11, v12, -0x1

    .end local v12           #i:I
    .restart local v11       #i:I
    if-lez v12, :cond_2

    .line 1025
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #display:Lcom/android/server/display/LogicalDisplay;
    check-cast v9, Lcom/android/server/display/LogicalDisplay;

    .line 1026
    .restart local v9       #display:Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    move/from16 v0, p1

    if-ne v3, v0, :cond_9

    .line 1027
    const/4 v10, 0x1

    .line 1032
    :cond_2
    if-nez v10, :cond_3

    if-nez v9, :cond_3

    .line 1033
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addVirtualDisplayLocked: Invalid parent display Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/4 v2, -0x1

    goto :goto_0

    .line 1037
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->hasProjectVirtualDisplay()Z

    move-result v3

    if-eqz v3, :cond_4

    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_4

    .line 1038
    const-string v3, "DisplayManagerService"

    const-string v4, "addVirtualDisplayLocked: Already have another project display "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v2, -0x1

    goto :goto_0

    .line 1042
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->assignDisplayIdLocked(Z)I

    move-result v2

    .line 1043
    .local v2, displayId:I
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->assignLayerStackLocked(I)I

    move-result v14

    .line 1045
    .local v14, layerStack:I
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Add virtual display Id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " layerStack : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v1, 0x0

    .line 1049
    .local v1, virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    const/4 v13, 0x0

    .local v13, j:I
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v13, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_5

    .line 1050
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    check-cast v1, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 1051
    .restart local v1       #virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1055
    :cond_5
    if-nez v1, :cond_7

    .line 1056
    new-instance v1, Lcom/android/server/display/VirtualLogicalDisplay;

    .end local v1           #virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/VirtualLogicalDisplay;-><init>(IIIIII)V

    .line 1057
    .restart local v1       #virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getLayerStackLocked()I

    move-result v3

    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/display/VirtualLogicalDisplay;->setLayerStackAndDeviceLocked(IILcom/android/server/display/DisplayDevice;)V

    .line 1058
    if-ltz p7, :cond_6

    .line 1059
    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/android/server/display/VirtualLogicalDisplay;->updateRotation(I)V

    .line 1061
    :cond_6
    invoke-virtual {v9, v2, v1}, Lcom/android/server/display/LogicalDisplay;->addVirtualDisplayLocked(ILcom/android/server/display/VirtualLogicalDisplay;)Z

    .line 1073
    :goto_2
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1075
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    .line 1076
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1078
    invoke-virtual {v1}, Lcom/android/server/display/VirtualLogicalDisplay;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 1079
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    goto/16 :goto_0

    .line 1063
    :cond_7
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getLayerStackLocked()I

    move-result v3

    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/display/VirtualLogicalDisplay;->setLayerStackAndDeviceLocked(IILcom/android/server/display/DisplayDevice;)V

    .line 1064
    invoke-virtual {v1, v2}, Lcom/android/server/display/VirtualLogicalDisplay;->updateDisplayId(I)V

    .line 1065
    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/android/server/display/VirtualLogicalDisplay;->updateFlags(I)V

    .line 1066
    if-ltz p7, :cond_8

    .line 1067
    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/android/server/display/VirtualLogicalDisplay;->updateRotation(I)V

    .line 1069
    :cond_8
    invoke-virtual {v9, v2, v1}, Lcom/android/server/display/LogicalDisplay;->addVirtualDisplayLocked(ILcom/android/server/display/VirtualLogicalDisplay;)Z

    move-object v3, v9

    move v4, v2

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 1070
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/display/LogicalDisplay;->updateVirtualDisplayLocked(IIIII)V

    goto :goto_2

    .end local v1           #virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    .end local v2           #displayId:I
    .end local v13           #j:I
    .end local v14           #layerStack:I
    :cond_9
    move v12, v11

    .end local v11           #i:I
    .restart local v12       #i:I
    goto/16 :goto_1
.end method

.method private assignDisplayIdLocked(Z)I
    .locals 2
    .parameter "isDefault"

    .prologue
    .line 1209
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    goto :goto_0
.end method

.method private assignLayerStackLocked(I)I
    .locals 0
    .parameter "displayId"

    .prologue
    .line 1215
    return p1
.end method

.method private canCallerConfigureWifiDisplay()Z
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearViewportsLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1469
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    iput-boolean v1, v0, Lcom/android/server/display/DisplayViewport;->valid:Z

    .line 1470
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iput-boolean v1, v0, Lcom/android/server/display/DisplayViewport;->valid:Z

    .line 1471
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/display/DisplayViewport;->displayId:I

    .line 1472
    return-void
.end method

.method private configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 16
    .parameter "device"

    .prologue
    .line 1475
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1476
    .local v1, count:I
    const/4 v7, 0x0

    .line 1479
    .local v7, found:Z
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/display/DisplayManagerService;->hasDefaultExternalDisplay:Z

    if-nez v13, :cond_0

    .line 1481
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v1, :cond_0

    .line 1482
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayDevice;

    .line 1483
    .local v4, dev:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 1485
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/display/DisplayManagerService;->hasDefaultExternalDisplay:Z

    .line 1486
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1487
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDevice:Lcom/android/server/display/DisplayDevice;

    .line 1488
    const/4 v7, 0x1

    .line 1495
    .end local v4           #dev:Lcom/android/server/display/DisplayDevice;
    .end local v8           #i:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/display/DisplayManagerService;->hasDefaultExternalDisplay:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    if-nez v13, :cond_2

    .line 1496
    :cond_1
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_1
    if-ge v8, v1, :cond_2

    .line 1497
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayDevice;

    .line 1498
    .restart local v4       #dev:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_6

    .line 1500
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/display/DisplayManagerService;->hasDefaultExternalDisplay:Z

    .line 1501
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1502
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDevice:Lcom/android/server/display/DisplayDevice;

    .line 1503
    const/4 v7, 0x1

    .line 1509
    .end local v4           #dev:Lcom/android/server/display/DisplayDevice;
    .end local v8           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/display/DisplayManagerService;->hasDefaultExternalDisplay:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    if-nez v13, :cond_7

    .line 1510
    :cond_3
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    if-ge v8, v1, :cond_7

    .line 1511
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayDevice;

    .line 1512
    .restart local v4       #dev:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/16 v14, 0xf

    if-ne v13, v14, :cond_4

    .line 1510
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1481
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1496
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1523
    .end local v4           #dev:Lcom/android/server/display/DisplayDevice;
    .end local v8           #i:I
    :cond_7
    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/display/DisplayManagerService;->hasDefaultExternalDisplay:Z

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    if-eqz v13, :cond_e

    .line 1524
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/display/LogicalDisplay;->setIsDefaultExternalLocked(Z)V

    .line 1525
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v13

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1526
    const-string v13, "DisplayManagerService"

    const-string v14, "found and set default external display"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_8
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v5

    .line 1539
    .local v5, display:Lcom/android/server/display/LogicalDisplay;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayMaps:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService$DisplayMap;

    .line 1540
    .local v6, displayMap:Lcom/android/server/display/DisplayManagerService$DisplayMap;
    if-eqz v6, :cond_9

    .line 1541
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    iget v14, v6, Lcom/android/server/display/DisplayManagerService$DisplayMap;->srcDisplayId:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #display:Lcom/android/server/display/LogicalDisplay;
    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 1544
    .restart local v5       #display:Lcom/android/server/display/LogicalDisplay;
    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/16 v14, 0xf

    if-eq v13, v14, :cond_a

    if-nez v6, :cond_a

    .line 1549
    const/4 v5, 0x0

    .line 1553
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/16 v14, 0xf

    if-ne v13, v14, :cond_b

    if-nez v6, :cond_b

    .line 1555
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/display/DisplayManagerService;->hasDefaultExternalDisplay:Z

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1559
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1560
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lcom/android/server/display/LogicalDisplay;->setIsThumbnailExternalLocked(Z)V

    .line 1561
    const-string v13, "DisplayManagerService"

    const-string v14, "found and set thumbnail external display"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :cond_b
    :goto_4
    if-nez v5, :cond_c

    .line 1568
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #display:Lcom/android/server/display/LogicalDisplay;
    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 1572
    .restart local v5       #display:Lcom/android/server/display/LogicalDisplay;
    :cond_c
    if-nez v5, :cond_10

    .line 1574
    const-string v13, "DisplayManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Missing logical display to use for physical display device: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_d
    :goto_5
    return-void

    .line 1527
    .end local v5           #display:Lcom/android/server/display/LogicalDisplay;
    .end local v6           #displayMap:Lcom/android/server/display/DisplayManagerService$DisplayMap;
    :cond_e
    sget-boolean v13, Lcom/android/server/display/DisplayManagerService;->mThumbnailMirrorDefault:Z

    if-eqz v13, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/16 v14, 0xf

    if-ne v13, v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/display/DisplayManagerService;->hasDefaultExternalDisplay:Z

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    if-nez v13, :cond_8

    .line 1531
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/display/LogicalDisplay;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1532
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDevice:Lcom/android/server/display/DisplayDevice;

    .line 1533
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/display/DisplayManagerService;->hasDefaultExternalDisplay:Z

    goto/16 :goto_3

    .line 1563
    .restart local v5       #display:Lcom/android/server/display/LogicalDisplay;
    .restart local v6       #displayMap:Lcom/android/server/display/DisplayManagerService$DisplayMap;
    :cond_f
    const/4 v5, 0x0

    goto :goto_4

    .line 1578
    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_16

    const/4 v10, 0x1

    .line 1581
    .local v10, isBlanked:Z
    :goto_6
    invoke-direct/range {p0 .. p1}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v11

    .line 1583
    .local v11, primaryDisplay:Lcom/android/server/display/LogicalDisplay;
    if-eq v5, v11, :cond_17

    invoke-virtual {v11}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v13

    if-nez v13, :cond_17

    sget-boolean v13, Lcom/android/server/display/DisplayManagerService;->mCanAdjustDeviceRotation:Z

    if-eqz v13, :cond_17

    .line 1584
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    .line 1585
    .local v2, currentDevice:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getResolutionRateLocked()F

    move-result v3

    .line 1586
    .local v3, currentRate:F
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getResolutionRateLocked()F

    move-result v12

    .line 1588
    .local v12, primaryRate:F
    const/high16 v13, 0x3f80

    cmpl-float v13, v3, v13

    if-lez v13, :cond_11

    const/high16 v13, 0x3f80

    cmpg-float v13, v12, v13

    if-ltz v13, :cond_12

    :cond_11
    const/high16 v13, 0x3f80

    cmpg-float v13, v3, v13

    if-gez v13, :cond_13

    const/high16 v13, 0x3f80

    cmpl-float v13, v12, v13

    if-lez v13, :cond_13

    .line 1589
    :cond_12
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/server/display/DisplayDevice;->setAdjustRotationLocked(I)V

    .line 1590
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/server/display/DisplayDevice;->setCanAdjustRotationLocked(Z)V

    .line 1591
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lcom/android/server/display/LogicalDisplay;->setAdjustDeviceRotationLocked(Z)V

    .line 1599
    .end local v2           #currentDevice:Lcom/android/server/display/DisplayDevice;
    .end local v3           #currentRate:F
    .end local v12           #primaryRate:F
    :cond_13
    :goto_7
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v13

    if-lez v13, :cond_14

    .line 1600
    const/4 v10, 0x0

    .line 1603
    :cond_14
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v10}, Lcom/android/server/display/LogicalDisplay;->configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;Z)V

    .line 1607
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v9

    .line 1608
    .local v9, info:Lcom/android/server/display/DisplayDeviceInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    iget-boolean v13, v13, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-nez v13, :cond_15

    iget v13, v9, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_15

    .line 1610
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    move-object/from16 v0, p1

    invoke-static {v13, v5, v0}, Lcom/android/server/display/DisplayManagerService;->setViewportLocked(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 1612
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iget-boolean v13, v13, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-nez v13, :cond_d

    iget v13, v9, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_d

    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->isDefaultExternalLocked()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1615
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    move-object/from16 v0, p1

    invoke-static {v13, v5, v0}, Lcom/android/server/display/DisplayManagerService;->setViewportLocked(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    goto/16 :goto_5

    .line 1578
    .end local v9           #info:Lcom/android/server/display/DisplayDeviceInfo;
    .end local v10           #isBlanked:Z
    .end local v11           #primaryDisplay:Lcom/android/server/display/LogicalDisplay;
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 1594
    .restart local v10       #isBlanked:Z
    .restart local v11       #primaryDisplay:Lcom/android/server/display/LogicalDisplay;
    :cond_17
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/server/display/DisplayDevice;->setAdjustRotationLocked(I)V

    .line 1595
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/server/display/DisplayDevice;->setCanAdjustRotationLocked(Z)V

    .line 1596
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/android/server/display/LogicalDisplay;->setAdjustDeviceRotationLocked(Z)V

    goto :goto_7
.end method

.method private deliverDisplayEvent(II)V
    .locals 5
    .parameter "displayId"
    .parameter "event"

    .prologue
    .line 1664
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering display event: displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    .line 1671
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1672
    .local v0, count:I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1673
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1674
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1676
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1679
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1680
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(II)V

    .line 1679
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1676
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1682
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1683
    return-void
.end method

.method private findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .locals 4
    .parameter "device"

    .prologue
    .line 1634
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1635
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1636
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1637
    .local v1, display:Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1641
    .end local v1           #display:Lcom/android/server/display/LogicalDisplay;
    :goto_1
    return-object v1

    .line 1635
    .restart local v1       #display:Lcom/android/server/display/LogicalDisplay;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1641
    .end local v1           #display:Lcom/android/server/display/LogicalDisplay;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getParentForDisplayLocked(I)I
    .locals 3
    .parameter "displayId"

    .prologue
    const/4 v1, -0x1

    .line 1108
    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayHasParent:Z

    if-nez v2, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return v1

    .line 1112
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 1113
    .local v0, display:Lcom/android/server/display/VirtualLogicalDisplay;
    if-eqz v0, :cond_2

    .line 1116
    invoke-virtual {v0}, Lcom/android/server/display/VirtualLogicalDisplay;->getParentDisplayIdLocked()I

    move-result v1

    goto :goto_0

    .line 1119
    :cond_2
    if-nez v0, :cond_0

    .line 1120
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #display:Lcom/android/server/display/VirtualLogicalDisplay;
    check-cast v0, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 1121
    .restart local v0       #display:Lcom/android/server/display/VirtualLogicalDisplay;
    if-eqz v0, :cond_0

    .line 1124
    invoke-virtual {v0}, Lcom/android/server/display/VirtualLogicalDisplay;->getParentDisplayIdLocked()I

    move-result v1

    goto :goto_0
.end method

.method private handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 954
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 955
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add already added display device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    monitor-exit v1

    .line 978
    :goto_0
    return-void

    .line 961
    :cond_0
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display device added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 965
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 969
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    packed-switch v0, :pswitch_data_0

    .line 977
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 971
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->blankLocked()V

    goto :goto_1

    .line 974
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->unblankLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 969
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 981
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 982
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 983
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to change non-existent display device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    monitor-exit v1

    .line 995
    :goto_0
    return-void

    .line 988
    :cond_0
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display device changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->applyPendingDisplayDeviceInfoChangesLocked()V

    .line 991
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 994
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V
    .locals 5
    .parameter "device"

    .prologue
    .line 998
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 999
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1000
    const-string v1, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to remove non-existent display device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    monitor-exit v2

    .line 1016
    :goto_0
    return-void

    .line 1005
    :cond_0
    const-string v1, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display device removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget v1, p1, Lcom/android/server/display/DisplayDevice;->defaultDisplayId:I

    if-ltz v1, :cond_1

    .line 1008
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    .line 1009
    .local v0, display:Lcom/android/server/display/LogicalDisplay;
    iget v1, p1, Lcom/android/server/display/DisplayDevice;->defaultDisplayId:I

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/display/DisplayManagerService;->assignDisplayMap(IIZ)V

    .line 1012
    .end local v0           #display:Lcom/android/server/display/LogicalDisplay;
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    .line 1014
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1015
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onCallbackDied(I)V
    .locals 2
    .parameter "pid"

    .prologue
    .line 678
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 680
    monitor-exit v1

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private performTraversalInTransactionLocked()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1305
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1306
    .local v6, removedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 1307
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 1308
    .local v1, device:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->performTraversalInTransactionLocked()V

    .line 1306
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1310
    .end local v1           #device:Lcom/android/server/display/DisplayDevice;
    :cond_0
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1314
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->clearViewportsLocked()V

    .line 1317
    :try_start_0
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ss_external_rotation_enabled"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 1319
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/server/display/DisplayManagerService;->mCanAdjustDeviceRotation:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    :goto_1
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    :goto_2
    add-int/lit8 v4, v5, -0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    if-lez v5, :cond_2

    .line 1330
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 1331
    .local v2, display:Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v2, v10}, Lcom/android/server/display/LogicalDisplay;->setIsDefaultExternalLocked(Z)V

    .line 1332
    invoke-virtual {v2, v10}, Lcom/android/server/display/LogicalDisplay;->setIsThumbnailExternalLocked(Z)V

    .line 1333
    invoke-virtual {v2, v10}, Lcom/android/server/display/LogicalDisplay;->setAdjustDeviceRotationLocked(Z)V

    move v5, v4

    .line 1334
    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_2

    .line 1321
    .end local v2           #display:Lcom/android/server/display/LogicalDisplay;
    .end local v5           #i:I
    .restart local v4       #i:I
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    sput-boolean v7, Lcom/android/server/display/DisplayManagerService;->mCanAdjustDeviceRotation:Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1323
    :catch_0
    move-exception v3

    .line 1324
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v7, "DisplayManagerService"

    const-string v8, "External rotation setting is Not found!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    sput-boolean v10, Lcom/android/server/display/DisplayManagerService;->mCanAdjustDeviceRotation:Z

    goto :goto_1

    .line 1337
    .end local v3           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    iput-boolean v10, p0, Lcom/android/server/display/DisplayManagerService;->hasDefaultExternalDisplay:Z

    .line 1338
    iput-object v12, p0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1339
    iput-object v12, p0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDevice:Lcom/android/server/display/DisplayDevice;

    .line 1341
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    :goto_3
    add-int/lit8 v4, v5, -0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    if-lez v5, :cond_4

    .line 1342
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 1344
    .restart local v2       #display:Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->isAssignedDefaultExternalLocked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1345
    iput-boolean v11, p0, Lcom/android/server/display/DisplayManagerService;->hasDefaultExternalDisplay:Z

    .line 1346
    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    :cond_3
    move v5, v4

    .line 1348
    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_3

    .line 1351
    .end local v2           #display:Lcom/android/server/display/LogicalDisplay;
    .end local v5           #i:I
    .restart local v4       #i:I
    :cond_4
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1352
    .local v0, count:I
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_5

    .line 1353
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 1354
    .restart local v1       #device:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1, v10}, Lcom/android/server/display/DisplayDevice;->setAdjustRotationLocked(I)V

    .line 1355
    invoke-virtual {v1, v10}, Lcom/android/server/display/DisplayDevice;->setCanAdjustRotationLocked(Z)V

    .line 1356
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 1357
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->performTraversalInTransactionLocked()V

    .line 1352
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1360
    .end local v1           #device:Lcom/android/server/display/DisplayDevice;
    :cond_5
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ne v7, v11, :cond_6

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v11, :cond_6

    .line 1361
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iput v10, v7, Lcom/android/server/display/DisplayViewport;->orientation:I

    .line 1362
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    iget v8, v8, Lcom/android/server/display/DisplayViewport;->deviceWidth:I

    iput v8, v7, Lcom/android/server/display/DisplayViewport;->deviceWidth:I

    .line 1363
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    iget v8, v8, Lcom/android/server/display/DisplayViewport;->deviceHeight:I

    iput v8, v7, Lcom/android/server/display/DisplayViewport;->deviceHeight:I

    .line 1364
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iget-object v7, v7, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    iget-object v8, v8, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1365
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iget-object v7, v7, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    iget-object v8, v8, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1366
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iput-boolean v11, v7, Lcom/android/server/display/DisplayViewport;->valid:Z

    .line 1367
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iput v10, v7, Lcom/android/server/display/DisplayViewport;->displayId:I

    .line 1371
    :cond_6
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iget-boolean v7, v7, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v7, :cond_8

    .line 1374
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDevice:Lcom/android/server/display/DisplayDevice;

    invoke-static {v7, v8, v9}, Lcom/android/server/display/DisplayManagerService;->setViewportLocked(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 1377
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v7}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v7

    if-eqz v7, :cond_7

    sget-boolean v7, Lcom/android/server/display/DisplayManagerService;->mThumbnailMirrorDefault:Z

    if-eqz v7, :cond_8

    .line 1378
    :cond_7
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iput v10, v7, Lcom/android/server/display/DisplayViewport;->displayId:I

    .line 1383
    :cond_8
    iput-boolean v10, p0, Lcom/android/server/display/DisplayManagerService;->hasDefaultExternalDisplay:Z

    .line 1384
    iput-object v12, p0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1385
    iput-object v12, p0, Lcom/android/server/display/DisplayManagerService;->defaultExternalDevice:Lcom/android/server/display/DisplayDevice;

    .line 1388
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerFuncs:Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

    if-eqz v7, :cond_9

    .line 1389
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1391
    :cond_9
    return-void
.end method

.method private registerAdditionalDisplayAdapters()V
    .locals 2

    .prologue
    .line 846
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 847
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->shouldRegisterNonEssentialDisplayAdaptersLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerOverlayDisplayAdapterLocked()V

    .line 849
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerWifiDisplayAdapterLocked()V

    .line 851
    :cond_0
    monitor-exit v1

    .line 852
    return-void

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerDefaultDisplayAdapter()V
    .locals 6

    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 835
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mHeadless:Z

    if-eqz v0, :cond_0

    .line 836
    new-instance v0, Lcom/android/server/display/HeadlessDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/HeadlessDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 842
    :goto_0
    monitor-exit v1

    .line 843
    return-void

    .line 839
    :cond_0
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    goto :goto_0

    .line 842
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 951
    return-void
.end method

.method private registerOverlayDisplayAdapterLocked()V
    .locals 9

    .prologue
    .line 886
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.powermo.smartshow.frameworks.display.RemoteThumbnailControllerDisplayAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 888
    .local v6, clazz:Ljava/lang/Class;
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Landroid/os/Handler;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/server/display/DisplayAdapter$Listener;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Landroid/os/Handler;

    aput-object v2, v0, v1

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 890
    .local v7, ctor:Ljava/lang/reflect/Constructor;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 891
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    aput-object v2, v0, v1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayAdapter;

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mRemoteThumbnailControllerAdapter:Lcom/android/server/display/DisplayAdapter;

    .line 893
    const-string v0, "addRemoteThumbnailControllerDisplayLocked"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/view/Surface;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->addRemoteThumbnailControllerDisplayLocked:Ljava/lang/reflect/Method;

    .line 895
    const-string v0, "removeRemoteThumbnailControllerDisplayLocked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/view/Surface;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->removeRemoteThumbnailControllerDisplayLocked:Ljava/lang/reflect/Method;

    .line 897
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mRemoteThumbnailControllerAdapter:Lcom/android/server/display/DisplayAdapter;

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    .end local v6           #clazz:Ljava/lang/Class;
    .end local v7           #ctor:Ljava/lang/reflect/Constructor;
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.powermo.smartshow.frameworks.display.ThumbnailControllerDisplayAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 907
    .restart local v6       #clazz:Ljava/lang/Class;
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Landroid/os/Handler;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/server/display/DisplayAdapter$Listener;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Landroid/os/Handler;

    aput-object v2, v0, v1

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 909
    .restart local v7       #ctor:Ljava/lang/reflect/Constructor;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 910
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    aput-object v2, v0, v1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayAdapter;

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 917
    .end local v6           #clazz:Ljava/lang/Class;
    .end local v7           #ctor:Ljava/lang/reflect/Constructor;
    :goto_1
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 920
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "thumbnail_display_devices"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 922
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "thumbnail1_display_devices"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 924
    return-void

    .line 898
    :catch_0
    move-exception v8

    .line 899
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 900
    const-string v0, "DisplayManagerService"

    const-string v1, "Create RemoteThumbnailControllerDisplayAdapter failed !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mRemoteThumbnailControllerAdapter:Lcom/android/server/display/DisplayAdapter;

    goto/16 :goto_0

    .line 912
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 913
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 914
    const-string v0, "DisplayManagerService"

    const-string v1, "Create ThumbnailControllerDisplayAdapter failed !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private registerWifiDisplayAdapterLocked()V
    .locals 6

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.debug.wfd.enable"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 931
    :cond_0
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 934
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 936
    return-void
.end method

.method private removeVirtualDisplayLocked(I)V
    .locals 6
    .parameter "displayId"

    .prologue
    .line 1085
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 1086
    .local v3, virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/display/VirtualLogicalDisplay;->getParentDisplayIdLocked()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 1088
    .local v2, parentDisplay:Lcom/android/server/display/LogicalDisplay;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 1089
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1091
    invoke-virtual {v2, p1}, Lcom/android/server/display/LogicalDisplay;->removeVirtualDisplayLocked(I)Z

    .line 1092
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .local v1, j:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #j:I
    .restart local v0       #j:I
    if-lez v1, :cond_0

    .line 1093
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 1094
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1095
    invoke-virtual {v3}, Lcom/android/server/display/VirtualLogicalDisplay;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 1096
    const/4 v4, 0x3

    invoke-direct {p0, p1, v4}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1102
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    .line 1103
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1105
    .end local v0           #j:I
    :cond_1
    return-void

    .restart local v0       #j:I
    :cond_2
    move v1, v0

    .end local v0           #j:I
    .restart local v1       #j:I
    goto :goto_0
.end method

.method private scheduleTraversalLocked(Z)V
    .locals 2
    .parameter "inTraversal"

    .prologue
    .line 1652
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerFuncs:Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;

    if-eqz v0, :cond_0

    .line 1653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 1654
    if-nez p1, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1658
    :cond_0
    return-void
.end method

.method private sendDisplayEventLocked(II)V
    .locals 3
    .parameter "displayId"
    .parameter "event"

    .prologue
    .line 1645
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1646
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1647
    return-void
.end method

.method public static sendEnableControlCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "workTag"

    .prologue
    .line 698
    if-eqz p0, :cond_0

    .line 699
    const-string v1, "DisplayManagerService"

    const-string v2, "sendENABLEControlCommand to PMRS from dms"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    .local v0, i:Landroid/content/Intent;
    const-string v1, "LIB_COMMAND"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 704
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static setViewportLocked(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V
    .locals 1
    .parameter "viewport"
    .parameter "display"
    .parameter "device"

    .prologue
    .line 1628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayViewport;->valid:Z

    .line 1629
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayViewport;->displayId:I

    .line 1630
    invoke-virtual {p2, p0}, Lcom/android/server/display/DisplayDevice;->populateViewportLocked(Lcom/android/server/display/DisplayViewport;)V

    .line 1631
    return-void
.end method

.method private shouldRegisterNonEssentialDisplayAdaptersLocked()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLogicalDisplaysLocked()Z
    .locals 12

    .prologue
    const/4 v11, 0x3

    .line 1222
    const/4 v0, 0x0

    .line 1224
    .local v0, changed:Z
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, i:I
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    if-lez v4, :cond_2

    .line 1225
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1226
    .local v2, displayId:I
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 1227
    .local v8, virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    invoke-virtual {v8}, Lcom/android/server/display/VirtualLogicalDisplay;->isValidLocked()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1228
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/android/server/display/VirtualLogicalDisplay;->getParentDisplayIdLocked()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/LogicalDisplay;

    .line 1230
    .local v7, parentDisplay:Lcom/android/server/display/LogicalDisplay;
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1231
    invoke-virtual {v8}, Lcom/android/server/display/VirtualLogicalDisplay;->getDisplayIdLocked()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/display/LogicalDisplay;->removeVirtualDisplayLocked(I)Z

    .line 1234
    :cond_0
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1235
    const/4 v0, 0x1

    .line 1237
    invoke-virtual {v8}, Lcom/android/server/display/VirtualLogicalDisplay;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_1

    .line 1238
    invoke-virtual {v8}, Lcom/android/server/display/VirtualLogicalDisplay;->getDisplayIdLocked()I

    move-result v9

    invoke-direct {p0, v9, v11}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .end local v7           #parentDisplay:Lcom/android/server/display/LogicalDisplay;
    :cond_1
    move v4, v3

    .line 1241
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 1244
    .end local v2           #displayId:I
    .end local v4           #i:I
    .end local v8           #virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    .restart local v3       #i:I
    :cond_2
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    if-lez v4, :cond_9

    .line 1245
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1246
    .restart local v2       #displayId:I
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1248
    .local v1, display:Lcom/android/server/display/LogicalDisplay;
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1249
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 1251
    iget-boolean v9, p0, Lcom/android/server/display/DisplayManagerService;->mDisableMirror:Z

    if-eqz v9, :cond_3

    .line 1252
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    .line 1254
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1256
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->clearVirtualDisplayLocked()V

    .line 1258
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v5

    .local v5, j:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    :goto_2
    add-int/lit8 v5, v6, -0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    if-lez v6, :cond_5

    .line 1259
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 1260
    .restart local v8       #virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v9

    invoke-virtual {v8}, Lcom/android/server/display/VirtualLogicalDisplay;->getParentDisplayIdLocked()I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 1261
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1262
    invoke-virtual {v8}, Lcom/android/server/display/VirtualLogicalDisplay;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_4

    .line 1263
    invoke-virtual {v8}, Lcom/android/server/display/VirtualLogicalDisplay;->getDisplayIdLocked()I

    move-result v9

    invoke-direct {p0, v9, v11}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    :cond_4
    move v6, v5

    .line 1266
    .end local v5           #j:I
    .restart local v6       #j:I
    goto :goto_2

    .line 1268
    .end local v6           #j:I
    .end local v8           #virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    .restart local v5       #j:I
    :cond_5
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1280
    invoke-direct {p0, v2, v11}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1283
    const/4 v0, 0x1

    .end local v5           #j:I
    :cond_6
    :goto_3
    move v4, v3

    .line 1299
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .line 1284
    .end local v4           #i:I
    .restart local v3       #i:I
    :cond_7
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1291
    const/4 v9, 0x2

    invoke-direct {p0, v2, v9}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1295
    const/4 v0, 0x1

    goto :goto_3

    .line 1296
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->needChangeLocked()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1297
    const/4 v0, 0x1

    goto :goto_3

    .line 1300
    .end local v1           #display:Lcom/android/server/display/LogicalDisplay;
    .end local v2           #displayId:I
    :cond_9
    return v0
.end method

.method private updateVirtualDisplayLocked(IIIII)V
    .locals 7
    .parameter "displayId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1132
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 1133
    .local v6, virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/android/server/display/VirtualLogicalDisplay;->getParentDisplayIdLocked()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 1135
    .local v0, parentDisplay:Lcom/android/server/display/LogicalDisplay;
    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1136
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/LogicalDisplay;->updateVirtualDisplayLocked(IIIII)V

    .line 1137
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    .line 1138
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1139
    invoke-virtual {v6}, Lcom/android/server/display/VirtualLogicalDisplay;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 1140
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1142
    :cond_0
    return-void
.end method


# virtual methods
.method public addRemoteThumbnailControllerDisplay(Ljava/lang/String;Landroid/view/Surface;III)V
    .locals 7
    .parameter "name"
    .parameter "surface"
    .parameter "indicator"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 856
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 857
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mRemoteThumbnailControllerAdapter:Lcom/android/server/display/DisplayAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 859
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->addRemoteThumbnailControllerDisplayLocked:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mRemoteThumbnailControllerAdapter:Lcom/android/server/display/DisplayAdapter;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 865
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 866
    return-void

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DisplayManagerService"

    const-string v3, "Call addRemoteThumbnailControllerDisplayLocked failed !!!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 865
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public addVirtualDisplay(IIIIIII)I
    .locals 2
    .parameter "parentDisplayId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "flags"
    .parameter "rotation"

    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 593
    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/display/DisplayManagerService;->addVirtualDisplayLocked(IIIIIII)I

    move-result v0

    monitor-exit v1

    return v0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public assignDisplayMap(IIZ)V
    .locals 5
    .parameter "srcDisplayId"
    .parameter "dstDisplayId"
    .parameter "enable"

    .prologue
    .line 1444
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    .line 1445
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 1446
    .local v2, srcDisplay:Lcom/android/server/display/LogicalDisplay;
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1447
    .local v1, dstDisplay:Lcom/android/server/display/LogicalDisplay;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1448
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayMaps:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$DisplayMap;

    .line 1450
    .local v0, displayMap:Lcom/android/server/display/DisplayManagerService$DisplayMap;
    if-eqz p3, :cond_2

    .line 1451
    if-nez v0, :cond_1

    .line 1452
    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayMap;

    .end local v0           #displayMap:Lcom/android/server/display/DisplayManagerService$DisplayMap;
    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$DisplayMap;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    .line 1453
    .restart local v0       #displayMap:Lcom/android/server/display/DisplayManagerService$DisplayMap;
    iput p1, v0, Lcom/android/server/display/DisplayManagerService$DisplayMap;->srcDisplayId:I

    .line 1454
    iput p2, v0, Lcom/android/server/display/DisplayManagerService$DisplayMap;->dstDisplayId:I

    .line 1455
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayMaps:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1463
    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1465
    .end local v0           #displayMap:Lcom/android/server/display/DisplayManagerService$DisplayMap;
    :cond_0
    monitor-exit v4

    .line 1466
    return-void

    .line 1457
    .restart local v0       #displayMap:Lcom/android/server/display/DisplayManagerService$DisplayMap;
    :cond_1
    iput p1, v0, Lcom/android/server/display/DisplayManagerService$DisplayMap;->srcDisplayId:I

    .line 1458
    iput p2, v0, Lcom/android/server/display/DisplayManagerService$DisplayMap;->dstDisplayId:I

    goto :goto_0

    .line 1465
    .end local v0           #displayMap:Lcom/android/server/display/DisplayManagerService$DisplayMap;
    .end local v1           #dstDisplay:Lcom/android/server/display/LogicalDisplay;
    .end local v2           #srcDisplay:Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1461
    .restart local v0       #displayMap:Lcom/android/server/display/DisplayManagerService$DisplayMap;
    .restart local v1       #dstDisplay:Lcom/android/server/display/LogicalDisplay;
    .restart local v2       #srcDisplay:Lcom/android/server/display/LogicalDisplay;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayMaps:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->delete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public blankAllDisplaysFromPowerManager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 405
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    .line 406
    :try_start_0
    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    if-eq v3, v5, :cond_1

    .line 407
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    .line 409
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 410
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 411
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 412
    .local v1, device:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->blankLocked()V

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    .end local v1           #device:Lcom/android/server/display/DisplayDevice;
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 417
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_1
    monitor-exit v4

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public blankDisplayFromPowerManager(I)V
    .locals 4
    .parameter "displayId"

    .prologue
    .line 427
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    .line 428
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 429
    .local v1, display:Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 431
    .local v0, device:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->blankLocked()V

    .line 434
    .end local v0           #device:Lcom/android/server/display/DisplayDevice;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 435
    monitor-exit v3

    .line 436
    return-void

    .line 435
    .end local v1           #display:Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 8
    .parameter "address"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 712
    if-nez p1, :cond_0

    .line 713
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "address must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 716
    :cond_0
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-string v7, "com.powermo.connectivity.services.AndroidServiceRootServer.WORK"

    invoke-static {v6, v7}, Lcom/android/server/display/DisplayManagerService;->sendEnableControlCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 718
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 719
    .local v0, callingPid:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v0, v6, :cond_4

    move v1, v5

    .line 720
    .local v1, isSysServer:Z
    :goto_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->canCallerConfigureWifiDisplay()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v4, v5

    .line 721
    .local v4, trusted:Z
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 723
    .local v2, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 724
    :try_start_1
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v5, :cond_3

    .line 725
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v5, p1, v4}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;Z)V

    .line 727
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    return-void

    .end local v1           #isSysServer:Z
    .end local v2           #token:J
    .end local v4           #trusted:Z
    :cond_4
    move v1, v4

    .line 719
    goto :goto_0

    .line 727
    .restart local v1       #isSysServer:Z
    .restart local v2       #token:J
    .restart local v4       #trusted:Z
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 729
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public disconnectWifiDisplay()V
    .locals 4

    .prologue
    .line 735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 737
    .local v0, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 738
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_0

    .line 739
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 741
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 745
    return-void

    .line 741
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 743
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1687
    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1

    .line 1690
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump DisplayManager from from pid="

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

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    :goto_0
    return-void

    .line 1695
    :cond_1
    const-string v10, "DISPLAY MANAGER (dumpsys display)"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    iget-object v11, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v11

    .line 1698
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mHeadless="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Lcom/android/server/display/DisplayManagerService;->mHeadless:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mOnlyCode="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mSafeMode="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mPendingTraversal="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mAllDisplayBlankStateFromPowerManager="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1704
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mNextNonDefaultDisplayId="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1705
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mDefaultViewport="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1706
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mExternalTouchViewport="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1707
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mSingleDisplayDemoMode="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1709
    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v10, "    "

    invoke-direct {v6, p2, v10}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1710
    .local v6, ipw:Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1712
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1713
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Display Adapters: size="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayAdapter;

    .line 1715
    .local v0, adapter:Lcom/android/server/display/DisplayAdapter;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1716
    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 1747
    .end local v0           #adapter:Lcom/android/server/display/DisplayAdapter;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #ipw:Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1719
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #ipw:Lcom/android/internal/util/IndentingPrintWriter;
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1720
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Display Devices: size="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 1722
    .local v1, device:Lcom/android/server/display/DisplayDevice;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {v1, v6}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 1726
    .end local v1           #device:Lcom/android/server/display/DisplayDevice;
    :cond_3
    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 1727
    .local v7, logicalDisplayCount:I
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1728
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Logical Displays: size="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v7, :cond_4

    .line 1730
    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1731
    .local v3, displayId:I
    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 1732
    .local v2, display:Lcom/android/server/display/LogicalDisplay;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Display "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1733
    invoke-virtual {v2, v6}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1729
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1735
    .end local v2           #display:Lcom/android/server/display/LogicalDisplay;
    .end local v3           #displayId:I
    :cond_4
    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1736
    .local v9, virtualDisplayCount:I
    const/4 v10, 0x5

    if-le v9, v10, :cond_5

    .line 1737
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1738
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Virtual Display Has Parent: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayHasParent:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removed Virtual Displays: size="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1740
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v9, :cond_5

    .line 1741
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1742
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mVirtualDisplay #"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 1744
    .local v8, vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    invoke-virtual {v8, p2}, Lcom/android/server/display/VirtualLogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1740
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1747
    .end local v8           #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :cond_5
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 771
    if-nez p1, :cond_0

    .line 772
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 774
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->canCallerConfigureWifiDisplay()Z

    move-result v2

    if-nez v2, :cond_1

    .line 775
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires CONFIGURE_WIFI_DISPLAY permission to forget a wifi display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 779
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 781
    .local v0, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 782
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_2

    .line 783
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestForgetLocked(Ljava/lang/String;)V

    .line 785
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 789
    return-void

    .line 785
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 787
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDisplayHasContent(I)Z
    .locals 3
    .parameter "displayId"

    .prologue
    .line 1424
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 1425
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 1426
    .local v0, display:Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_0

    .line 1427
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v1

    monitor-exit v2

    .line 1429
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1431
    .end local v0           #display:Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDisplayIds()[I
    .locals 5

    .prologue
    .line 542
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    .line 543
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 552
    .local v0, count:I
    new-array v1, v0, [I

    .line 556
    .local v1, displayIds:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 563
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 556
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    :cond_0
    monitor-exit v4

    return-object v1

    .line 567
    .end local v0           #count:I
    .end local v1           #displayIds:[I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 4
    .parameter "displayId"

    .prologue
    .line 488
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    .line 495
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 496
    .local v0, display:Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    monitor-exit v3

    .line 507
    :goto_0
    return-object v2

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 501
    .local v1, virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {v1}, Lcom/android/server/display/VirtualLogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 508
    .end local v0           #display:Lcom/android/server/display/LogicalDisplay;
    .end local v1           #virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 507
    .restart local v0       #display:Lcom/android/server/display/LogicalDisplay;
    .restart local v1       #virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getParentForDisplay(I)I
    .locals 2
    .parameter "displayId"

    .prologue
    .line 646
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 647
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getParentForDisplayLocked(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVirtualDisplayIds()[I
    .locals 5

    .prologue
    .line 575
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    .line 576
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 577
    .local v0, count:I
    new-array v1, v0, [I

    .line 578
    .local v1, displayIds:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 579
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 578
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    :cond_0
    monitor-exit v4

    return-object v1

    .line 582
    .end local v0           #count:I
    .end local v1           #displayIds:[I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 4

    .prologue
    .line 793
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 795
    .local v0, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 796
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_0

    .line 797
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 803
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v2

    .line 799
    :cond_0
    :try_start_2
    new-instance v2, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {v2}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 803
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 801
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 803
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isHeadless()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mHeadless:Z

    return v0
.end method

.method public isSmartBookPluggedIn()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 809
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 811
    .local v3, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 812
    :try_start_1
    sget v7, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 813
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v5

    .line 814
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    sget v8, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 815
    .local v2, display:Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 816
    .local v0, device:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 817
    .local v1, deviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    iget v7, v1, Lcom/android/server/display/DisplayDeviceInfo;->subtype:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 818
    const/4 v5, 0x1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 823
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 820
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 823
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 821
    .end local v0           #device:Lcom/android/server/display/DisplayDevice;
    .end local v1           #deviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    .end local v2           #display:Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 823
    :catchall_1
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public performTraversalInTransactionFromWindowManager()V
    .locals 4

    .prologue
    .line 386
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    .line 387
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v2, :cond_1

    .line 388
    monitor-exit v3

    .line 399
    :cond_0
    return-void

    .line 390
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 392
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->performTraversalInTransactionLocked()V

    .line 393
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayTransactionListener;

    .line 397
    .local v1, listener:Lcom/android/server/display/DisplayTransactionListener;
    invoke-interface {v1}, Lcom/android/server/display/DisplayTransactionListener;->onDisplayTransaction()V

    goto :goto_0

    .line 393
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/server/display/DisplayTransactionListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .locals 7
    .parameter "callback"

    .prologue
    .line 653
    if-nez p1, :cond_0

    .line 654
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 657
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v5

    .line 658
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 659
    .local v1, callingPid:I
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 660
    new-instance v4, Ljava/lang/SecurityException;

    const-string v6, "The calling process has already registered an IDisplayManagerCallback."

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 674
    .end local v1           #callingPid:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 664
    .restart local v1       #callingPid:I
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(Lcom/android/server/display/DisplayManagerService;ILandroid/hardware/display/IDisplayManagerCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    .local v3, record:Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :try_start_2
    invoke-interface {p1}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 667
    .local v0, binder:Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 673
    :try_start_3
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 674
    monitor-exit v5

    .line 675
    return-void

    .line 668
    .end local v0           #binder:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 670
    .local v2, ex:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public registerDisplayTransactionListener(Lcom/android/server/display/DisplayTransactionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 325
    if-nez p1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    return-void
.end method

.method public removeRemoteThumbnailControllerDisplay(Landroid/view/Surface;)V
    .locals 6
    .parameter "surface"

    .prologue
    .line 869
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 870
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mRemoteThumbnailControllerAdapter:Lcom/android/server/display/DisplayAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 872
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->removeRemoteThumbnailControllerDisplayLocked:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mRemoteThumbnailControllerAdapter:Lcom/android/server/display/DisplayAdapter;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 877
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 878
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DisplayManagerService"

    const-string v3, "Call removeRemoteThumbnailControllerDisplayLocked failed !!!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 877
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeVirtualDisplay(I)V
    .locals 2
    .parameter "displayId"

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 605
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->removeVirtualDisplayLocked(I)V

    .line 606
    monitor-exit v1

    .line 607
    return-void

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "address"
    .parameter "alias"

    .prologue
    .line 749
    if-nez p1, :cond_0

    .line 750
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 752
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->canCallerConfigureWifiDisplay()Z

    move-result v2

    if-nez v2, :cond_1

    .line 753
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires CONFIGURE_WIFI_DISPLAY permission to rename a wifi display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 757
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 759
    .local v0, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 760
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_2

    .line 761
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 767
    return-void

    .line 763
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 765
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public scanWifiDisplays()V
    .locals 4

    .prologue
    .line 685
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 687
    .local v0, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 688
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_0

    .line 689
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestScanLocked()V

    .line 691
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    return-void

    .line 691
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 693
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDefaultExternalDisplay(IZ)Z
    .locals 7
    .parameter "displayId"
    .parameter "isDefault"

    .prologue
    const/4 v4, 0x0

    .line 513
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v5

    .line 514
    :try_start_0
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 515
    .local v1, display:Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_3

    .line 516
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v6

    iget v6, v6, Landroid/view/DisplayInfo;->type:I

    if-nez v6, :cond_0

    .line 517
    monitor-exit v5

    .line 533
    :goto_0
    return v4

    .line 520
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    if-lez v3, :cond_2

    .line 521
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 523
    .local v0, disp:Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->isAssignedDefaultExternalLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 524
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/display/LogicalDisplay;->setAssignedDefaultExternalLocked(Z)V

    :cond_1
    move v3, v2

    .line 526
    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 528
    .end local v0           #disp:Lcom/android/server/display/LogicalDisplay;
    .end local v3           #i:I
    .restart local v2       #i:I
    :cond_2
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setAssignedDefaultExternalLocked(Z)V

    .line 529
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 530
    const/4 v4, 0x1

    monitor-exit v5

    goto :goto_0

    .line 534
    .end local v1           #display:Lcom/android/server/display/LogicalDisplay;
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 533
    .restart local v1       #display:Lcom/android/server/display/LogicalDisplay;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDisplayHasContent(IZZ)V
    .locals 4
    .parameter "displayId"
    .parameter "hasContent"
    .parameter "inTraversal"

    .prologue
    .line 1408
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisableMirror:Z

    if-eqz v1, :cond_0

    .line 1409
    const/4 p2, 0x1

    .line 1411
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 1412
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 1413
    .local v0, display:Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v1

    if-eq v1, p2, :cond_2

    .line 1414
    invoke-virtual {v0, p2}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    .line 1415
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    if-lez v1, :cond_1

    .line 1416
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1418
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1420
    :cond_2
    monitor-exit v2

    .line 1421
    return-void

    .line 1420
    .end local v0           #display:Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
    .locals 5
    .parameter "displayId"
    .parameter "info"

    .prologue
    .line 360
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    .line 361
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 362
    .local v0, display:Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_0

    .line 363
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 364
    invoke-virtual {v0, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)V

    .line 365
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 367
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 372
    .local v1, virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    if-eqz v1, :cond_1

    .line 373
    invoke-virtual {v1, p2}, Lcom/android/server/display/VirtualLogicalDisplay;->setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)V

    .line 375
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 376
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 378
    :cond_1
    monitor-exit v3

    .line 379
    return-void

    .line 378
    .end local v0           #display:Lcom/android/server/display/LogicalDisplay;
    .end local v1           #virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V
    .locals 2
    .parameter "inputManagerFuncs"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 292
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerFuncs:Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 294
    monitor-exit v1

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVirtualDisplayFocus(IZ)Z
    .locals 4
    .parameter "displayId"
    .parameter "focus"

    .prologue
    const/4 v1, 0x0

    .line 626
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 627
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 628
    .local v0, display:Lcom/android/server/display/VirtualLogicalDisplay;
    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0, p2}, Lcom/android/server/display/VirtualLogicalDisplay;->setFocusLocked(Z)V

    .line 632
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    .line 633
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 634
    const/4 v1, 0x1

    monitor-exit v2

    .line 637
    :goto_0
    return v1

    :cond_0
    monitor-exit v2

    goto :goto_0

    .line 638
    .end local v0           #display:Lcom/android/server/display/VirtualLogicalDisplay;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V
    .locals 2
    .parameter "windowManagerFuncs"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 281
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerFuncs:Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 283
    monitor-exit v1

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady(ZZ)V
    .locals 2
    .parameter "safeMode"
    .parameter "onlyCore"

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 302
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    .line 303
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    .line 304
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 307
    return-void

    .line 304
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unblankAllDisplaysFromPowerManager()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 444
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    .line 445
    :try_start_0
    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    if-eq v3, v5, :cond_1

    .line 446
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    .line 448
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 449
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 450
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 451
    .local v1, device:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->unblankLocked()V

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    .end local v1           #device:Lcom/android/server/display/DisplayDevice;
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 456
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_1
    monitor-exit v4

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public unblankDisplayFromPowerManager(I)V
    .locals 4
    .parameter "displayId"

    .prologue
    .line 466
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    .line 467
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 468
    .local v1, display:Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 470
    .local v0, device:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->unblankLocked()V

    .line 473
    .end local v0           #device:Lcom/android/server/display/DisplayDevice;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 475
    monitor-exit v3

    .line 476
    return-void

    .line 475
    .end local v1           #display:Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unregisterDisplayTransactionListener(Lcom/android/server/display/DisplayTransactionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method public updateVirtualDisplay(IIIII)V
    .locals 2
    .parameter "displayId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 614
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 617
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/DisplayManagerService;->updateVirtualDisplayLocked(IIIII)V

    .line 618
    monitor-exit v1

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForDefaultDisplay()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 256
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v5

    .line 257
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v2, v6, v8

    .line 258
    .local v2, timeout:J
    :goto_0
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 260
    .local v0, delay:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    .line 261
    monitor-exit v5

    .line 272
    .end local v0           #delay:J
    :goto_1
    return v4

    .line 264
    .restart local v0       #delay:J
    :cond_0
    const-string v6, "DisplayManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "waitForDefaultDisplay: waiting, timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :try_start_1
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v6

    goto :goto_0

    .line 271
    .end local v0           #delay:J
    :cond_1
    :try_start_2
    monitor-exit v5

    .line 272
    const/4 v4, 0x1

    goto :goto_1

    .line 271
    .end local v2           #timeout:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method
