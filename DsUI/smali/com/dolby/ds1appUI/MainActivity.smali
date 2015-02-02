.class public Lcom/dolby/ds1appUI/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/dolby/IDsClientEvents;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolby/ds1appUI/IDsActivityCommonTemp;
.implements Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;
.implements Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;
.implements Lcom/dolby/ds1appUI/IDsFragObserver;
.implements Lcom/dolby/ds1appUI/IDsFragPowerObserver;
.implements Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;
.implements Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;
.implements Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;


# static fields
.field public static final ACTION_LAUNCH_DS1_INSTOREDEMO_APP:Ljava/lang/String; = "com.dolby.LAUNCH_DS1_INSTOREDEMO_APP"

.field private static final INSTORE_MENU_ID:I = 0x3e9

.field private static configuration:Lcom/dolby/ds1appCoreUI/Configuration;

.field private static mEditProfile:Z

.field private static mOnDestroyTimer:J


# instance fields
.field private final DYNAMIC_LINEAR_LAYOUT_ID:I

.field private mDSLogo:Landroid/widget/ImageView;

.field private mDolbyClientConnected:Z

.field private final mDsClient:Landroid/dolby/DsClient;

.field private mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

.field private mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

.field private mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

.field private mFS:Lcom/dolby/ds1appUI/FragSwitches;

.field private mIsActivityRunning:Z

.field private mIsMonoSpeaker:Z

.field private mIsScreenOn:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mMobileLayout:Z

.field private mNativeRootContainer:Landroid/view/ViewGroup;

.field private mOriginX:I

.field private mOriginY:I

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mScrollview:Landroid/widget/ScrollView;

.field private mSplashClientBound:Z

.field private mSplashScreenDelay:Ljava/lang/Runnable;

.field private final mSplashScreenDelayTime:I

.field private mSplashScreenDialog:Landroid/app/Dialog;

.field private mSplashTimerElapsed:Z

.field private mUseDsApiOnUiEvent:Z

