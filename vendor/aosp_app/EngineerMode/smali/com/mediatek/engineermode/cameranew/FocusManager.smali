.class public Lcom/mediatek/engineermode/cameranew/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/cameranew/FocusManager$1;,
        Lcom/mediatek/engineermode/cameranew/FocusManager$MainHandler;,
        Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;
    }
.end annotation


# static fields
.field private static final CONTINUOUS_FOCUSING:I = 0x0

.field private static final CONTINUOUS_FOCUS_FAIL:I = 0x2

.field private static final CONTINUOUS_FOCUS_SUCCESS:I = 0x1

.field private static final FOCUS_BEEP_VOLUME:I = 0x64

.field private static final FOCUS_FRAME_DELAY:I = 0x3e8

.field private static final RESET_FOCUS_FRAME:I = 0x1

.field private static final RESET_FOCUS_FRAME_DELAY:I = 0x320

.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0xbb8

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "test/FocusManager"


# instance fields
.field private mAeAwbLock:Z

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mEnableFaceBeauty:Z

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;

.field private mFocusIndicatorRotateLayout:Landroid/view/View;

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mIsTouchFocus:Z

.field mListener:Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewFrame:Landroid/view/View;

.field private mRealFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .parameter "defaultFocusModes"

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    .line 73
    iput-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mIsTouchFocus:Z

    .line 110
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/mediatek/engineermode/cameranew/FocusManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/engineermode/cameranew/FocusManager$MainHandler;-><init>(Lcom/mediatek/engineermode/cameranew/FocusManager;Lcom/mediatek/engineermode/cameranew/FocusManager$1;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/cameranew/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/cameranew/FocusManager;)Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusIndicator:Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;

    return-object v0
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    .line 328
    const-string v0, "test/FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mListener:Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;

    invoke-interface {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;->autoFocus()V

    .line 330
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    .line 331
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->updateFocusUI()V

    .line 332
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    return-void
.end method

.method private autoFocusDoneHanlder(Z)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mListener:Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;

    invoke-interface {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;->onAutoFocusDone()V

    .line 242
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    const-string v0, "test/FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->resetTouchFocus()V

    .line 342
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mListener:Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;

    invoke-interface {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;->cancelAutoFocus()V

    .line 345
    iput v2, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    .line 346
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->updateFocusUI()V

    .line 347
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    return-void
.end method

.method private initRealFocusArea()V
    .locals 10

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mRealFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mRealFocusArea:Ljava/util/List;

    .line 148
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mRealFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x1

    invoke-direct {v3, v8, v9}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 151
    .local v1, focusWidth:I
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 152
    .local v2, focusHeight:I
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    .line 153
    :cond_1
    const-string v0, "test/FocusManager"

    const-string v3, "UI Component not initialized, cancel this touch"

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 157
    .local v6, previewWidth:I
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 158
    .local v7, previewHeight:I
    div-int/lit8 v4, v6, 0x2

    .line 159
    .local v4, x:I
    div-int/lit8 v5, v7, 0x2

    .line 160
    .local v5, y:I
    const-string v0, "test/FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "real area.x = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " real area.y = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mRealFocusArea:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/engineermode/cameranew/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    goto :goto_0
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

    .line 462
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

.method private needAutoFocusCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, focusMode:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "infinity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fixed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "edof"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "manual"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 427
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 428
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 429
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/mediatek/engineermode/cameranew/Util;->clamp(III)I

    move-result v3

    .line 430
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/mediatek/engineermode/cameranew/Util;->clamp(III)I

    move-result v5

    .line 432
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 433
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 434
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/mediatek/engineermode/cameranew/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 435
    return-void
.end method

.method public capture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    const-string v0, "test/FocusManager"

    const-string v1, "capture()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iput v2, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    .line 354
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    return-void
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 252
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    return-object v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public getRealFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mRealFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public initialize(Landroid/view/View;Landroid/view/View;Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;ZI)V
    .locals 3
    .parameter "focusIndicatorRotate"
    .parameter "previewFrame"
    .parameter "listener"
    .parameter "mirror"
    .parameter "displayOrientation"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    .line 126
    const v1, 0x7f0b0339

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusIndicator:Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;

    .line 127
    iput-object p2, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mPreviewFrame:Landroid/view/View;

    .line 128
    iput-object p3, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mListener:Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;

    .line 130
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 131
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, p4, p5, v1, v2}, Lcom/mediatek/engineermode/cameranew/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 135
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 137
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mInitialized:Z

    .line 142
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->initRealFocusArea()V

    .line 143
    return-void

    .line 140
    :cond_0
    const-string v1, "test/FocusManager"

    const-string v2, "mParameters is not initialized."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initializeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 118
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "auto"

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/cameranew/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusAreaSupported:Z

    .line 120
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mLockAeAwbNeeded:Z

    .line 121
    return-void

    :cond_2
    move v0, v2

    .line 118
    goto :goto_0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 438
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 442
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchFocusMode()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mIsTouchFocus:Z

    return v0
.end method

.method public onAutoFocus(Z)V
    .locals 5
    .parameter "focused"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 205
    const-string v0, "test/FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocus, mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 210
    if-eqz p1, :cond_1

    .line 211
    iput v3, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->updateFocusUI()V

    .line 216
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->autoFocusDoneHanlder(Z)V

    .line 235
    :cond_0
    :goto_1
    return-void

    .line 213
    :cond_1
    iput v4, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    goto :goto_0

    .line 217
    :cond_2
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 221
    if-eqz p1, :cond_3

    .line 222
    iput v3, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    .line 226
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->updateFocusUI()V

    .line 229
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 224
    :cond_3
    iput v4, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    goto :goto_2

    .line 233
    :cond_4
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->autoFocusDoneHanlder(Z)V

    goto :goto_1
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->onPreviewStopped()V

    .line 325
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    .line 314
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    .line 318
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->resetTouchFocus()V

    .line 320
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->updateFocusUI()V

    .line 321
    return-void
.end method

.method public onShutterDown()V
    .locals 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mAeAwbLock:Z

    if-nez v0, :cond_2

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mAeAwbLock:Z

    .line 171
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mListener:Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;

    invoke-interface {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;->setFocusParameters()V

    .line 174
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->isTouchFocusMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 176
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->autoFocus()V

    goto :goto_0

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mListener:Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;

    invoke-interface {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;->onAutoFocusDone()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->cancelAutoFocus()V

    .line 197
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 198
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mAeAwbLock:Z

    .line 199
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mListener:Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;

    invoke-interface {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;->setFocusParameters()V

    .line 201
    :cond_3
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mIsTouchFocus:Z

    goto :goto_0
.end method

.method public onSingleTapUpPreview(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "me"

    .prologue
    const/4 v2, 0x1

    .line 475
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    if-eq v0, v1, :cond_0

    .line 476
    const/4 v0, 0x0

    .line 484
    :goto_0
    return v0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 480
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 481
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->cancelAutoFocus()V

    .line 483
    :cond_2
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mIsTouchFocus:Z

    .line 484
    invoke-virtual {p0, p2}, Lcom/mediatek/engineermode/cameranew/FocusManager;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "e"

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 258
    :cond_0
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    .line 260
    :cond_1
    const-string v0, "test/FocusManager"

    const-string v3, "onTouch "

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 264
    .local v4, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 265
    .local v5, y:I
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 266
    .local v1, focusWidth:I
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 267
    .local v2, focusHeight:I
    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 268
    :cond_2
    const-string v0, "test/FocusManager"

    const-string v3, "UI Component not initialized, cancel this touch"

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    :cond_3
    const-string v0, "test/FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TouchFocus: touch.x = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " touch.y = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 273
    .local v6, previewWidth:I
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 274
    .local v7, previewHeight:I
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_4

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusArea:Ljava/util/List;

    .line 276
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v13, 0x1

    invoke-direct {v3, v8, v13}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 278
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v13, 0x1

    invoke-direct {v3, v8, v13}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_4
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/engineermode/cameranew/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 285
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/engineermode/cameranew/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 288
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 289
    .local v10, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v0, v1, 0x2

    sub-int v0, v4, v0

    const/4 v3, 0x0

    sub-int v8, v6, v1

    invoke-static {v0, v3, v8}, Lcom/mediatek/engineermode/cameranew/Util;->clamp(III)I

    move-result v9

    .line 290
    .local v9, left:I
    div-int/lit8 v0, v2, 0x2

    sub-int v0, v5, v0

    const/4 v3, 0x0

    sub-int v8, v7, v2

    invoke-static {v0, v3, v8}, Lcom/mediatek/engineermode/cameranew/Util;->clamp(III)I

    move-result v12

    .line 291
    .local v12, top:I
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v9, v12, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 294
    invoke-virtual {v10}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v11

    .line 295
    .local v11, rules:[I
    const/16 v0, 0xd

    const/4 v3, 0x0

    aput v3, v11, v0

    .line 296
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 299
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mListener:Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;

    invoke-interface {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;->setFocusParameters()V

    .line 300
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 301
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->autoFocus()V

    .line 309
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 303
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->updateFocusUI()V

    .line 305
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v13, 0xbb8

    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    return-void
.end method

.method public resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 411
    iget-boolean v2, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 423
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 416
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 417
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 418
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 420
    iput-object v5, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusArea:Ljava/util/List;

    .line 421
    iput-object v5, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 422
    iput-boolean v4, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mIsTouchFocus:Z

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 454
    iput-boolean p1, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mAeAwbLock:Z

    .line 455
    return-void
.end method

.method public updateFocusUI()V
    .locals 5

    .prologue
    .line 377
    const-string v3, "test/FocusManager"

    const-string v4, "updateFocusUI()"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-boolean v3, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mInitialized:Z

    if-nez v3, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v2, v3, 0x4

    .line 383
    .local v2, len:I
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusIndicator:Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 384
    .local v1, layout:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 385
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 388
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusIndicator:Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;

    .line 390
    .local v0, focusIndicator:Lcom/mediatek/engineermode/cameranew/FocusIndicator;
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    if-nez v3, :cond_3

    .line 391
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v3, :cond_2

    .line 392
    invoke-interface {v0}, Lcom/mediatek/engineermode/cameranew/FocusIndicator;->clear()V

    goto :goto_0

    .line 397
    :cond_2
    invoke-interface {v0}, Lcom/mediatek/engineermode/cameranew/FocusIndicator;->showStart()V

    goto :goto_0

    .line 399
    :cond_3
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 400
    :cond_4
    invoke-interface {v0}, Lcom/mediatek/engineermode/cameranew/FocusIndicator;->showStart()V

    goto :goto_0

    .line 402
    :cond_5
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 403
    invoke-interface {v0}, Lcom/mediatek/engineermode/cameranew/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 404
    :cond_6
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/FocusManager;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 405
    invoke-interface {v0}, Lcom/mediatek/engineermode/cameranew/FocusIndicator;->showFail()V

    goto :goto_0
.end method
