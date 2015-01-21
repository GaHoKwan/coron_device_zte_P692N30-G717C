.class public Lcom/android/gallery3d/app/AbstractGalleryActivity;
.super Landroid/app/Activity;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;,
        Lcom/android/gallery3d/app/AbstractGalleryActivity$PositionListener;,
        Lcom/android/gallery3d/app/AbstractGalleryActivity$WfdReceiver;,
        Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;,
        Lcom/android/gallery3d/app/AbstractGalleryActivity$SmartBookBroadcastReceiver;
    }
.end annotation


# static fields
.field public static KEY_HDMI_ENABLE_STATUS:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Gallery2/AbstractGalleryActivity"

.field public static final UNUSABLE_ANGLE_VALUE:F = -1.0f

.field public static final WFD_CONNECTED_ACTION:Ljava/lang/String; = "com.mediatek.wfd.connection"

.field public static final WFD_CONNECTED_FLAG:I = 0x1

.field public static final WFD_DISCONNECTED_FLAG:I

.field private static final mIsMavSupported:Z


# instance fields
.field private WfdReceiver:Lcom/android/gallery3d/app/AbstractGalleryActivity$WfdReceiver;

.field private volatile hasPausedActivity:Z

.field private hdmiCableState:I

.field private hdmiReceiver:Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;

.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDisableToggleStatusBar:Z

.field protected mDisplay:Landroid/view/Display;

.field private mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

.field protected mGyroSensor:Landroid/hardware/Sensor;

.field protected mHasGyroSensor:Z

.field private mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

.field private mIsHDMIconnect:Z

.field private mIsSMBconnect:Z

.field private mIsWFDconnect:Z

.field private mListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;

.field private mMountFilter:Landroid/content/IntentFilter;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

.field private mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

.field private mPositionListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$PositionListener;

.field protected mSensorManager:Landroid/hardware/SensorManager;

.field public mShouldCheckStorageState:Z

.field private final mSmartBookReceiver:Landroid/content/BroadcastReceiver;

.field private mStateManager:Lcom/android/gallery3d/app/StateManager;

.field private final mSyncObj:Ljava/lang/Object;

.field private mTransitionStore:Lcom/android/gallery3d/app/TransitionStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "hdmi_enable_status"

    sput-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->KEY_HDMI_ENABLE_STATUS:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMAVSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsMavSupported:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Lcom/android/gallery3d/app/TransitionStore;

    invoke-direct {v0}, Lcom/android/gallery3d/app/TransitionStore;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mTransitionStore:Lcom/android/gallery3d/app/TransitionStore;

    .line 87
    iput-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSyncObj:Ljava/lang/Object;

    .line 97
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsWFDconnect:Z

    .line 98
    new-instance v0, Lcom/android/gallery3d/app/AbstractGalleryActivity$WfdReceiver;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$WfdReceiver;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->WfdReceiver:Lcom/android/gallery3d/app/AbstractGalleryActivity$WfdReceiver;

    .line 102
    new-instance v0, Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->hdmiReceiver:Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;

    .line 103
    iput-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    .line 104
    iput v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->hdmiCableState:I

    .line 105
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsHDMIconnect:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsSMBconnect:Z

    .line 109
    new-instance v0, Lcom/android/gallery3d/app/AbstractGalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$1;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    .line 224
    new-instance v0, Lcom/android/gallery3d/app/AbstractGalleryActivity$SmartBookBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity$SmartBookBroadcastReceiver;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AbstractGalleryActivity$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSmartBookReceiver:Landroid/content/BroadcastReceiver;

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mShouldCheckStorageState:Z

    .line 589
    new-instance v0, Lcom/android/gallery3d/app/AbstractGalleryActivity$PositionListener;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$PositionListener;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPositionListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$PositionListener;

    .line 629
    return-void
.end method

.method static synthetic access$102(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsSMBconnect:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isReplaceDRMImage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AbstractGalleryActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->hdmiCableState:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/AbstractGalleryActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->hdmiCableState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AbstractGalleryActivity;)Lcom/mediatek/common/hdmi/IHDMINative;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsHDMIconnect:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsWFDconnect:Z

    return p1
.end method

