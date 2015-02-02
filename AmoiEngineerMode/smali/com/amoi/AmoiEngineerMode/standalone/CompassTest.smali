.class public Lcom/amoi/AmoiEngineerMode/standalone/CompassTest;
.super Lcom/amoi/AmoiEngineerMode/base/CompassBase;
.source "CompassTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 11
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initOnlyExitButton(Landroid/app/Activity;)V

    .line 12
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mIsErr:Z

    if-eqz v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 21
    :cond_0
    sget-object v1, Lcom/amoi/AmoiEngineerMode/standalone/CompassTest;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mDegree:F

    .line 24
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/CompassTest;->drawScreen()V

    .line 26
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
