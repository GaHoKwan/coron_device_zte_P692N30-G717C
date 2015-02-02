.class public Lcom/amoi/AmoiEngineerMode/auto/MagneticSensorAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/CompassBase;
.source "MagneticSensorAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 53
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initAutoButtons(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mIsErr:Z

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 41
    :cond_0
    sget-object v1, Lcom/amoi/AmoiEngineerMode/auto/MagneticSensorAutoTest;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mDegree:F

    .line 44
    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/auto/MagneticSensorAutoTest;->accuryChange(I)I

    .line 45
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/MagneticSensorAutoTest;->drawScreen()V

    .line 47
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