.method private static clearBitmapPool(Lcom/android/gallery3d/data/BitmapPool;)V
    .locals 0
    .parameter "pool"

    .prologue
    .line 445
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/BitmapPool;->clear()V

    .line 446
    :cond_0
    return-void
.end method

.method private initGyroSensor()V
    .locals 2

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 553
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGyroSensor:Landroid/hardware/Sensor;

    .line 554
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGyroSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mHasGyroSensor:Z

    .line 555
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mHasGyroSensor:Z

    if-nez v0, :cond_0

    .line 560
    const-string v0, "Gallery2/AbstractGalleryActivity"

    const-string v1, "not has gyro sensor"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mDisplay:Landroid/view/Display;

    .line 564
    return-void

    .line 554
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultStorageMounted()Z
    .locals 2

    .prologue
    .line 535
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultStorageState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, defaultStorageState:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 537
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 539
    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isReplaceDRMImage()V
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsSMBconnect:Z

    if-eqz v0, :cond_0

    .line 252
    sget v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_SMB:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->drmSetShowState(I)V

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 261
    return-void

    .line 253
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsWFDconnect:Z

    if-eqz v0, :cond_1

    .line 254
    sget v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_WFD:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->drmSetShowState(I)V

    goto :goto_0

    .line 255
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsHDMIconnect:Z

    if-eqz v0, :cond_2

    .line 256
    sget v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_HDMI:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->drmSetShowState(I)V

    goto :goto_0

    .line 258
    :cond_2
    sget v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_NORMAL:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->drmSetShowState(I)V

    goto :goto_0
.end method

.method private registerGyroSensorListener()V
    .locals 4

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mHasGyroSensor:Z

    if-eqz v0, :cond_0

    .line 568
    const-string v0, "Gallery2/AbstractGalleryActivity"

    const-string v1, "register gyro sensor listener"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPositionListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$PositionListener;

    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGyroSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 572
    :cond_0
    return-void
.end method

.method private registerSmartBookReceiver()V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v0, mSmartBookIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSmartBookReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    return-void
.end method

