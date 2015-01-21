.class public Lzte/android/flashlight/FlashLightActivity;
.super Landroid/app/Activity;
.source "FlashLightActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/android/flashlight/FlashLightActivity$MyRecevice;
    }
.end annotation


# static fields
.field private static final CHECK_EVENT_DELAY:J = 0xfaL

.field private static final MAX_LIGHT_OPEN_TIME:J = 0x1b7740L

.field private static final MSG_BACK_PRESSED:I = 0x1100

.field private static final MSG_CHECK_LIGHT:I = 0x11

.field private static final MSG_OPENLIGHT:I = 0x100

.field private static final MSG_UPDATE_STATE:I = 0x1000

.field private static final OPEN_DELAY:I = 0x1f4

.field static final SHARED_PREFS_NAME:Ljava/lang/String; = "zte.android.flashlight.settingPreference"

.field private static final STRONG_SEN:F = 20.0f

.field static final SYSTEM_HOME_KEY:Ljava/lang/String; = "homekey"

.field static final SYSTEM_REASON:Ljava/lang/String; = "reason"

.field static final SYSTEM_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field private static final TAG:Ljava/lang/String; = "FlashLight"

.field private static final WEAK_SEN:F = 15.0f

.field public static shakebool:Z


# instance fields
.field private bIsActive:Z

.field private bIsScreenOn:Z

.field private flash_layout:Landroid/widget/RelativeLayout;

.field private flash_main_layout:Landroid/widget/RelativeLayout;

.field private mAcceleratorSensor:Landroid/hardware/Sensor;

.field private mBatteryLowListerner:Landroid/content/DialogInterface$OnClickListener;

.field private mBoundService:Lzte/android/flashlight/FlashService;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mFlashList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandle:Landroid/os/Handler;

.field private mIsBound:Z

.field private mIsFirstTime:Z