.field private mVisualizerRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dolby/ds1appUI/MainActivity;->mEditProfile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Landroid/dolby/DsClient;

    invoke-direct {v0}, Landroid/dolby/DsClient;-><init>()V

    iput-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    .line 60
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    .line 67
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashScreenDelayTime:I

    .line 68
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashTimerElapsed:Z

    .line 69
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashClientBound:Z

    .line 70
    iput-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 89
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mVisualizerRegistered:Z

    .line 92
    iput-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .line 93
    iput-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 94
    iput-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFS:Lcom/dolby/ds1appUI/FragSwitches;

    .line 95
    iput-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    .line 99
    const/16 v0, 0x8

    iput v0, p0, Lcom/dolby/ds1appUI/MainActivity;->DYNAMIC_LINEAR_LAYOUT_ID:I

    .line 101
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    .line 107
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsScreenOn:Z

    .line 108
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsActivityRunning:Z

    .line 110
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsMonoSpeaker:Z

    .line 115
    new-instance v0, Lcom/dolby/ds1appUI/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/dolby/ds1appUI/MainActivity$1;-><init>(Lcom/dolby/ds1appUI/MainActivity;)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/dolby/ds1appUI/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/dolby/ds1appUI/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/dolby/ds1appUI/MainActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/MainActivity;->registerVisualizer(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/dolby/ds1appUI/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dolby/ds1appUI/MainActivity;->doInitMainUI()V

    return-void
.end method

.method static synthetic access$302(Lcom/dolby/ds1appUI/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashTimerElapsed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/dolby/ds1appUI/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dolby/ds1appUI/MainActivity;->hideSplashScreen()V

    return-void
.end method

.method static synthetic access$500(Lcom/dolby/ds1appUI/MainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mOriginX:I

    return v0
.end method

.method static synthetic access$600(Lcom/dolby/ds1appUI/MainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mOriginY:I

    return v0
.end method

.method private displaySplashScreen()Z
    .locals 8

    .prologue
    const v7, 0x7f03000c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    sget-wide v3, Lcom/dolby/ds1appUI/MainActivity;->mOnDestroyTimer:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    sget-wide v3, Lcom/dolby/ds1appUI/MainActivity;->mOnDestroyTimer:J

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    move v0, v1

    .line 204
    .local v0, isOrientationChange:Z
    :goto_0
    if-nez v0, :cond_1

    .line 205
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    .line 206
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 207
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 208
    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 209
    new-instance v2, Lcom/dolby/ds1appUI/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/dolby/ds1appUI/MainActivity$3;-><init>(Lcom/dolby/ds1appUI/MainActivity;)V

    iput-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    .line 217
    sget-object v2, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    :goto_1
    return v1

    .end local v0           #isOrientationChange:Z
    :cond_0
    move v0, v2

    .line 202
    goto :goto_0

    .restart local v0       #isOrientationChange:Z
    :cond_1
    move v1, v2

    .line 220
    goto :goto_1
.end method

.method private displayTooltip(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "pointToView"
    .parameter "title"
    .parameter "text"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mNativeRootContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mNativeRootContainer:Landroid/view/ViewGroup;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/dolby/ds1appUI/ViewTools;->showTooltip(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;

    goto :goto_0
.end method

.method private doInitMainUI()V
    .locals 4

    .prologue
    .line 247
    const v1, 0x7f030009

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mDSLogo:Landroid/widget/ImageView;

    .line 256
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mDSLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mDSLogo:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 260
    invoke-static {p0}, Lcom/dolby/ds1appUI/ViewTools;->determineNativeViewContainer(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mNativeRootContainer:Landroid/view/ViewGroup;

    .line 264
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v1, p0}, Landroid/dolby/DsClient;->setEventListener(Landroid/dolby/IDsClientEvents;)V

    .line 266
    sget-object v1, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v1}, Lcom/dolby/ds1appUI/DsClientCache;->reset()V

    .line 269
    const-string v1, "DsUI::MainActivity"

    const-string v2, "doInitMainUI - mDsClient.bindDsService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v1, p0}, Landroid/dolby/DsClient;->bindDsService(Landroid/content/Context;)Z

    .line 272
    sget-object v1, Lcom/dolby/ds1appUI/MainActivity;->configuration:Lcom/dolby/ds1appCoreUI/Configuration;

    if-nez v1, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dolby/ds1appCoreUI/Configuration;->getInstance(Landroid/content/Context;)Lcom/dolby/ds1appCoreUI/Configuration;

    move-result-object v1

    sput-object v1, Lcom/dolby/ds1appUI/MainActivity;->configuration:Lcom/dolby/ds1appCoreUI/Configuration;

    .line 274
    const-string v1, "DsUI::MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInitMainUI - NEW CONFIG:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/dolby/ds1appUI/MainActivity;->configuration:Lcom/dolby/ds1appCoreUI/Configuration;

    invoke-virtual {v3}, Lcom/dolby/ds1appCoreUI/Configuration;->getMaxEditGain()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/dolby/ds1appUI/MainActivity;->configuration:Lcom/dolby/ds1appCoreUI/Configuration;

    invoke-virtual {v3}, Lcom/dolby/ds1appCoreUI/Configuration;->getMinEditGain()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    .line 280
    iget-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 283
    new-instance v1, Lcom/dolby/ds1appUI/FragProfilePresets;

    invoke-direct {v1}, Lcom/dolby/ds1appUI/FragProfilePresets;-><init>()V

    iput-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a0024

    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 288
    :cond_1
    sget-boolean v1, Lcom/dolby/ds1appUI/MainActivity;->mEditProfile:Z

    if-eqz v1, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->editProfile()V

    .line 291
    :cond_2
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getConfiguration()Lcom/dolby/ds1appCoreUI/Configuration;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/dolby/ds1appUI/MainActivity;->configuration:Lcom/dolby/ds1appCoreUI/Configuration;

    return-object v0
.end method

.method private hideSplashScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashTimerElapsed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashClientBound:Z

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    iput-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    .line 235
    iput-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    .line 237
    :cond_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private internalOnDsOn(Z)V
    .locals 6
    .parameter "on"

    .prologue
    const/4 v5, 0x1

    .line 574
    invoke-virtual {p0, p1}, Lcom/dolby/ds1appUI/MainActivity;->powerOnOff(Z)V

    .line 575
    if-eqz p1, :cond_1

    .line 578
    :try_start_0
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 584
    .local v2, profile:I
    invoke-virtual {p0, v2}, Lcom/dolby/ds1appUI/MainActivity;->chooseProfile(I)V

    .line 585
    invoke-direct {p0, v5}, Lcom/dolby/ds1appUI/MainActivity;->registerVisualizer(Z)V

    .line 591
    .end local v2           #profile:I
    :goto_0
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v5, :cond_2

    .line 592
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 596
    .local v1, pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :goto_1
    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {v1}, Lcom/dolby/ds1appUI/FragProfilePresets;->scheduleNotifyDataSetChanged()V

    .line 599
    .end local v1           #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :cond_0
    :goto_2
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 581
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_2

    .line 587
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/dolby/ds1appUI/MainActivity;->registerVisualizer(Z)V

    goto :goto_0

    .line 594
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0a0027

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/ds1appUI/FragProfilePresets;

    .restart local v1       #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    goto :goto_1
.end method

.method private onDolbyClientUseClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mUseDsApiOnUiEvent:Z

    if-nez v0, :cond_0

    .line 494
    :cond_0
    return-void
.end method

.method private registerVisualizer(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    .line 602
    iget-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mVisualizerRegistered:Z

    if-ne v1, p1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsScreenOn:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsActivityRunning:Z

    if-ne v1, v2, :cond_0

    .line 608
    iput-boolean p1, p0, Lcom/dolby/ds1appUI/MainActivity;->mVisualizerRegistered:Z

    .line 610
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 611
    .local v0, gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v0, p1}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->registerVisualizer(Z)V

    goto :goto_0
.end method

.method private unbindFromDsApi()V
    .locals 2

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    .line 354
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->setEventListener(Landroid/dolby/IDsClientEvents;)V

    .line 355
    const-string v0, "DsUI::MainActivity"

    const-string v1, "MainActivity.unBindDsService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v0, p0}, Landroid/dolby/DsClient;->unBindDsService(Landroid/content/Context;)V

    .line 357
    sget-object v0, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/DsClientCache;->reset()V

    .line 359
    :cond_0
    return-void
.end method


# virtual methods
.method public changeScale()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 185
    .local v1, sys:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_1

    .line 186
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 187
    .local v0, conf:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v2, v2

    const/high16 v3, 0x4448

    div-float/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 189
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 198
    .end local v0           #conf:Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x168

    if-lt v2, v3, :cond_0

    .line 193
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 194
    .restart local v0       #conf:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v2, v2

    const/high16 v3, 0x43b4

    div-float/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 196
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public chooseProfile(I)V
    .locals 8
    .parameter "profile"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 412
    :try_start_0
    sget-object v4, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v4, v5}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 413
    sget-object v4, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v4, v5, p1}, Lcom/dolby/ds1appUI/DsClientCache;->setSelectedProfile(Landroid/dolby/DsClient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_0
    iget-boolean v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsMonoSpeaker:Z

    if-eqz v4, :cond_1

    .line 423
    :try_start_1
    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v4, p1}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/dolby/DsClientSettings;->setSpeakerVirtualizerOn(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    :cond_1
    iget-boolean v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v4, v6, :cond_4

    .line 433
    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 437
    .local v2, pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :goto_0
    if-eqz v2, :cond_3

    .line 438
    invoke-virtual {v2, p1}, Lcom/dolby/ds1appUI/FragProfilePresets;->getItemName(I)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, profileName:Ljava/lang/String;
    invoke-virtual {v2, p1}, Lcom/dolby/ds1appUI/FragProfilePresets;->setSelection(I)V

    .line 442
    iget-boolean v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v4, v6, :cond_5

    .line 443
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .line 447
    .local v1, pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    :goto_1
    if-eqz v1, :cond_2

    .line 451
    invoke-virtual {v1}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->cancelPendingEdition()V

    .line 455
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/dolby/ds1appUI/MainActivity;->onProfileNameChanged(ILjava/lang/String;)V

    .line 458
    .end local v1           #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    .end local v3           #profileName:Ljava/lang/String;
    :cond_3
    iput-boolean v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 459
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/dolby/ds1appUI/MainActivity;->onProfileSettingsChanged(ILandroid/dolby/DsClientSettings;)V

    .line 460
    iput-boolean v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 461
    .end local v2           #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :goto_2
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 417
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_2

    .line 424
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 425
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 426
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_2

    .line 435
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0a0027

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/ds1appUI/FragProfilePresets;

    .restart local v2       #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    goto :goto_0

    .line 445
    .restart local v3       #profileName:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0a002c

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .restart local v1       #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    goto :goto_1
.end method

.method public displayTooltip(Landroid/view/View;II)V
    .locals 2
    .parameter "pointToView"
    .parameter "idTitle"
    .parameter "idText"

    .prologue
    .line 772
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/dolby/ds1appUI/MainActivity;->displayTooltip(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 773
    return-void
.end method

.method public editProfile()V
    .locals 13

    .prologue
    const v12, 0x7f0a0025

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x1

    .line 1142
    iget-boolean v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v6, v8, :cond_0

    .line 1144
    sget-object v6, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v6}, Lcom/dolby/ds1appUI/DsClientCache;->isDsOn()Z

    move-result v0

    .line 1145
    .local v0, cacheOn:Z
    if-nez v0, :cond_1

    .line 1204
    .end local v0           #cacheOn:Z
    :cond_0
    :goto_0
    return-void

    .line 1152
    .restart local v0       #cacheOn:Z
    :cond_1
    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFS:Lcom/dolby/ds1appUI/FragSwitches;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    if-nez v6, :cond_0

    .line 1153
    sput-boolean v8, Lcom/dolby/ds1appUI/MainActivity;->mEditProfile:Z

    .line 1154
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f0a0001

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 1155
    .local v4, gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    if-eqz v4, :cond_2

    .line 1156
    invoke-virtual {v4, v8}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->setEnableEditGraphic(Z)V

    .line 1158
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 1159
    .local v2, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1160
    .local v3, fragmentTransaction:Landroid/app/FragmentTransaction;
    const/16 v6, 0x2002

    invoke-virtual {v3, v6}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1161
    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    invoke-virtual {v3, v6}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1162
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 1165
    new-instance v6, Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    invoke-direct {v6}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;-><init>()V

    iput-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .line 1166
    new-instance v6, Lcom/dolby/ds1appUI/FragSwitches;

    invoke-direct {v6}, Lcom/dolby/ds1appUI/FragSwitches;-><init>()V

    iput-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFS:Lcom/dolby/ds1appUI/FragSwitches;

    .line 1167
    new-instance v6, Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-direct {v6}, Lcom/dolby/ds1appUI/FragEqualizerPresets;-><init>()V

    iput-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    .line 1169
    const v1, 0x7f0a0024

    .line 1171
    .local v1, fragmentContainerId:I
    invoke-static {p0}, Lcom/dolby/ds1appCoreUI/Tools;->isLandscapeScreenOrientation(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v8, :cond_3

    .line 1173
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 1174
    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    .line 1175
    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1176
    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mScrollview:Landroid/widget/ScrollView;

    .line 1177
    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v6, v12}, Landroid/view/View;->setId(I)V

    .line 1179
    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mScrollview:Landroid/widget/ScrollView;

    iget-object v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1180
    const v6, 0x7f0a0024

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mScrollview:Landroid/widget/ScrollView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1181
    const/16 v1, 0x8

    .line 1184
    :cond_3
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1185
    const/16 v6, 0x1001

    invoke-virtual {v3, v6}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1186
    const v6, 0x7f0a0023

    iget-object v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    invoke-virtual {v3, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1187
    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFS:Lcom/dolby/ds1appUI/FragSwitches;

    invoke-virtual {v3, v1, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1188
    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-virtual {v3, v1, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1189
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 1190
    invoke-virtual {p0, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    .line 1191
    .local v5, theView:Landroid/widget/ScrollView;
    if-eqz v5, :cond_0

    .line 1195
    invoke-static {p0}, Lcom/dolby/ds1appCoreUI/Tools;->isLandscapeScreenOrientation(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1196
    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v6

    iput v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mOriginX:I

    .line 1197
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v6

    iput v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mOriginY:I

    .line 1200
    :cond_4
    invoke-virtual {v5, v11, v11}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto/16 :goto_0
.end method

.method public equalizerPresetsAreAlive()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1338
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v4, :cond_0

    .line 1340
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v3}, Lcom/dolby/ds1appUI/DsClientCache;->isDsOn()Z

    move-result v0

    .line 1343
    .local v0, cacheOn:Z
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    if-ne v3, v4, :cond_0

    if-ne v0, v4, :cond_0

    .line 1345
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-interface {v3}, Landroid/dolby/IDsClientEvents;->onClientConnected()V

    .line 1347
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-virtual {v3}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->updateGraphicEqInUI()V

    .line 1349
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-virtual {v3, v4}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->setEnabled(Z)V

    .line 1357
    :try_start_0
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1363
    .local v2, profile:I
    invoke-virtual {p0, v2}, Lcom/dolby/ds1appUI/MainActivity;->chooseProfile(I)V

    .line 1366
    .end local v0           #cacheOn:Z
    .end local v2           #profile:I
    :cond_0
    :goto_0
    return-void

    .line 1358
    .restart local v0       #cacheOn:Z
    :catch_0
    move-exception v1

    .line 1359
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1360
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_0
.end method

.method public exitActivity()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 973
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v0, :cond_0

    .line 974
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    .line 975
    invoke-virtual {p0, v1}, Lcom/dolby/ds1appUI/MainActivity;->onDsClientUseChanged(Z)V

    .line 976
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->setEventListener(Landroid/dolby/IDsClientEvents;)V

    .line 977
    const-string v0, "DsUI::MainActivity"

    const-string v1, "MainActivity.unBindDsService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v0, p0}, Landroid/dolby/DsClient;->unBindDsService(Landroid/content/Context;)V

    .line 980
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 981
    return-void
.end method

.method public getDsClient()Landroid/dolby/DsClient;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    return-object v0
.end method

.method public getProfileSelected()I
    .locals 3

    .prologue
    .line 1059
    iget-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 1064
    .local v0, pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :goto_0
    if-eqz v0, :cond_1

    .line 1065
    invoke-virtual {v0}, Lcom/dolby/ds1appUI/FragProfilePresets;->getSelection()I

    move-result v1

    .line 1067
    :goto_1
    return v1

    .line 1062
    .end local v0           #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a0027

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/ds1appUI/FragProfilePresets;

    .restart local v0       #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    goto :goto_0

    .line 1067
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public isDolbyClientConnected()Z
    .locals 1

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    return v0
.end method

.method public isMonoSpeaker()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsMonoSpeaker:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 365
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 366
    .local v0, window:Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 367
    return-void
.end method

.method public onBackPressed()V
    .locals 10

    .prologue
    const v9, 0x7f0a0024

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1209
    iget-boolean v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mFS:Lcom/dolby/ds1appUI/FragSwitches;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    if-eqz v4, :cond_3

    .line 1210
    sput-boolean v7, Lcom/dolby/ds1appUI/MainActivity;->mEditProfile:Z

    .line 1211
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 1212
    .local v2, gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    if-eqz v2, :cond_0

    .line 1213
    invoke-virtual {v2}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->hideEqualizer()V

    .line 1214
    invoke-virtual {v2, v7}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->setEnableEditGraphic(Z)V

    .line 1221
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1222
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1223
    .local v1, fragmentTransaction:Landroid/app/FragmentTransaction;
    const/16 v4, 0x2002

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1224
    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1225
    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1226
    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mFS:Lcom/dolby/ds1appUI/FragSwitches;

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1227
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1230
    iput-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .line 1231
    iput-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFS:Lcom/dolby/ds1appUI/FragSwitches;

    .line 1232
    iput-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    .line 1234
    invoke-static {p0}, Lcom/dolby/ds1appCoreUI/Tools;->isLandscapeScreenOrientation(Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v8, :cond_2

    .line 1236
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1237
    iput-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 1238
    iput-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mScrollview:Landroid/widget/ScrollView;

    .line 1255
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1256
    const/16 v4, 0x1001

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1257
    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    invoke-virtual {v1, v9, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1258
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1264
    .end local v0           #fragmentManager:Landroid/app/FragmentManager;
    .end local v1           #fragmentTransaction:Landroid/app/FragmentTransaction;
    .end local v2           #gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    :goto_1
    return-void

    .line 1240
    .restart local v0       #fragmentManager:Landroid/app/FragmentManager;
    .restart local v1       #fragmentTransaction:Landroid/app/FragmentTransaction;
    .restart local v2       #gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    :cond_2
    const v4, 0x7f0a0025

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 1242
    .local v3, theView:Landroid/widget/ScrollView;
    if-eqz v3, :cond_1

    .line 1244
    new-instance v4, Lcom/dolby/ds1appUI/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/dolby/ds1appUI/MainActivity$4;-><init>(Lcom/dolby/ds1appUI/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1262
    .end local v0           #fragmentManager:Landroid/app/FragmentManager;
    .end local v1           #fragmentTransaction:Landroid/app/FragmentTransaction;
    .end local v2           #gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    .end local v3           #theView:Landroid/widget/ScrollView;
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 480
    .local v1, id:I
    const v2, 0x7f0a0020

    if-ne v2, v1, :cond_1

    .line 481
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 482
    .local v0, fgv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->hideEqualizer()V

    .line 488
    .end local v0           #fgv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/MainActivity;->onDolbyClientUseClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClientConnected()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 847
    iput-boolean v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    .line 848
    iput-boolean v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashClientBound:Z

    .line 851
    :try_start_0
    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v4}, Landroid/dolby/DsClient;->isMonoSpeaker()Z

    move-result v4

    iput-boolean v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsMonoSpeaker:Z

    .line 852
    const-string v4, "DsUI::MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsMonoSpeaker = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsMonoSpeaker:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    invoke-direct {p0}, Lcom/dolby/ds1appUI/MainActivity;->hideSplashScreen()V

    .line 867
    :try_start_1
    sget-object v4, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5}, Landroid/dolby/DsClient;->getDsOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dolby/ds1appUI/DsClientCache;->cacheDsOn(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 878
    iget-boolean v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v4, v7, :cond_4

    .line 879
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 883
    .local v3, pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :goto_0
    if-eqz v3, :cond_0

    .line 884
    invoke-interface {v3}, Landroid/dolby/IDsClientEvents;->onClientConnected()V

    .line 888
    :cond_0
    iget-boolean v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v4, v7, :cond_5

    .line 889
    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .line 893
    .local v2, pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    :goto_1
    if-eqz v2, :cond_1

    .line 894
    invoke-interface {v2}, Landroid/dolby/IDsClientEvents;->onClientConnected()V

    .line 897
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 898
    .local v1, gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    if-eqz v1, :cond_2

    .line 899
    invoke-interface {v1}, Landroid/dolby/IDsClientEvents;->onClientConnected()V

    .line 910
    :cond_2
    iget-boolean v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    if-eqz v4, :cond_3

    .line 911
    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-interface {v4}, Landroid/dolby/IDsClientEvents;->onClientConnected()V

    .line 916
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 917
    invoke-virtual {p0, v7}, Lcom/dolby/ds1appUI/MainActivity;->onDsClientUseChanged(Z)V

    .line 918
    iput-boolean v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 919
    .end local v1           #gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    .end local v2           #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    .end local v3           #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :goto_2
    return-void

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 855
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_2

    .line 868
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 869
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 870
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_2

    .line 881
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0a0027

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/dolby/ds1appUI/FragProfilePresets;

    .restart local v3       #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    goto :goto_0

    .line 891
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0a002c

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .restart local v2       #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    goto :goto_1
.end method

.method public onClientDisconnected()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 927
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 928
    .local v0, gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    if-eqz v0, :cond_0

    .line 929
    invoke-interface {v0}, Landroid/dolby/IDsClientEvents;->onClientDisconnected()V

    .line 940
    :cond_0
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    if-eqz v3, :cond_1

    .line 941
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-interface {v3}, Landroid/dolby/IDsClientEvents;->onClientDisconnected()V

    .line 945
    :cond_1
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v5, :cond_4

    .line 946
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .line 950
    .local v1, pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    :goto_0
    if-eqz v1, :cond_2

    .line 951
    invoke-interface {v1}, Landroid/dolby/IDsClientEvents;->onClientDisconnected()V

    .line 955
    :cond_2
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v5, :cond_5

    .line 956
    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 960
    .local v2, pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :goto_1
    if-eqz v2, :cond_3

    .line 961
    invoke-interface {v2}, Landroid/dolby/IDsClientEvents;->onClientDisconnected()V

    .line 965
    :cond_3
    iput-boolean v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    .line 967
    invoke-virtual {p0, v6}, Lcom/dolby/ds1appUI/MainActivity;->onDsClientUseChanged(Z)V

    .line 968
    return-void

    .line 948
    .end local v1           #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    .end local v2           #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0a002c

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .restart local v1       #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    goto :goto_0

    .line 958
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0a0027

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/ds1appUI/FragProfilePresets;

    .restart local v2       #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/dolby/ds1appCoreUI/DS1Application;

    invoke-virtual {v3}, Lcom/dolby/ds1appCoreUI/DS1Application;->printScreenSpecs()V

    .line 147
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/dolby/ds1appCoreUI/Constants;->STATUS_BAR_HEIGHT:I

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->changeScale()V

    .line 152
    invoke-static {p0}, Lcom/dolby/ds1appUI/Assets;->init(Landroid/content/Context;)V

    .line 154
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 163
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsScreenOn:Z

    .line 165
    new-instance v2, Lcom/dolby/ds1appUI/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/dolby/ds1appUI/MainActivity$2;-><init>(Lcom/dolby/ds1appUI/MainActivity;)V

    .line 176
    .local v2, showMainUi:Ljava/lang/Runnable;
    invoke-direct {p0}, Lcom/dolby/ds1appUI/MainActivity;->displaySplashScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    sget-object v3, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 334
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 335
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 336
    .local v0, demoAfd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 337
    .local v1, loopAfd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    .line 338
    const/16 v2, 0x3e9

    const v3, 0x7f060021

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 340
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 322
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/dolby/ds1appUI/MainActivity;->mOnDestroyTimer:J

    .line 323
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 324
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 325
    invoke-direct {p0}, Lcom/dolby/ds1appUI/MainActivity;->hideSplashScreen()V

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/dolby/ds1appUI/MainActivity;->unbindFromDsApi()V

    .line 328
    const/4 v0, 0x0

    sput-object v0, Lcom/dolby/ds1appUI/MainActivity;->configuration:Lcom/dolby/ds1appCoreUI/Configuration;

    .line 329
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 330
    return-void
.end method

.method public onDsApiError()V
    .locals 0

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/dolby/ds1appUI/MainActivity;->unbindFromDsApi()V

    .line 778
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 779
    return-void
.end method

.method public onDsClientUseChanged(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 379
    if-eqz p1, :cond_3

    .line 380
    iget-boolean v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v2, :cond_2

    .line 381
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 382
    .local v1, fgv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v1}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->updateGraphicEqInUI()V

    .line 394
    :cond_0
    iget-boolean v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    if-eqz v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-virtual {v2}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->updateGraphicEqInUI()V

    .line 399
    :cond_1
    sget-object v2, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v2}, Lcom/dolby/ds1appUI/DsClientCache;->isDsOn()Z

    move-result v0

    .line 400
    .local v0, dsOn:Z
    invoke-direct {p0, v0}, Lcom/dolby/ds1appUI/MainActivity;->internalOnDsOn(Z)V

    .line 407
    .end local v0           #dsOn:Z
    .end local v1           #fgv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    :cond_2
    :goto_0
    return-void

    .line 403
    :cond_3
    iget-boolean v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v2, :cond_2

    .line 404
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/dolby/ds1appUI/MainActivity;->registerVisualizer(Z)V

    goto :goto_0
.end method

.method public onDsOn(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 561
    sget-object v1, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v1}, Lcom/dolby/ds1appUI/DsClientCache;->isDsOn()Z

    move-result v0

    .line 562
    .local v0, cacheOn:Z
    if-ne v0, p1, :cond_0

    .line 571
    :goto_0
    return-void

    .line 566
    :cond_0
    sget-object v1, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v1, p1}, Lcom/dolby/ds1appUI/DsClientCache;->cacheDsOn(Z)V

    .line 568
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 569
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/MainActivity;->internalOnDsOn(Z)V

    .line 570
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mUseDsApiOnUiEvent:Z

    goto :goto_0
.end method

.method public onEqSettingsChanged(II)V
    .locals 11
    .parameter "profile"
    .parameter "preset"

    .prologue
    const/4 v10, 0x1

    .line 1072
    const-string v7, "DsUI::MainActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onEqSettingsChanged "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0a0001

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 1076
    .local v1, fgv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    if-eqz v1, :cond_0

    .line 1077
    invoke-interface {v1, p1, p2}, Landroid/dolby/IDsClientEvents;->onEqSettingsChanged(II)V

    .line 1088
    :cond_0
    iget-boolean v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v7, v10, :cond_1

    iget-object v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    if-eqz v7, :cond_1

    .line 1089
    iget-object v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-interface {v7, p1, p2}, Landroid/dolby/IDsClientEvents;->onEqSettingsChanged(II)V

    .line 1093
    :cond_1
    iget-boolean v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v7, v10, :cond_5

    .line 1094
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 1098
    .local v3, pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :goto_0
    if-eqz v3, :cond_2

    .line 1099
    invoke-interface {v3, p1, p2}, Landroid/dolby/IDsClientEvents;->onEqSettingsChanged(II)V

    .line 1103
    :cond_2
    iget-boolean v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v7, v10, :cond_6

    .line 1104
    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .line 1108
    .local v2, pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    :goto_1
    if-eqz v2, :cond_3

    .line 1109
    invoke-interface {v2, p1, p2}, Landroid/dolby/IDsClientEvents;->onEqSettingsChanged(II)V

    .line 1115
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v7, p1}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v5

    .line 1116
    .local v5, settings:Landroid/dolby/DsClientSettings;
    sget-object v7, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v8, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v7, v8, p1, v5}, Lcom/dolby/ds1appUI/DsClientCache;->cacheProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V

    .line 1117
    sget-object v7, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v8, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v7, v8}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1124
    .local v4, selectedProfile:I
    if-ne p1, v4, :cond_4

    .line 1128
    iget-boolean v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v7, v10, :cond_7

    .line 1129
    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFS:Lcom/dolby/ds1appUI/FragSwitches;

    .line 1133
    .local v6, swv:Lcom/dolby/ds1appUI/FragSwitches;
    :goto_2
    if-eqz v6, :cond_4

    .line 1134
    invoke-virtual {v6, v5}, Lcom/dolby/ds1appUI/FragSwitches;->onProfileSettingsChanged(Landroid/dolby/DsClientSettings;)V

    .line 1137
    .end local v4           #selectedProfile:I
    .end local v5           #settings:Landroid/dolby/DsClientSettings;
    .end local v6           #swv:Lcom/dolby/ds1appUI/FragSwitches;
    :cond_4
    :goto_3
    return-void

    .line 1096
    .end local v2           #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    .end local v3           #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0a0027

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/dolby/ds1appUI/FragProfilePresets;

    .restart local v3       #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    goto :goto_0

    .line 1106
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0a002c

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .restart local v2       #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    goto :goto_1

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1120
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_3

    .line 1131
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #selectedProfile:I
    .restart local v5       #settings:Landroid/dolby/DsClientSettings;
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0a002a

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/dolby/ds1appUI/FragSwitches;

    .restart local v6       #swv:Lcom/dolby/ds1appUI/FragSwitches;
    goto :goto_2
.end method

.method public onEqualizerEditStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1010
    iget-boolean v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    if-eqz v2, :cond_0

    .line 1011
    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-virtual {v2}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    .line 1014
    :cond_0
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->setUserProfilePopulated()V

    .line 1017
    iget-boolean v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v2, v4, :cond_3

    .line 1018
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 1022
    .local v1, pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :goto_0
    if-eqz v1, :cond_1

    .line 1023
    invoke-virtual {v1}, Lcom/dolby/ds1appUI/FragProfilePresets;->scheduleNotifyDataSetChanged()V

    .line 1027
    :cond_1
    iget-boolean v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v2, v4, :cond_4

    .line 1028
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .line 1032
    .local v0, pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    :goto_1
    if-eqz v0, :cond_2

    .line 1033
    invoke-virtual {v0}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    .line 1035
    :cond_2
    return-void

    .line 1020
    .end local v0           #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    .end local v1           #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/ds1appUI/FragProfilePresets;

    .restart local v1       #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    goto :goto_0

    .line 1030
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a002c

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .restart local v0       #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dolby.LAUNCH_DS1_INSTOREDEMO_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 348
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, v0}, Lcom/dolby/ds1appUI/MainActivity;->onDsClientUseChanged(Z)V

    .line 315
    iput-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsActivityRunning:Z

    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 317
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 6
    .parameter "profile"
    .parameter "name"

    .prologue
    const/4 v5, 0x1

    .line 799
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 800
    .local v0, gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    if-eqz v0, :cond_0

    .line 801
    invoke-interface {v0, p1, p2}, Landroid/dolby/IDsClientEvents;->onProfileNameChanged(ILjava/lang/String;)V

    .line 812
    :cond_0
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    if-eqz v3, :cond_1

    .line 813
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-interface {v3, p1, p2}, Landroid/dolby/IDsClientEvents;->onProfileNameChanged(ILjava/lang/String;)V

    .line 817
    :cond_1
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v5, :cond_4

    .line 818
    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 822
    .local v2, pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :goto_0
    if-eqz v2, :cond_2

    .line 823
    invoke-interface {v2, p1, p2}, Landroid/dolby/IDsClientEvents;->onProfileNameChanged(ILjava/lang/String;)V

    .line 827
    :cond_2
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v5, :cond_5

    .line 828
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .line 832
    .local v1, pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    :goto_1
    if-eqz v1, :cond_3

    .line 833
    invoke-interface {v1, p1, p2}, Landroid/dolby/IDsClientEvents;->onProfileNameChanged(ILjava/lang/String;)V

    .line 835
    :cond_3
    return-void

    .line 820
    .end local v1           #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    .end local v2           #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0a0027

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/ds1appUI/FragProfilePresets;

    .restart local v2       #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    goto :goto_0

    .line 830
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0a002c

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .restart local v1       #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    goto :goto_1
.end method

.method public onProfileNameEditEnded()V
    .locals 0

    .prologue
    .line 1053
    return-void
.end method

.method public onProfileNameEditStarted()V
    .locals 3

    .prologue
    .line 1042
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a0027

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 1043
    .local v0, pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {v0}, Lcom/dolby/ds1appUI/FragProfilePresets;->onProfileNameEditStarted()V

    .line 1046
    :cond_0
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 619
    iget-boolean v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    if-nez v1, :cond_0

    .line 627
    :goto_0
    return-void

    .line 623
    :cond_0
    sget-object v1, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v1, p1}, Lcom/dolby/ds1appUI/DsClientCache;->cacheSelectedProfile(I)V

    .line 625
    sget-object v1, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v1}, Lcom/dolby/ds1appUI/DsClientCache;->isDsOn()Z

    move-result v0

    .line 626
    .local v0, dsOn:Z
    invoke-direct {p0, v0}, Lcom/dolby/ds1appUI/MainActivity;->internalOnDsOn(Z)V

    goto :goto_0
.end method

.method public onProfileSettingsChanged(I)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dolby/ds1appUI/MainActivity;->onProfileSettingsChanged(ILandroid/dolby/DsClientSettings;)V

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 634
    return-void
.end method

.method public onProfileSettingsChanged(ILandroid/dolby/DsClientSettings;)V
    .locals 11
    .parameter "profile"
    .parameter "settings"

    .prologue
    const/4 v10, 0x1

    .line 643
    const-string v7, "DsUI::MainActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onProfileSettingsChanged "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    if-nez p2, :cond_0

    .line 647
    :try_start_0
    iget-object v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v7, p1}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 656
    :cond_0
    :try_start_1
    sget-object v7, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v8, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v7, v8, p1, p2}, Lcom/dolby/ds1appUI/DsClientCache;->cacheProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 665
    :try_start_2
    sget-object v7, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v8, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v7, v8}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    .line 672
    .local v5, selectedProfile:I
    if-ne p1, v5, :cond_6

    .line 675
    iget-boolean v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v7, v10, :cond_7

    .line 676
    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 680
    .local v4, pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :goto_0
    if-eqz v4, :cond_1

    .line 681
    invoke-virtual {v4}, Lcom/dolby/ds1appUI/FragProfilePresets;->scheduleNotifyDataSetChanged()V

    .line 685
    :cond_1
    iget-boolean v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v7, v10, :cond_8

    .line 686
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .line 690
    .local v3, pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    :goto_1
    if-eqz v3, :cond_2

    .line 691
    invoke-virtual {v3}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    .line 696
    :cond_2
    iget-boolean v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v7, v10, :cond_9

    .line 697
    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mFS:Lcom/dolby/ds1appUI/FragSwitches;

    .line 701
    .local v6, swv:Lcom/dolby/ds1appUI/FragSwitches;
    :goto_2
    if-eqz v6, :cond_3

    .line 702
    invoke-virtual {v6, p2}, Lcom/dolby/ds1appUI/FragSwitches;->onProfileSettingsChanged(Landroid/dolby/DsClientSettings;)V

    .line 705
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0a0001

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 706
    .local v1, gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    if-eqz v1, :cond_4

    .line 708
    invoke-virtual {v1}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    .line 713
    :cond_4
    :try_start_3
    iget-object v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v7, p1}, Landroid/dolby/DsClient;->getIeqPreset(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    .line 720
    .local v2, iEqPreset:I
    if-eqz v1, :cond_5

    .line 721
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->selectIEqPresetInUI(I)V

    .line 732
    :cond_5
    iget-boolean v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v7, v10, :cond_6

    iget-object v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    if-eqz v7, :cond_6

    .line 733
    iget-object v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-virtual {v7}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    .line 734
    iget-object v7, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->selectIEqPresetInUI(I)V

    .line 737
    .end local v1           #gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    .end local v2           #iEqPreset:I
    .end local v3           #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    .end local v4           #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    .end local v5           #selectedProfile:I
    .end local v6           #swv:Lcom/dolby/ds1appUI/FragSwitches;
    :cond_6
    :goto_3
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 650
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_3

    .line 657
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 658
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 659
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_3

    .line 666
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 667
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 668
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_3

    .line 678
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v5       #selectedProfile:I
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0a0027

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/dolby/ds1appUI/FragProfilePresets;

    .restart local v4       #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    goto :goto_0

    .line 688
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0a002c

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .restart local v3       #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    goto :goto_1

    .line 699
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0a002a

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/dolby/ds1appUI/FragSwitches;

    .restart local v6       #swv:Lcom/dolby/ds1appUI/FragSwitches;
    goto :goto_2

    .line 714
    .restart local v1       #gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    :catch_3
    move-exception v0

    .line 715
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 716
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 375
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 304
    iput-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsActivityRunning:Z

    .line 305
    invoke-virtual {p0, v0}, Lcom/dolby/ds1appUI/MainActivity;->onDsClientUseChanged(Z)V

    .line 306
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 371
    return-void
.end method

.method public powerOnOff(Z)V
    .locals 8
    .parameter "on"

    .prologue
    const/4 v7, 0x1

    .line 498
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0a001f

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/dolby/ds1appUI/FragPower;

    .line 499
    .local v3, pwv:Lcom/dolby/ds1appUI/FragPower;
    if-eqz v3, :cond_0

    .line 500
    invoke-virtual {v3, p1}, Lcom/dolby/ds1appUI/FragPower;->setEnabled(Z)V

    .line 503
    :cond_0
    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mDSLogo:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const v5, 0x7f020006

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    iget-boolean v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_8

    .line 507
    iget-object v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mFS:Lcom/dolby/ds1appUI/FragSwitches;

    if-nez v5, :cond_7

    .line 508
    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 515
    .local v2, pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :goto_1
    if-eqz v2, :cond_1

    .line 516
    invoke-virtual {v2, p1}, Lcom/dolby/ds1appUI/FragProfilePresets;->setEnabled(Z)V

    .line 520
    :cond_1
    iget-boolean v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_9

    .line 521
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .line 525
    .local v1, pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    :goto_2
    if-eqz v1, :cond_2

    .line 526
    invoke-virtual {v1, p1}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->setEnabled(Z)V

    .line 530
    :cond_2
    iget-boolean v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_a

    .line 531
    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mFS:Lcom/dolby/ds1appUI/FragSwitches;

    .line 535
    .local v4, swv:Lcom/dolby/ds1appUI/FragSwitches;
    :goto_3
    if-eqz v4, :cond_3

    .line 536
    invoke-virtual {v4, p1}, Lcom/dolby/ds1appUI/FragSwitches;->setEnabled(Z)V

    .line 539
    :cond_3
    iget-boolean v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mIsScreenOn:Z

    if-eqz v5, :cond_4

    .line 540
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0a0001

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 541
    .local v0, gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    if-eqz v0, :cond_4

    .line 542
    invoke-virtual {v0, p1}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->setEnabled(Z)V

    .line 554
    .end local v0           #gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    :cond_4
    iget-boolean v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    if-eqz v5, :cond_5

    .line 555
    iget-object v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mFEP:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-virtual {v5, p1}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->setEnabled(Z)V

    .line 557
    :cond_5
    return-void

    .line 503
    .end local v1           #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    .end local v2           #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    .end local v4           #swv:Lcom/dolby/ds1appUI/FragSwitches;
    :cond_6
    const v5, 0x7f020008

    goto :goto_0

    .line 510
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    goto :goto_1

    .line 513
    .end local v2           #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0a0027

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/ds1appUI/FragProfilePresets;

    .restart local v2       #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    goto :goto_1

    .line 523
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0a002c

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    .restart local v1       #pe:Lcom/dolby/ds1appUI/FragProfilePresetEditor;
    goto :goto_2

    .line 533
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0a002a

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/dolby/ds1appUI/FragSwitches;

    .restart local v4       #swv:Lcom/dolby/ds1appUI/FragSwitches;
    goto :goto_3
.end method

.method public profileEditorIsAlive()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1270
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v4, :cond_0

    .line 1272
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v3}, Lcom/dolby/ds1appUI/DsClientCache;->isDsOn()Z

    move-result v0

    .line 1275
    .local v0, cacheOn:Z
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    if-ne v3, v4, :cond_0

    if-ne v0, v4, :cond_0

    .line 1277
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    invoke-interface {v3}, Landroid/dolby/IDsClientEvents;->onClientConnected()V

    .line 1279
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    invoke-virtual {v3, v4}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->setEnabled(Z)V

    .line 1284
    :try_start_0
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1291
    .local v2, profile:I
    iget-object v3, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPPE:Lcom/dolby/ds1appUI/FragProfilePresetEditor;

    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    invoke-virtual {v4, v2}, Lcom/dolby/ds1appUI/FragProfilePresets;->getItemName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/dolby/IDsClientEvents;->onProfileNameChanged(ILjava/lang/String;)V

    .line 1294
    .end local v0           #cacheOn:Z
    .end local v2           #profile:I
    :cond_0
    :goto_0
    return-void

    .line 1285
    .restart local v0       #cacheOn:Z
    :catch_0
    move-exception v1

    .line 1286
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1287
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_0
.end method

