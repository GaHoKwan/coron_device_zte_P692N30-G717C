.class public Lcom/mediatek/engineermode/camera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# instance fields
.field private mAeAwbLock:Z

.field private mFocusAreaSupported:Z

.field private mLockAeAwbNeeded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 87
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public initializeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "parameters"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    move-object v0, p1

    .line 77
    .local v0, mParameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "auto"

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mediatek/engineermode/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/engineermode/camera/FocusManager;->mFocusAreaSupported:Z

    .line 81
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/engineermode/camera/FocusManager;->mLockAeAwbNeeded:Z

    .line 84
    return-void

    :cond_2
    move v1, v3

    .line 77
    goto :goto_0
.end method

.method public ismFocusAreaSupported()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/FocusManager;->mFocusAreaSupported:Z

    return v0
.end method

.method public ismLockAeAwbNeeded()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/FocusManager;->mLockAeAwbNeeded:Z

    return v0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/mediatek/engineermode/camera/FocusManager;->mAeAwbLock:Z

    .line 98
    return-void
.end method

.method public setmFocusAreaSupported(Z)V
    .locals 0
    .parameter "focusAreaSupported"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/mediatek/engineermode/camera/FocusManager;->mFocusAreaSupported:Z

    .line 124
    return-void
.end method

.method public setmLockAeAwbNeeded(Z)V
    .locals 0
    .parameter "lockAeAwbNeeded"

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/mediatek/engineermode/camera/FocusManager;->mLockAeAwbNeeded:Z

    .line 142
    return-void
.end method
