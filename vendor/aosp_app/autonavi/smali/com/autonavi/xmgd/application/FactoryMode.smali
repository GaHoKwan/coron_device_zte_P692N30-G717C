.class public Lcom/autonavi/xmgd/application/FactoryMode;
.super Ljava/lang/Object;


# static fields
.field public static final FM_ITEM_NAME:[Ljava/lang/String; = null

.field private static final FM_STEP_FILE_EXIST:I = 0x1

.field private static final FM_STEP_LONG_PRESSED:I = 0x2

.field private static final FM_STEP_MOVING:I = 0x3

.field private static final FM_STEP_NONE:I = 0x0

.field private static final LONG_PRESSED_TIME:I = 0xbb8

.field private static mInstance:Lcom/autonavi/xmgd/application/FactoryMode;


# instance fields
.field private final FM_FILE_NAME:Ljava/lang/String;

.field private canRepeatSimluate:Z

.field private canSetLocation:Z

.field private gpsLogRunning:Z

.field private mCurrentStep:I

.field private openFactoryMode:Z

.field private originCarShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->mInstance:Lcom/autonavi/xmgd/application/FactoryMode;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u8bb0\u5f55\u7a0b\u5e8flog"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8bb0\u5f55GPS\u7684log"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u53ef\u8bbe\u7f6e\u8d77\u70b9"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5faa\u73af\u6a21\u62df"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u663e\u793a\u539f\u59cb\u8f66\u4f4d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->FM_ITEM_NAME:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "factory_settings_enabled"

    iput-object v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->FM_FILE_NAME:Ljava/lang/String;

    iput v1, p0, Lcom/autonavi/xmgd/application/FactoryMode;->mCurrentStep:I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/application/FactoryMode;->openFactoryMode:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/application/FactoryMode;->gpsLogRunning:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/application/FactoryMode;->canSetLocation:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/application/FactoryMode;->canRepeatSimluate:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/application/FactoryMode;->originCarShowing:Z

    return-void
.end method

.method public static destroy()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->mInstance:Lcom/autonavi/xmgd/application/FactoryMode;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/autonavi/xmgd/utility/Tool;->setLogStatus(Z)V

    invoke-static {v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Z)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/LogcatHelper;->getInstance(Landroid/content/Context;)Lcom/autonavi/xmgd/utility/LogcatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/LogcatHelper;->stop()V

    sget-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->mInstance:Lcom/autonavi/xmgd/application/FactoryMode;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/application/FactoryMode;->doHideOriginCar()V

    sget-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->mInstance:Lcom/autonavi/xmgd/application/FactoryMode;

    invoke-direct {v0}, Lcom/autonavi/xmgd/application/FactoryMode;->doCloseAppLog()V

    sget-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->mInstance:Lcom/autonavi/xmgd/application/FactoryMode;

    invoke-direct {v0}, Lcom/autonavi/xmgd/application/FactoryMode;->doCloseGPSLog()V

    sget-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->mInstance:Lcom/autonavi/xmgd/application/FactoryMode;

    invoke-direct {v0}, Lcom/autonavi/xmgd/application/FactoryMode;->doCloseSetLocation()V

    sget-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->mInstance:Lcom/autonavi/xmgd/application/FactoryMode;

    invoke-direct {v0}, Lcom/autonavi/xmgd/application/FactoryMode;->doCloseSimulateRepeat()V

    sget-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->mInstance:Lcom/autonavi/xmgd/application/FactoryMode;

    iput v1, v0, Lcom/autonavi/xmgd/application/FactoryMode;->mCurrentStep:I

    sget-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->mInstance:Lcom/autonavi/xmgd/application/FactoryMode;

    iput-boolean v1, v0, Lcom/autonavi/xmgd/application/FactoryMode;->openFactoryMode:Z

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->mInstance:Lcom/autonavi/xmgd/application/FactoryMode;

    return-void
.end method

.method private doCloseAppLog()V
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/LogcatHelper;->getInstance(Landroid/content/Context;)Lcom/autonavi/xmgd/utility/LogcatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/LogcatHelper;->stop()V

    return-void
.end method

.method private doCloseGPSLog()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->gpsLogRunning:Z

    return-void
.end method

.method private doCloseSetLocation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->canSetLocation:Z

    return-void
.end method

.method private doCloseSimulateRepeat()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->canRepeatSimluate:Z

    return-void
.end method

.method private doOpenAppLog()V
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/LogcatHelper;->getInstance(Landroid/content/Context;)Lcom/autonavi/xmgd/utility/LogcatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/LogcatHelper;->start()V

    return-void
.end method

.method private doOpenGPSLog()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->gpsLogRunning:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GNaviLoc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getStringTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Global;->LOG_GPS_FILENAME:Ljava/lang/String;

    return-void
.end method

.method private doOpenSetLocation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->canSetLocation:Z

    return-void
.end method

.method private doOpenSimulateRepeat()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->canRepeatSimluate:Z

    return-void
.end method

.method public static getInstance()Lcom/autonavi/xmgd/application/FactoryMode;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->mInstance:Lcom/autonavi/xmgd/application/FactoryMode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/application/FactoryMode;

    invoke-direct {v0}, Lcom/autonavi/xmgd/application/FactoryMode;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->mInstance:Lcom/autonavi/xmgd/application/FactoryMode;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->mInstance:Lcom/autonavi/xmgd/application/FactoryMode;

    return-object v0
.end method


# virtual methods
.method public canRepeatSimluate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->canRepeatSimluate:Z

    return v0
.end method

.method public canSetLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->canSetLocation:Z

    return v0
.end method

.method public checkFileExist()Z
    .locals 2

    iget v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->mCurrentStep:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factory_settings_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->mCurrentStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->mCurrentStep:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkLongPressed(J)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/autonavi/xmgd/application/FactoryMode;->mCurrentStep:I

    if-ne v1, v0, :cond_1

    const-wide/16 v1, 0xbb8

    cmp-long v1, p1, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/autonavi/xmgd/application/FactoryMode;->mCurrentStep:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/autonavi/xmgd/application/FactoryMode;->mCurrentStep:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/autonavi/xmgd/application/FactoryMode;->mCurrentStep:I

    const/16 v2, 0xbb8

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkMoving()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/autonavi/xmgd/application/FactoryMode;->openFactoryMode:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/autonavi/xmgd/application/FactoryMode;->mCurrentStep:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->openFactoryMode:Z

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->setLogStatus(Z)V

    invoke-static {v0}, Lcom/plugin/installapk/newrttc_v2/k;->a(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doHideOriginCar()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_SHOW_ORIGIN_CAR:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iput-boolean v2, p0, Lcom/autonavi/xmgd/application/FactoryMode;->originCarShowing:Z

    :cond_0
    return-void
.end method

.method public doSelected([Z)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->isAppLogRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    aget-boolean v0, p1, v1

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->doCloseAppLog()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->isGPSLogRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    aget-boolean v0, p1, v2

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->doCloseGPSLog()V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->canSetLocation()Z

    move-result v0

    if-eqz v0, :cond_7

    aget-boolean v0, p1, v3

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->doCloseSetLocation()V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->canRepeatSimluate()Z

    move-result v0

    if-eqz v0, :cond_8

    aget-boolean v0, p1, v4

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->doCloseSimulateRepeat()V

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->isOriginCarShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    aget-boolean v0, p1, v5

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->doHideOriginCar()V

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->isAppLogRunning()Z

    move-result v0

    if-nez v0, :cond_0

    aget-boolean v0, p1, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->doOpenAppLog()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->isGPSLogRunning()Z

    move-result v0

    if-nez v0, :cond_1

    aget-boolean v0, p1, v2

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->doOpenGPSLog()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->canSetLocation()Z

    move-result v0

    if-nez v0, :cond_2

    aget-boolean v0, p1, v3

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->doOpenSetLocation()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->canRepeatSimluate()Z

    move-result v0

    if-nez v0, :cond_3

    aget-boolean v0, p1, v4

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->doOpenSimulateRepeat()V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->isOriginCarShowing()Z

    move-result v0

    if-nez v0, :cond_4

    aget-boolean v0, p1, v5

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->doShowOriginCar()V

    goto :goto_4
.end method

.method public doShowOriginCar()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_SHOW_ORIGIN_CAR:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iput-boolean v2, p0, Lcom/autonavi/xmgd/application/FactoryMode;->originCarShowing:Z

    :cond_0
    return-void
.end method

.method public getItemNum()I
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->FM_ITEM_NAME:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->FM_ITEM_NAME:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getSelectItem()[Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x5

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->isAppLogRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->isGPSLogRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    aput-boolean v2, v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->canSetLocation()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->canRepeatSimluate()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/xmgd/application/FactoryMode;->isOriginCarShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    :cond_4
    return-object v0

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public isAppLogRunning()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/LogcatHelper;->getInstance(Landroid/content/Context;)Lcom/autonavi/xmgd/utility/LogcatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/LogcatHelper;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isFactoryModeOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->openFactoryMode:Z

    return v0
.end method

.method public isGPSLogRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->gpsLogRunning:Z

    return v0
.end method

.method public isOriginCarShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->originCarShowing:Z

    return v0
.end method

.method public prepare()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->openFactoryMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/application/FactoryMode;->mCurrentStep:I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