.method public profilePresetsAreAlive()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1371
    iget-boolean v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v6, :cond_1

    .line 1373
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v5}, Lcom/dolby/ds1appUI/DsClientCache;->isDsOn()Z

    move-result v0

    .line 1374
    .local v0, cacheOn:Z
    iget-object v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    invoke-virtual {v5, v0}, Lcom/dolby/ds1appUI/FragProfilePresets;->setEnabled(Z)V

    .line 1377
    iget-boolean v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    if-ne v5, v6, :cond_1

    if-ne v0, v6, :cond_1

    .line 1383
    :try_start_0
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v6}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1389
    .local v3, profile:I
    const v5, 0x7f0a0013

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 1390
    .local v2, lv:Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 1391
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 1393
    :cond_0
    invoke-virtual {p0, v3}, Lcom/dolby/ds1appUI/MainActivity;->chooseProfile(I)V

    .line 1395
    const v5, 0x7f0a0025

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    .line 1396
    .local v4, theView:Landroid/widget/ScrollView;
    if-eqz v4, :cond_1

    .line 1397
    new-instance v5, Lcom/dolby/ds1appUI/MainActivity$5;

    invoke-direct {v5, p0, v3}, Lcom/dolby/ds1appUI/MainActivity$5;-><init>(Lcom/dolby/ds1appUI/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1409
    .end local v0           #cacheOn:Z
    .end local v2           #lv:Landroid/widget/ListView;
    .end local v3           #profile:I
    .end local v4           #theView:Landroid/widget/ScrollView;
    :cond_1
    :goto_0
    return-void

    .line 1384
    .restart local v0       #cacheOn:Z
    :catch_0
    move-exception v1

    .line 1385
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1386
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_0
.end method

.method public profileReset(I)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 996
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 997
    .local v0, fgv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {v0, p1}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->resetUserGains(I)V

    .line 1001
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolby/ds1appUI/MainActivity;->chooseProfile(I)V

    .line 1002
    return-void
.end method

.method public resetEqUserGains()V
    .locals 3

    .prologue
    .line 1413
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 1414
    .local v0, fgv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    if-eqz v0, :cond_0

    .line 1415
    invoke-virtual {v0}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->resetUserGains()V

    .line 1417
    :cond_0
    return-void
.end method

.method public setUserProfilePopulated()V
    .locals 6

    .prologue
    .line 744
    iget-boolean v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 745
    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity;->mFPP:Lcom/dolby/ds1appUI/FragProfilePresets;

    .line 749
    .local v2, pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :goto_0
    if-eqz v2, :cond_0

    .line 750
    invoke-virtual {v2}, Lcom/dolby/ds1appUI/FragProfilePresets;->getSelection()I

    move-result v3

    .line 752
    .local v3, profile:I
    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    .line 768
    .end local v3           #profile:I
    :cond_0
    :goto_1
    return-void

    .line 747
    .end local v2           #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0a0027

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/ds1appUI/FragProfilePresets;

    .restart local v2       #pp:Lcom/dolby/ds1appUI/FragProfilePresets;
    goto :goto_0

    .line 757
    .restart local v3       #profile:I
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v4}, Landroid/dolby/DsClient;->getProfileNames()[Ljava/lang/String;

    move-result-object v4

    aget-object v1, v4, v3

    .line 758
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 761
    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v2, v3}, Lcom/dolby/ds1appUI/FragProfilePresets;->getDefaultProfileName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/dolby/DsClient;->setProfileName(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 762
    .end local v1           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 763
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 764
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_1
.end method

.method public switchesAreAlive()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1298
    iget-boolean v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_0

    .line 1300
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v5}, Lcom/dolby/ds1appUI/DsClientCache;->isDsOn()Z

    move-result v0

    .line 1303
    .local v0, cacheOn:Z
    iget-boolean v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mDolbyClientConnected:Z

    if-ne v5, v7, :cond_0

    if-ne v0, v7, :cond_0

    .line 1304
    iget-object v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mFS:Lcom/dolby/ds1appUI/FragSwitches;

    invoke-virtual {v5, v7}, Lcom/dolby/ds1appUI/FragSwitches;->setEnabled(Z)V

    .line 1310
    :try_start_0
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v6}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v2

    .line 1312
    .local v2, profile:I
    iget-object v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v2}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v3

    .line 1314
    .local v3, settings:Landroid/dolby/DsClientSettings;
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/MainActivity;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v6, v2, v3}, Lcom/dolby/ds1appUI/DsClientCache;->cacheProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    iget-boolean v5, p0, Lcom/dolby/ds1appUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_1

    .line 1324
    iget-object v4, p0, Lcom/dolby/ds1appUI/MainActivity;->mFS:Lcom/dolby/ds1appUI/FragSwitches;

    .line 1328
    .local v4, swv:Lcom/dolby/ds1appUI/FragSwitches;
    :goto_0
    if-eqz v4, :cond_0

    .line 1329
    invoke-virtual {v4, v3}, Lcom/dolby/ds1appUI/FragSwitches;->onProfileSettingsChanged(Landroid/dolby/DsClientSettings;)V

    .line 1333
    .end local v0           #cacheOn:Z
    .end local v2           #profile:I
    .end local v3           #settings:Landroid/dolby/DsClientSettings;
    .end local v4           #swv:Lcom/dolby/ds1appUI/FragSwitches;
    :cond_0
    :goto_1
    return-void

    .line 1315
    .restart local v0       #cacheOn:Z
    :catch_0
    move-exception v1

    .line 1316
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1317
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/MainActivity;->onDsApiError()V

    goto :goto_1

    .line 1326
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #profile:I
    .restart local v3       #settings:Landroid/dolby/DsClientSettings;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0a002a

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/dolby/ds1appUI/FragSwitches;

    .restart local v4       #swv:Lcom/dolby/ds1appUI/FragSwitches;
    goto :goto_0
.end method

.method public useDsApiOnUiEvent()Z
    .locals 1

    .prologue
    .line 991
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/MainActivity;->mUseDsApiOnUiEvent:Z

    return v0
.end method
