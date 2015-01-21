.class public Lcom/android/camera/manager/ZoomManager;
.super Lcom/android/camera/manager/ViewManager;
.source "ZoomManager.java"

# interfaces
.implements Lcom/android/camera/Camera$OnFullScreenChangedListener;
.implements Lcom/android/camera/Camera$Resumable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/ZoomManager$MyListener;
    }
.end annotation


# static fields
.field private static final FORMATOR:Ljava/text/DecimalFormat; = null

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final RATIO_FACTOR_RATE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ZoomManager"

.field private static final UNKNOWN:I = -0x1

.field private static final ZERO:F = 1.0f

.field private static mIgoreDistance:F


# instance fields
.field private isHDRecord:Z

.field private mDeviceSupport:Z

.field private mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

.field private mGestureListener:Lcom/android/camera/manager/ZoomManager$MyListener;

.field private mIgnorGestureForZooming:Z

.field private mLastZoomRatio:I

.field private mResumed:Z

.field private mZoomIndexFactor:F

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    .line 20
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/manager/ZoomManager;->FORMATOR:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 26
    new-instance v0, Lcom/android/camera/manager/ZoomManager$MyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/manager/ZoomManager$MyListener;-><init>(Lcom/android/camera/manager/ZoomManager;Lcom/android/camera/manager/ZoomManager$1;)V

    iput-object v0, p0, Lcom/android/camera/manager/ZoomManager;->mGestureListener:Lcom/android/camera/manager/ZoomManager$MyListener;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    .line 33
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/ZoomManager;->isHDRecord:Z

    .line 40
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addResumable(Lcom/android/camera/Camera$Resumable;)Z

    .line 41
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 42
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/manager/ZoomManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->getMaxZoomIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/manager/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->getMaxZoomIndexFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/manager/ZoomManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/manager/ZoomManager;->performZoom(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/manager/ZoomManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/camera/manager/ZoomManager;->mIgnorGestureForZooming:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/manager/ZoomManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->shouldIgnoreCurrentGesture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/manager/ZoomManager;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/manager/ZoomManager;->shouldIgnoreScrollGesture(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/manager/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/manager/ZoomManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F

    return p1
.end method

.method static synthetic access$632(Lcom/android/camera/manager/ZoomManager;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/manager/ZoomManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/manager/ZoomManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/manager/ZoomManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ZoomManager;->findZoomIndex(I)I

    move-result v0

    return v0
.end method

.method private findZoomIndex(I)I
    .locals 9
    .parameter "zoomRatio"

    .prologue
    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, find:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 341
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 342
    .local v3, len:I
    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    .line 343
    const/4 v1, 0x0

    .line 363
    .end local v3           #len:I
    :cond_0
    :goto_0
    return v1

    .line 345
    .restart local v3       #len:I
    :cond_1
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 346
    .local v4, max:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 347
    .local v5, min:I
    if-gt p1, v5, :cond_2

    .line 348
    const/4 v1, 0x0

    goto :goto_0

    .line 349
    :cond_2
    if-lt p1, v4, :cond_3

    .line 350
    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    .line 352
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    add-int/lit8 v7, v3, -0x1

    if-ge v2, v7, :cond_0

    .line 353
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 354
    .local v0, cur:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    add-int/lit8 v8, v2, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 355
    .local v6, next:I
    if-lt p1, v0, :cond_4

    if-ge p1, v6, :cond_4

    .line 356
    move v1, v2

    .line 357
    goto :goto_0

    .line 352
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getMaxZoomIndex()I
    .locals 2

    .prologue
    .line 378
    const/4 v0, -0x1

    .line 379
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 382
    :cond_0
    return v0
.end method

.method private getMaxZoomIndexFactor()F
    .locals 2

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->getMaxZoomRatio()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method private getMaxZoomRatio()I
    .locals 3

    .prologue
    .line 390
    const/4 v0, -0x1

    .line 391
    .local v0, ratio:I
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 394
    :cond_0
    return v0
.end method

.method private isAppSupported()Z
    .locals 4

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/SettingChecker;->isZoomEnable(I)Z

    move-result v0

    .line 320
    .local v0, enable:Z
    iget-boolean v1, p0, Lcom/android/camera/manager/ZoomManager;->isHDRecord:Z

    if-eqz v1, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 323
    :cond_0
    sget-boolean v1, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v1, :cond_1

    .line 324
    const-string v1, "ZoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAppSupported() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1
    return v0
.end method

.method private isValidZoomIndex(I)Z
    .locals 4
    .parameter "zoomIndex"

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, valid:Z
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 371
    :cond_0
    sget-boolean v1, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v1, :cond_1

    .line 372
    const-string v1, "ZoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidZoomIndex("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1
    return v0
.end method

.method private performZoom(IZ)V
    .locals 7
    .parameter "zoomIndex"
    .parameter "userAction"

    .prologue
    .line 94
    sget-boolean v2, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v2, :cond_0

    .line 95
    const-string v2, "ZoomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") mResumed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/manager/ZoomManager;->mResumed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDeviceSupport="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/manager/ZoomManager;->mDeviceSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/manager/ZoomManager;->mDeviceSupport:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/manager/ZoomManager;->isValidZoomIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ZoomManager;->startAsyncZoom(I)V

    .line 100
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    .local v0, newRatio:I
    iget v2, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    if-eq v2, v0, :cond_1

    .line 102
    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    .line 105
    .end local v0           #newRatio:I
    :cond_1
    if-eqz p2, :cond_2

    .line 106
    iget v2, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float v1, v2, v3

    .line 107
    .local v1, zoomRation:F
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/manager/ZoomManager;->FORMATOR:Ljava/text/DecimalFormat;

    float-to-double v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    .line 109
    .end local v1           #zoomRation:F
    :cond_2
    return-void
.end method

.method private shouldIgnoreCurrentGesture()Z
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/manager/ZoomManager;->mIgnorGestureForZooming:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldIgnoreScrollGesture(FF)Z
    .locals 3
    .parameter "totalX"
    .parameter "totalY"

    .prologue
    .line 398
    sget-boolean v0, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldIgnoreScrollGesture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mIgoreDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/camera/manager/ZoomManager;->mIgoreDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    sget v0, Lcom/android/camera/manager/ZoomManager;->mIgoreDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/manager/ZoomManager;->mIgoreDistance:F

    .line 404
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/android/camera/manager/ZoomManager;->mIgoreDistance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/android/camera/manager/ZoomManager;->mIgoreDistance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAsyncZoom(I)V
    .locals 3
    .parameter "zoomValue"

    .prologue
    .line 112
    sget-boolean v0, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAsyncZoom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    new-instance v1, Lcom/android/camera/manager/ZoomManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/manager/ZoomManager$1;-><init>(Lcom/android/camera/manager/ZoomManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public changeZoomForQuality()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/ZoomManager;->isHDRecord:Z

    .line 316
    return-void
.end method

.method public checkQualityForZoom()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/ZoomManager;->isHDRecord:Z

    .line 312
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onFullScreenChanged(Z)V
    .locals 0
    .parameter "full"

    .prologue
    .line 331
    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/camera/manager/ZoomManager;->resume()V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ZoomManager;->pause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() mGalleryGestureListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/ZoomManager;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/manager/ZoomManager;->mResumed:Z

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setGestureListener(Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/ZoomManager;->mResumed:Z

    .line 77
    :cond_1
    return-void
.end method

.method public resetZoom()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    sget-boolean v0, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetZoom() mZoomRatios="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastZoomRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F

    .line 88
    invoke-direct {p0, v3}, Lcom/android/camera/manager/ZoomManager;->isValidZoomIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    .line 91
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 55
    iget-boolean v1, p0, Lcom/android/camera/manager/ZoomManager;->mResumed:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager;->mGestureListener:Lcom/android/camera/manager/ZoomManager$MyListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/ActivityBase;->setGestureListener(Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    .line 57
    .local v0, last:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mGestureListener:Lcom/android/camera/manager/ZoomManager$MyListener;

    if-eq v0, v1, :cond_0

    .line 58
    iput-object v0, p0, Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    .line 60
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/manager/ZoomManager;->mResumed:Z

    .line 62
    .end local v0           #last:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    :cond_1
    sget-boolean v1, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v1, :cond_2

    .line 63
    const-string v1, "ZoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resume() mGalleryGestureListener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    return-void
.end method

.method public setZoomParameter()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 282
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 283
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/camera/manager/ZoomManager;->mDeviceSupport:Z

    .line 284
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    .line 285
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    .line 286
    .local v2, index:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 287
    .local v3, len:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 288
    .local v0, curRatio:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    add-int/lit8 v9, v3, -0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 289
    .local v4, maxRatio:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 290
    .local v5, minRatio:I
    move v1, v2

    .line 291
    .local v1, finalIndex:I
    iget v7, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    iget v7, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    if-ne v7, v0, :cond_2

    .line 292
    :cond_0
    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    .line 293
    move v1, v2

    .line 297
    :goto_0
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 298
    .local v6, newRatio:I
    iget v7, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    if-eq v6, v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-direct {p0, v1, v7}, Lcom/android/camera/manager/ZoomManager;->performZoom(IZ)V

    .line 299
    sget-boolean v7, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v7, :cond_1

    .line 300
    const-string v7, "ZoomManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCameraParameterReady() index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", len="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", maxRatio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", minRatio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", curRatio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", finalIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newRatio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mSupportZoom="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/camera/manager/ZoomManager;->mDeviceSupport:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mLastZoomRatio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v0           #curRatio:I
    .end local v1           #finalIndex:I
    .end local v2           #index:I
    .end local v3           #len:I
    .end local v4           #maxRatio:I
    .end local v5           #minRatio:I
    .end local v6           #newRatio:I
    :cond_1
    :goto_2
    return-void

    .line 295
    .restart local v0       #curRatio:I
    .restart local v1       #finalIndex:I
    .restart local v2       #index:I
    .restart local v3       #len:I
    .restart local v4       #maxRatio:I
    .restart local v5       #minRatio:I
    :cond_2
    iget v7, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    invoke-direct {p0, v7}, Lcom/android/camera/manager/ZoomManager;->findZoomIndex(I)I

    move-result v1

    goto/16 :goto_0

    .restart local v6       #newRatio:I
    :cond_3
    move v7, v8

    .line 298
    goto :goto_1

    .line 306
    .end local v0           #curRatio:I
    .end local v1           #finalIndex:I
    .end local v2           #index:I
    .end local v3           #len:I
    .end local v4           #maxRatio:I
    .end local v5           #minRatio:I
    .end local v6           #newRatio:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/manager/ZoomManager;->resetZoom()V

    .line 307
    invoke-direct {p0, v8, v8}, Lcom/android/camera/manager/ZoomManager;->performZoom(IZ)V

    goto :goto_2
.end method