.method private static setAlertDialogIconAttribute(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .parameter "builder"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 330
    const v0, 0x1010355

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 331
    return-void
.end method

.method private toggleStatusBarByOrientation()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 510
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    if-eqz v1, :cond_0

    .line 518
    :goto_0
    return-void

    .line 512
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 513
    .local v0, win:Landroid/view/Window;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 514
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method private unregisterGyroSensorListener()V
    .locals 2

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mHasGyroSensor:Z

    if-eqz v0, :cond_0

    .line 576
    const-string v0, "Gallery2/AbstractGalleryActivity"

    const-string v1, "unregister gyro listener"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPositionListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$PositionListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 579
    :cond_0
    return-void
.end method


# virtual methods
.method protected disableToggleStatusBar()V
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    .line 506
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GLRootView;->dispatchKeyEventView(Landroid/view/KeyEvent;)V

    .line 585
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 176
    return-object p0
.end method

.method public getDataManager()Lcom/android/gallery3d/data/DataManager;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 653
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mDisplay:Landroid/view/Display;

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getGLRoot()Lcom/android/gallery3d/ui/GLRoot;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method public getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/GalleryActionBar;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method public getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    return-object v0
.end method

.method public getPanoramaViewHelper()Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    return-object v0
.end method

.method public declared-synchronized getStateManager()Lcom/android/gallery3d/app/StateManager;
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/android/gallery3d/app/StateManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/StateManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThreadPool()Lcom/android/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mTransitionStore:Lcom/android/gallery3d/app/TransitionStore;

    return-object v0
.end method

.method public hasPausedActivity()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->hasPausedActivity:Z

    return v0
.end method

.method protected isFullscreen()Z
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmartBookConnected()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsSMBconnect:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 626
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 463
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/app/StateManager;->notifyActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 468
    return-void

    .line 466
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 474
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 476
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 480
    return-void

    .line 478
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 155
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->onConfigurationChanged()V

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 158
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 163
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->hasPausedActivity:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 166
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    new-instance v0, Lcom/android/gallery3d/app/OrientationManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/OrientationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    .line 127
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    const-class v0, Lcom/mediatek/common/hdmi/IHDMINative;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/hdmi/IHDMINative;

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "Gallery2/AbstractGalleryActivity"

    const-string v1, "Native is not created"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    new-instance v0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->onCreate()V

    .line 136
    sget-boolean v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsMavSupported:Z

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->initGyroSensor()V

    .line 139
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 171
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 450
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 451
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 453
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 457
    return-void

    .line 455
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onGyroSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 614
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;

    invoke-interface {v1, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;->onCalculateAngle(Landroid/hardware/SensorEvent;)F

    move-result v0

    .line 617
    .local v0, angle:F
    const/high16 v1, -0x4080

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;->onGyroPositionChanged(F)V

    .line 621
    .end local v0           #angle:F
    :cond_0
    monitor-exit v2

    .line 622
    return-void

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 496
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 498
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/StateManager;->itemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 500
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 426
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 427
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->pause()V

    .line 428
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->onPause()V

    .line 429
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 431
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->pause()V

    .line 432
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 436
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->clearBitmapPool(Lcom/android/gallery3d/data/BitmapPool;)V

    .line 437
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->clearBitmapPool(Lcom/android/gallery3d/data/BitmapPool;)V

    .line 439
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/BytesBufferPool;->clear()V

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->hasPausedActivity:Z

    .line 442
    return-void

    .line 434
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 398
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 399
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 402
    invoke-static {}, Lcom/android/gallery3d/util/MediaSetUtils;->refreshBucketId()V

    .line 405
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v0}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->init(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 411
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->resume()V

    .line 412
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 416
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 417
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->resume()V

    .line 419
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->hasPausedActivity:Z

    .line 421
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 422
    return-void

    .line 414
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 145
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->saveState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onStart()V
    .locals 8

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 269
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "com.mediatek.wfd.connection"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->WfdReceiver:Lcom/android/gallery3d/app/AbstractGalleryActivity$WfdReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    const-string v5, "Gallery2/AbstractGalleryActivity"

    const-string v6, "register wfdReceiver"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 276
    .local v2, hfilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->hdmiReceiver:Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    const-string v5, "Gallery2/AbstractGalleryActivity"

    const-string v6, "register HdmiReceiver"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->registerSmartBookReceiver()V

    .line 284
    const-string v5, "Gallery2/AbstractGalleryActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStart: should check storage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mShouldCheckStorageState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-boolean v5, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mShouldCheckStorageState:Z

    if-nez v5, :cond_0

    .line 325
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMTKExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isDefaultStorageMounted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 292
    new-instance v3, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 298
    .local v3, onCancel:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 305
    .local v4, onClick:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c032f

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0330

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 311
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    sget-boolean v5, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_ICON_ATTRIBUTE:Z

    if-eqz v5, :cond_3

    .line 312
    invoke-static {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setAlertDialogIconAttribute(Landroid/app/AlertDialog$Builder;)V

    .line 316
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 317
    iget-object v5, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    if-nez v5, :cond_1

    .line 318
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    .line 319
    iget-object v5, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    const-string v6, "file"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 321
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v5, v6}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #onCancel:Landroid/content/DialogInterface$OnCancelListener;
    .end local v4           #onClick:Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    invoke-virtual {v5}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->onStart()V

    goto :goto_0

    .line 314
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v3       #onCancel:Landroid/content/DialogInterface$OnCancelListener;
    .restart local v4       #onClick:Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    const v5, 0x1080027

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 337
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSmartBookReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->WfdReceiver:Lcom/android/gallery3d/app/AbstractGalleryActivity$WfdReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->hdmiReceiver:Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 344
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->onStop()V

    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 350
    return-void
.end method

.method protected onStorageReady()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    :cond_0
    return-void
.end method

.method public removeGyroPositionListener(Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;)V
    .locals 2
    .parameter "gyroPositionListener"

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;

    if-ne v0, p1, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unregisterGyroSensorListener()V

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;

    .line 648
    :cond_0
    monitor-exit v1

    .line 649
    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 207
    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    .line 209
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v0}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->init(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 213
    :cond_0
    return-void
.end method

.method public setGyroPositionListener(Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;)V
    .locals 2
    .parameter "gyroPositionListener"

    .prologue
    .line 636
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 637
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->registerGyroSensorListener()V

    .line 638
    iput-object p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;

    .line 639
    monitor-exit v1

    .line 640
    return-void

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