.field private mLastAccArray:[D

.field private mLastAccArrayIndex:I

.field private mMainScreenText:Landroid/widget/TextView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPrferences:Landroid/content/SharedPreferences;

.field private mScreenImg:Landroid/widget/ImageView;

.field private mSensorManage:Landroid/hardware/SensorManager;

.field private mSettingBtn:Landroid/widget/ImageView;

.field private mStartTime:J

.field private mVibrayor:Landroid/os/Vibrator;

.field private recevicer:Lzte/android/flashlight/FlashLightActivity$MyRecevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lzte/android/flashlight/FlashLightActivity;->shakebool:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lzte/android/flashlight/FlashLightActivity;->mStartTime:J

    .line 61
    iput-object v3, p0, Lzte/android/flashlight/FlashLightActivity;->mScreenImg:Landroid/widget/ImageView;

    .line 62
    iput-object v3, p0, Lzte/android/flashlight/FlashLightActivity;->mSettingBtn:Landroid/widget/ImageView;

    .line 63
    iput-boolean v2, p0, Lzte/android/flashlight/FlashLightActivity;->mIsFirstTime:Z

    .line 67
    iput-boolean v2, p0, Lzte/android/flashlight/FlashLightActivity;->bIsScreenOn:Z

    .line 68
    iput-boolean v2, p0, Lzte/android/flashlight/FlashLightActivity;->bIsActive:Z

    .line 78
    iput-object v3, p0, Lzte/android/flashlight/FlashLightActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 82
    iput v4, p0, Lzte/android/flashlight/FlashLightActivity;->mLastAccArrayIndex:I

    .line 83
    iput-boolean v4, p0, Lzte/android/flashlight/FlashLightActivity;->mIsBound:Z

    .line 88
    new-instance v0, Lzte/android/flashlight/FlashLightActivity$1;

    invoke-direct {v0, p0}, Lzte/android/flashlight/FlashLightActivity$1;-><init>(Lzte/android/flashlight/FlashLightActivity;)V

    iput-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mBatteryLowListerner:Landroid/content/DialogInterface$OnClickListener;

    .line 96
    new-instance v0, Lzte/android/flashlight/FlashLightActivity$2;

    invoke-direct {v0, p0}, Lzte/android/flashlight/FlashLightActivity$2;-><init>(Lzte/android/flashlight/FlashLightActivity;)V

    iput-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 104
    new-instance v0, Lzte/android/flashlight/FlashLightActivity$3;

    invoke-direct {v0, p0}, Lzte/android/flashlight/FlashLightActivity$3;-><init>(Lzte/android/flashlight/FlashLightActivity;)V

    iput-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 534
    return-void
.end method

.method private PlaySound(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 419
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->isSoundOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 422
    :try_start_0
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 433
    :cond_0
    :goto_0
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 434
    const/4 v2, 0x0

    iput-object v2, p0, Lzte/android/flashlight/FlashLightActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 437
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lzte/android/flashlight/FlashLightActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 438
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 444
    :cond_2
    :goto_1
    return-void

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v2, "FlashLight"

    const-string v3, "internal player engine has not been initialized or has been released"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 428
    .end local v1           #ex:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 429
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FlashLight"

    const-string v3, "unknown player exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 439
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 440
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "FlashLight"

    const-string v3, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u02bc\ufffd\ufffd\u02a7\ufffd\ufffd!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private SetUILayout()V
    .locals 11

    .prologue
    .line 446
    iget-object v5, p0, Lzte/android/flashlight/FlashLightActivity;->flash_main_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 447
    .local v2, mainPara:Landroid/view/ViewGroup$LayoutParams;
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-double v0, v5

    .line 448
    .local v0, height:D
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v3, v5

    .line 449
    .local v3, width:D
    iget-object v5, p0, Lzte/android/flashlight/FlashLightActivity;->mScreenImg:Landroid/widget/ImageView;

    const-wide v6, 0x3fdc28f5c28f5c29L

    mul-double/2addr v6, v3

    double-to-int v6, v6

    const-wide v7, 0x3fe47ae147ae147bL

    mul-double/2addr v7, v0

    double-to-int v7, v7

    const-wide v8, 0x3fe276c8b4395810L

    mul-double/2addr v8, v3

    double-to-int v8, v8

    const-wide v9, 0x3fe8fdf3b645a1cbL

    mul-double/2addr v9, v0

    double-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 450
    const-string v5, "FlashLight"

    const-string v6, "SetUILayout end"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method static synthetic access$000(Lzte/android/flashlight/FlashLightActivity;)Lzte/android/flashlight/FlashService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mBoundService:Lzte/android/flashlight/FlashService;

    return-object v0
.end method

.method static synthetic access$002(Lzte/android/flashlight/FlashLightActivity;Lzte/android/flashlight/FlashService;)Lzte/android/flashlight/FlashService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lzte/android/flashlight/FlashLightActivity;->mBoundService:Lzte/android/flashlight/FlashService;

    return-object p1
.end method

.method static synthetic access$100(Lzte/android/flashlight/FlashLightActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->closeLight()V

    return-void
.end method

.method static synthetic access$200(Lzte/android/flashlight/FlashLightActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->openLight()V

    return-void
.end method

.method static synthetic access$300(Lzte/android/flashlight/FlashLightActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget-wide v0, p0, Lzte/android/flashlight/FlashLightActivity;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lzte/android/flashlight/FlashLightActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->flash_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lzte/android/flashlight/FlashLightActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mScreenImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lzte/android/flashlight/FlashLightActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lzte/android/flashlight/FlashLightActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->releaseLight()V

    return-void
.end method

.method static synthetic access$802(Lzte/android/flashlight/FlashLightActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lzte/android/flashlight/FlashLightActivity;->bIsActive:Z

    return p1
.end method

.method private closeLight()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 311
    const-string v0, "FlashLight"

    const-string v1, "FlashLightActivity closeLight"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mBoundService:Lzte/android/flashlight/FlashService;

    invoke-virtual {v0}, Lzte/android/flashlight/FlashService;->Close_Light()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0, v2}, Lzte/android/flashlight/FlashLightActivity;->setWindowState(Z)V

    .line 314
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->flash_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 315
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mScreenImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 317
    const/high16 v0, 0x7f06

    invoke-direct {p0, v0}, Lzte/android/flashlight/FlashLightActivity;->PlaySound(I)V

    .line 318
    const/4 v0, 0x4

    sput v0, Lzte/android/flashlight/FlashState;->mState:I

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzte/android/flashlight/FlashLightActivity;->mStartTime:J

    .line 320
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mVibrayor:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 322
    :cond_0
    return-void
.end method

.method private initFristTime()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 186
    const-string v1, "FlashLight"

    const-string v2, "FlashLightActivity initFristTime"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->SetUILayout()V

    .line 189
    const-string v1, "zte.android.flashlight.settingPreference"

    invoke-virtual {p0, v1, v4}, Lzte/android/flashlight/FlashLightActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mPrferences:Landroid/content/SharedPreferences;

    .line 190
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->flash_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 191
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mScreenImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 192
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mScreenImg:Landroid/widget/ImageView;

    new-instance v2, Lzte/android/flashlight/FlashLightActivity$4;

    invoke-direct {v2, p0}, Lzte/android/flashlight/FlashLightActivity$4;-><init>(Lzte/android/flashlight/FlashLightActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mSettingBtn:Landroid/widget/ImageView;

    new-instance v2, Lzte/android/flashlight/FlashLightActivity$5;

    invoke-direct {v2, p0}, Lzte/android/flashlight/FlashLightActivity$5;-><init>(Lzte/android/flashlight/FlashLightActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lzte/android/flashlight/FlashLightActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mSensorManage:Landroid/hardware/SensorManager;

    .line 219
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mSensorManage:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mAcceleratorSensor:Landroid/hardware/Sensor;

    .line 221
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mSensorManage:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity;->mAcceleratorSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 224
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lzte/android/flashlight/FlashLightActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mVibrayor:Landroid/os/Vibrator;

    .line 226
    new-instance v1, Lzte/android/flashlight/FlashLightActivity$6;

    invoke-direct {v1, p0}, Lzte/android/flashlight/FlashLightActivity$6;-><init>(Lzte/android/flashlight/FlashLightActivity;)V

    iput-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mHandle:Landroid/os/Handler;

    .line 270
    const/4 v1, 0x4

    sput v1, Lzte/android/flashlight/FlashState;->mState:I

    .line 271
    new-instance v1, Lzte/android/flashlight/FlashLightActivity$MyRecevice;

    invoke-direct {v1, p0}, Lzte/android/flashlight/FlashLightActivity$MyRecevice;-><init>(Lzte/android/flashlight/FlashLightActivity;)V

    iput-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->recevicer:Lzte/android/flashlight/FlashLightActivity$MyRecevice;

    .line 272
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 273
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v1, "android.intent.action.OPENING_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->recevicer:Lzte/android/flashlight/FlashLightActivity$MyRecevice;

    invoke-virtual {p0, v1, v0}, Lzte/android/flashlight/FlashLightActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    const/4 v1, 0x5

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    iput-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mLastAccArray:[D

    .line 282
    iput-boolean v4, p0, Lzte/android/flashlight/FlashLightActivity;->mIsFirstTime:Z

    .line 283
    return-void

    .line 281
    nop

    :array_0
    .array-data 0x8
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0x17t 0x40t
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0x17t 0x40t
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0x17t 0x40t
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0x17t 0x40t
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0x17t 0x40t
    .end array-data
.end method

.method private isCanChangeShakeState([F)Z
    .locals 13
    .parameter "values"

    .prologue
    .line 360
    const/4 v7, 0x0

    aget v7, p1, v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const/4 v9, 0x1

    aget v9, p1, v9

    float-to-double v9, v9

    const-wide/high16 v11, 0x4000

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    const/4 v9, 0x2

    aget v9, p1, v9

    float-to-double v9, v9

    const-wide/high16 v11, 0x4000

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 363
    .local v2, distance:D
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->isStrong()Z

    move-result v6

    .line 364
    .local v6, isStrongSen:Z
    const-wide/16 v0, 0x0

    .line 365
    .local v0, avgAcc:D
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v7, p0, Lzte/android/flashlight/FlashLightActivity;->mLastAccArray:[D

    array-length v7, v7

    if-ge v5, v7, :cond_0

    .line 366
    iget-object v7, p0, Lzte/android/flashlight/FlashLightActivity;->mLastAccArray:[D

    aget-wide v7, v7, v5

    add-double/2addr v0, v7

    .line 365
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 368
    :cond_0
    const-wide/high16 v7, 0x4014

    div-double/2addr v0, v7

    .line 369
    iget v7, p0, Lzte/android/flashlight/FlashLightActivity;->mLastAccArrayIndex:I

    const/4 v8, 0x5

    if-le v7, v8, :cond_1

    .line 370
    iget v7, p0, Lzte/android/flashlight/FlashLightActivity;->mLastAccArrayIndex:I

    rem-int/lit8 v7, v7, 0x5

    iput v7, p0, Lzte/android/flashlight/FlashLightActivity;->mLastAccArrayIndex:I

    .line 372
    :cond_1
    iget-object v7, p0, Lzte/android/flashlight/FlashLightActivity;->mLastAccArray:[D

    iget v8, p0, Lzte/android/flashlight/FlashLightActivity;->mLastAccArrayIndex:I

    aput-wide v2, v7, v8

    .line 373
    sub-double v7, v0, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4010

    cmpl-double v7, v7, v9

    if-lez v7, :cond_2

    const/4 v4, 0x1

    .line 374
    .local v4, flag:Z
    :goto_1
    if-eqz v6, :cond_4

    .line 375
    const-wide/high16 v7, 0x4034

    cmpl-double v7, v2, v7

    if-lez v7, :cond_3

    if-eqz v4, :cond_3

    .line 376
    const/4 v7, 0x1

    .line 384
    :goto_2
    return v7

    .line 373
    .end local v4           #flag:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 378
    .restart local v4       #flag:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 381
    :cond_4
    const-wide/high16 v7, 0x402e

    cmpl-double v7, v2, v7

    if-lez v7, :cond_5

    if-eqz v4, :cond_5

    .line 382
    const/4 v7, 0x1

    goto :goto_2

    .line 384
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private isShakeOpen()Z
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mPrferences:Landroid/content/SharedPreferences;

    const-string v1, "shake_sopen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isSoundOpen()Z
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mPrferences:Landroid/content/SharedPreferences;

    const-string v1, "sound_notify"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isStrong()Z
    .locals 4

    .prologue
    .line 344
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mPrferences:Landroid/content/SharedPreferences;

    const-string v2, "sensitivity"

    const-string v3, "Strong"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, strengthstr:Ljava/lang/String;
    const-string v1, "Strong"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private openLight()V
    .locals 5

    .prologue
    const-wide/16 v3, 0xfa

    .line 289
    const-string v0, "FlashLight"

    const-string v1, "FlashLightActivity openLight"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mBoundService:Lzte/android/flashlight/FlashService;

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mHandle:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mBoundService:Lzte/android/flashlight/FlashService;

    invoke-virtual {v0}, Lzte/android/flashlight/FlashService;->Open_Light()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-boolean v0, p0, Lzte/android/flashlight/FlashLightActivity;->mIsFirstTime:Z

    if-nez v0, :cond_2

    .line 296
    const-string v0, "FlashLight"

    const-string v1, "openLight updatestate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mHandle:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lzte/android/flashlight/FlashLightActivity;->setWindowState(Z)V

    .line 300
    const v0, 0x7f060001

    invoke-direct {p0, v0}, Lzte/android/flashlight/FlashLightActivity;->PlaySound(I)V

    .line 301
    const/4 v0, 0x5

    sput v0, Lzte/android/flashlight/FlashState;->mState:I

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzte/android/flashlight/FlashLightActivity;->mStartTime:J

    .line 303
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mVibrayor:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 304
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mHandle:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private releaseLight()V
    .locals 2

    .prologue
    .line 325
    const-string v0, "FlashLight"

    const-string v1, "FlashLightActivity releaseLight"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mBoundService:Lzte/android/flashlight/FlashService;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lzte/android/flashlight/FlashLightActivity;->doUnbindService()V

    .line 329
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mBoundService:Lzte/android/flashlight/FlashService;

    invoke-virtual {v0}, Lzte/android/flashlight/FlashService;->stopSelf()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mBoundService:Lzte/android/flashlight/FlashService;

    .line 333
    :cond_0
    return-void
.end method

.method private setWindowState(Z)V
    .locals 4
    .parameter "keepScreenOn"

    .prologue
    const/16 v3, 0x80

    .line 168
    const-string v1, "FlashLight"

    const-string v2, "FlashLightActivity setWindowState"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lzte/android/flashlight/FlashLightActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 175
    .local v0, mWin:Landroid/view/Window;
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public SetScreenState(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 530
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lzte/android/flashlight/FlashLightActivity;->bIsScreenOn:Z

    .line 531
    return-void
.end method

.method doBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/android/flashlight/FlashService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lzte/android/flashlight/FlashLightActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 153
    iput-boolean v2, p0, Lzte/android/flashlight/FlashLightActivity;->mIsBound:Z

    .line 154
    return-void
.end method

.method doUnbindService()V
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lzte/android/flashlight/FlashLightActivity;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lzte/android/flashlight/FlashLightActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/android/flashlight/FlashLightActivity;->mIsBound:Z

    .line 163
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 416
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 337
    const-string v0, "FlashLight"

    const-string v1, "FlashLightActivity onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->releaseLight()V

    .line 340
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mHandle:Landroid/os/Handler;

    const/16 v1, 0x1100

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 341
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/high16 v6, 0x48

    const/4 v5, 0x1

    .line 121
    const-string v2, "FlashLight"

    const-string v3, "FlashLightActivity onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lzte/android/flashlight/FlashLightActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 125
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 127
    const-string v2, "shake"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lzte/android/flashlight/FlashLightActivity;->shakebool:Z

    .line 128
    const-string v2, "FlashLight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lzte/android/flashlight/FlashLightActivity;->shakebool:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-boolean v2, Lzte/android/flashlight/FlashLightActivity;->shakebool:Z

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lzte/android/flashlight/FlashLightActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 135
    :cond_0
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lzte/android/flashlight/FlashLightActivity;->setContentView(I)V

    .line 136
    const v2, 0x7f0a0003

    invoke-virtual {p0, v2}, Lzte/android/flashlight/FlashLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lzte/android/flashlight/FlashLightActivity;->mScreenImg:Landroid/widget/ImageView;

    .line 137
    const/high16 v2, 0x7f0a

    invoke-virtual {p0, v2}, Lzte/android/flashlight/FlashLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lzte/android/flashlight/FlashLightActivity;->flash_main_layout:Landroid/widget/RelativeLayout;

    .line 138
    const v2, 0x7f0a0001

    invoke-virtual {p0, v2}, Lzte/android/flashlight/FlashLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lzte/android/flashlight/FlashLightActivity;->flash_layout:Landroid/widget/RelativeLayout;

    .line 139
    const v2, 0x7f0a0004

    invoke-virtual {p0, v2}, Lzte/android/flashlight/FlashLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lzte/android/flashlight/FlashLightActivity;->mSettingBtn:Landroid/widget/ImageView;

    .line 140
    const v2, 0x7f0a0002

    invoke-virtual {p0, v2}, Lzte/android/flashlight/FlashLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lzte/android/flashlight/FlashLightActivity;->mMainScreenText:Landroid/widget/TextView;

    .line 141
    invoke-virtual {p0}, Lzte/android/flashlight/FlashLightActivity;->doBindService()V

    .line 142
    sput-boolean v5, Lzte/android/flashlight/FlashState;->resumeOpenLight:Z

    .line 143
    sput-boolean v5, Lzte/android/flashlight/FlashState;->isFlashActivityExist:Z

    .line 144
    iget-boolean v2, p0, Lzte/android/flashlight/FlashLightActivity;->mIsFirstTime:Z

    if-eqz v2, :cond_1

    .line 145
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->initFristTime()V

    .line 147
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 511
    const-string v0, "FlashLight"

    const-string v1, "FlashLightActivity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mSensorManage:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 514
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 518
    :cond_0
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->releaseLight()V

    .line 519
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity;->recevicer:Lzte/android/flashlight/FlashLightActivity$MyRecevice;

    invoke-virtual {p0, v0}, Lzte/android/flashlight/FlashLightActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 520
    sget-boolean v0, Lzte/android/flashlight/FlashLightActivity;->shakebool:Z

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {p0}, Lzte/android/flashlight/FlashLightActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 523
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 524
    sput-boolean v2, Lzte/android/flashlight/FlashState;->isFlashActivityExist:Z

    .line 525
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 526
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 527
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 456
    invoke-virtual {p0}, Lzte/android/flashlight/FlashLightActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 457
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FlashLight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 459
    const/4 v1, 0x0

    iput-boolean v1, p0, Lzte/android/flashlight/FlashLightActivity;->bIsActive:Z

    .line 460
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const v6, 0x104000a

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 465
    const-string v1, "FlashLight"

    const-string v2, "onResume start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mBoundService:Lzte/android/flashlight/FlashService;

    if-nez v1, :cond_0

    .line 467
    invoke-virtual {p0}, Lzte/android/flashlight/FlashLightActivity;->doBindService()V

    .line 469
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 470
    sget-boolean v1, Lzte/android/flashlight/BootingReceiver;->isBattaryLow:Z

    if-eqz v1, :cond_1

    .line 471
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 476
    .local v0, dialog:Landroid/app/AlertDialog;
    const/4 v1, -0x1

    invoke-virtual {p0, v6}, Lzte/android/flashlight/FlashLightActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lzte/android/flashlight/FlashLightActivity;->mBatteryLowListerner:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 479
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 480
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 507
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 485
    :cond_1
    sget v1, Lzte/android/flashlight/FlashState;->mState:I

    if-ne v1, v5, :cond_4

    sget-boolean v1, Lzte/android/flashlight/FlashState;->resumeOpenLight:Z

    if-eqz v1, :cond_4

    .line 486
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->openLight()V

    .line 492
    :cond_2
    :goto_1
    sget v1, Lzte/android/flashlight/FlashState;->mState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 493
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mScreenImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 494
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->flash_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 495
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mScreenImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 499
    :cond_3
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->isShakeOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 500
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mMainScreenText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    :goto_2
    iput-boolean v4, p0, Lzte/android/flashlight/FlashLightActivity;->bIsActive:Z

    .line 506
    const-string v1, "FlashLight"

    const-string v2, "onResume end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    :cond_4
    sget-boolean v1, Lzte/android/flashlight/FlashState;->resumeOpenLight:Z

    if-nez v1, :cond_2

    sget v1, Lzte/android/flashlight/FlashState;->mState:I

    if-ne v1, v5, :cond_2

    .line 488
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->flash_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 489
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mScreenImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_1

    .line 502
    :cond_5
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity;->mMainScreenText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 392
    iget-boolean v2, p0, Lzte/android/flashlight/FlashLightActivity;->bIsScreenOn:Z

    if-eqz v2, :cond_0

    .line 393
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lzte/android/flashlight/FlashLightActivity;->mStartTime:J

    sub-long v0, v2, v4

    .line 395
    .local v0, dtTime:J
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->isShakeOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v2}, Lzte/android/flashlight/FlashLightActivity;->isCanChangeShakeState([F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    iget-boolean v2, p0, Lzte/android/flashlight/FlashLightActivity;->bIsActive:Z

    if-eqz v2, :cond_0

    .line 403
    sget v2, Lzte/android/flashlight/FlashState;->mState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 404
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->closeLight()V

    .line 412
    .end local v0           #dtTime:J
    :cond_0
    :goto_0
    return-void

    .line 406
    .restart local v0       #dtTime:J
    :cond_1
    invoke-direct {p0}, Lzte/android/flashlight/FlashLightActivity;->openLight()V

    goto :goto_0
.end method
