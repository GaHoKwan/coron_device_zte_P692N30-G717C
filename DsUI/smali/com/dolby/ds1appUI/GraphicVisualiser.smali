.class public Lcom/dolby/ds1appUI/GraphicVisualiser;
.super Landroid/view/SurfaceView;
.source "GraphicVisualiser.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final PAINT_HANDLER:Landroid/os/Handler; = null

.field private static final USE_PAINT_HANDLER:Z = true

.field private static final USE_UI_PAINT_HANDLER:Z


# instance fields
.field private final mCanvasPaint:Ljava/lang/Runnable;

.field public mEnableEditTouch:Z

.field private mEqualizer:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

.field private mFragmentIsActive:Z

.field private final mGainsUi:[F

.field private final mGainsUserSmoothed:[F

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mPainter:Lcom/dolby/ds1appUI/GraphicVisualiserPainter;

.field private mSufraceCreated:Z

.field public mSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 52
    .local v0, h:Landroid/os/Handler;
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "VisPaint"

    const/4 v3, -0x4

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 53
    .local v1, ht:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    .end local v0           #h:Landroid/os/Handler;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    .restart local v0       #h:Landroid/os/Handler;
    sput-object v0, Lcom/dolby/ds1appUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 69
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSuspended:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEnableEditTouch:Z

    .line 73
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mFragmentIsActive:Z

    .line 78
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mGainsUi:[F

    .line 83
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mGainsUserSmoothed:[F

    .line 199
    new-instance v0, Lcom/dolby/ds1appUI/GraphicVisualiser$1;

    invoke-direct {v0, p0}, Lcom/dolby/ds1appUI/GraphicVisualiser$1;-><init>(Lcom/dolby/ds1appUI/GraphicVisualiser;)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    .line 87
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/GraphicVisualiser;->init(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSuspended:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEnableEditTouch:Z

    .line 73
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mFragmentIsActive:Z

    .line 78
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mGainsUi:[F

    .line 83
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mGainsUserSmoothed:[F

    .line 199
    new-instance v0, Lcom/dolby/ds1appUI/GraphicVisualiser$1;

    invoke-direct {v0, p0}, Lcom/dolby/ds1appUI/GraphicVisualiser$1;-><init>(Lcom/dolby/ds1appUI/GraphicVisualiser;)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    .line 92
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/GraphicVisualiser;->init(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSuspended:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEnableEditTouch:Z

    .line 73
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mFragmentIsActive:Z

    .line 78
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mGainsUi:[F

    .line 83
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mGainsUserSmoothed:[F

    .line 199
    new-instance v0, Lcom/dolby/ds1appUI/GraphicVisualiser$1;

    invoke-direct {v0, p0}, Lcom/dolby/ds1appUI/GraphicVisualiser$1;-><init>(Lcom/dolby/ds1appUI/GraphicVisualiser;)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    .line 97
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/GraphicVisualiser;->init(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/dolby/ds1appUI/GraphicVisualiser;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSufraceCreated:Z

    return v0
.end method

.method static synthetic access$100(Lcom/dolby/ds1appUI/GraphicVisualiser;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mFragmentIsActive:Z

    return v0
.end method

.method static synthetic access$200(Lcom/dolby/ds1appUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dolby/ds1appUI/GraphicVisualiser;)Lcom/dolby/ds1appUI/GraphicVisualiserPainter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mPainter:Lcom/dolby/ds1appUI/GraphicVisualiserPainter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dolby/ds1appUI/GraphicVisualiser;)Lcom/dolby/ds1appUI/GraphicEqualizerPainter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/dolby/ds1appUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 101
    new-instance v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mGainsUi:[F

    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mGainsUserSmoothed:[F

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;-><init>(Landroid/content/Context;Lcom/dolby/ds1appUI/GraphicVisualiser;[F[F)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mPainter:Lcom/dolby/ds1appUI/GraphicVisualiserPainter;

    .line 102
    new-instance v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mGainsUi:[F

    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mGainsUserSmoothed:[F

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;-><init>(Landroid/content/Context;Lcom/dolby/ds1appUI/GraphicVisualiser;[F[F)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    .line 104
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mPainter:Lcom/dolby/ds1appUI/GraphicVisualiserPainter;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->setEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mHolder:Landroid/view/SurfaceHolder;

    .line 107
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 165
    const-string v0, "DsUI::MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GraphicVisualiser.drawableStateChanged mSufraceCreated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSufraceCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 168
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSufraceCreated:Z

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    sget-object v1, Lcom/dolby/ds1appUI/GraphicVisualiser;->ENABLED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/dolby/ds1appUI/ViewTools;->testDrawableState([I[I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mPainter:Lcom/dolby/ds1appUI/GraphicVisualiserPainter;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->setEnabled(Z)V

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolby/ds1appUI/GraphicVisualiser;->repaint(Z)V

    goto :goto_0
.end method

.method public getEqualizer()Lcom/dolby/ds1appUI/GraphicEqualizerPainter;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    return-object v0
.end method

.method isSurfaceCreated()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSufraceCreated:Z

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 116
    const-string v0, "DsUI::MainActivity"

    const-string v3, "GraphicVisualiser.onSizeChanged"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 127
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x14

    add-int/lit8 v7, v0, -0x1

    .line 128
    .local v7, bar_width:I
    add-int/lit8 v0, p2, -0x1

    div-int/lit8 v0, v0, 0x30

    add-int/lit8 v6, v0, -0x1

    .line 131
    .local v6, bar_height:I
    add-int/lit8 v0, v7, 0x1

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v1, v0, 0x1

    .line 132
    .local v1, neww:I
    add-int/lit8 v0, v6, 0x1

    mul-int/lit8 v0, v0, 0x30

    add-int/lit8 v2, v0, 0x1

    .line 134
    .local v2, newh:I
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mPainter:Lcom/dolby/ds1appUI/GraphicVisualiserPainter;

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->onSizeChanged(IIII)V

    .line 135
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->onSizeChanged(IIIII)V

    .line 136
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 137
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEnableEditTouch:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    invoke-virtual {v0, p1}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onVisualizerUpdate([F)V
    .locals 3
    .parameter "gains"

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mGainsUi:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    return-void
.end method

.method public repaint()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolby/ds1appUI/GraphicVisualiser;->repaint(Z)V

    .line 178
    return-void
.end method

.method public repaint(Z)V
    .locals 3
    .parameter "force"

    .prologue
    .line 183
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/dolby/ds1appUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 197
    :goto_0
    return-void

    .line 185
    :cond_0
    if-eqz p1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    monitor-enter v1

    .line 187
    :try_start_0
    sget-object v0, Lcom/dolby/ds1appUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    sget-object v0, Lcom/dolby/ds1appUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 191
    :cond_1
    sget-object v0, Lcom/dolby/ds1appUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    sget-object v0, Lcom/dolby/ds1appUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setActiveStatus(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mFragmentIsActive:Z

    .line 238
    return-void
.end method

.method public setExcitations([F)V
    .locals 1
    .parameter "excitations"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mPainter:Lcom/dolby/ds1appUI/GraphicVisualiserPainter;

    invoke-virtual {v0, p1}, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->setExcitations([F)V

    .line 147
    return-void
.end method

.method public setSuspended(Z)V
    .locals 1
    .parameter "suspended"

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSuspended:Z

    .line 269
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->readUserGainsFromEngine()V

    .line 270
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    .line 243
    const-string v0, "DsUI::MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GraphicVisualiser.surfaceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSufraceCreated:Z

    if-ne v0, v3, :cond_0

    .line 246
    invoke-virtual {p0, v3}, Lcom/dolby/ds1appUI/GraphicVisualiser;->repaint(Z)V

    .line 248
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const/4 v2, 0x1

    .line 252
    const-string v0, "DsUI::MainActivity"

    const-string v1, "GraphicVisualiser.surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iput-boolean v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSufraceCreated:Z

    .line 254
    invoke-virtual {p0, v2}, Lcom/dolby/ds1appUI/GraphicVisualiser;->repaint(Z)V

    .line 255
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 259
    const-string v0, "DsUI::MainActivity"

    const-string v1, "GraphicVisualiser.surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSufraceCreated:Z

    .line 261
    return-void
.end method
