.class public Lcom/mediatek/ngin3d/android/StageView;
.super Landroid/opengl/GLSurfaceView;
.source "StageView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final DEFAULT_CAM_DIST:F = 1111.0f

.field public static final INVALID_TIME:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "StageView"

.field private static sPixelDensity:F


# instance fields
.field private mCacheDir:Ljava/lang/String;

.field private mFirstOnDrawFrameTime:J

.field private mGLThread:Ljava/lang/Thread;

.field private final mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

.field private mResources:Landroid/content/res/Resources;

.field private mShowFPS:Z

.field protected final mStage:Lcom/mediatek/ngin3d/Stage;

.field private final mSurfaceReadyLock:Ljava/lang/Object;

.field private mTextFPS:Lcom/mediatek/ngin3d/Text;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/high16 v0, -0x4080

    sput v0, Lcom/mediatek/ngin3d/android/StageView;->sPixelDensity:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    const/4 v0, 0x0

    check-cast v0, Lcom/mediatek/ngin3d/Stage;

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/android/StageView;-><init>(Landroid/content/Context;Lcom/mediatek/ngin3d/Stage;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    new-instance v0, Lcom/mediatek/ngin3d/Stage;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Stage;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mediatek/ngin3d/android/StageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mediatek/ngin3d/Stage;Z)V

    .line 89
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mediatek/ngin3d/Stage;Z)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "stage"
    .parameter "antiAlias"

    .prologue
    const/4 v7, 0x1

    const/16 v1, 0x8

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 375
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mediatek/ngin3d/android/StageView;->mFirstOnDrawFrameTime:J

    .line 448
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mSurfaceReadyLock:Ljava/lang/Object;

    .line 118
    if-nez p3, :cond_1

    .line 119
    new-instance v0, Lcom/mediatek/ngin3d/Stage;

    invoke-static {}, Lcom/mediatek/ngin3d/android/AndroidUiHandler;->create()Lcom/mediatek/ngin3d/UiHandler;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/ngin3d/Stage;-><init>(Lcom/mediatek/ngin3d/UiHandler;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mStage:Lcom/mediatek/ngin3d/Stage;

    .line 124
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 125
    if-eqz p4, :cond_2

    .line 126
    new-instance v0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;-><init>()V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 131
    :goto_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 132
    invoke-virtual {p0, v7}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 134
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mResources:Landroid/content/res/Resources;

    .line 136
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mStage:Lcom/mediatek/ngin3d/Stage;

    invoke-static {v0}, Lcom/mediatek/ngin3d/Ngin3d;->createPresentationEngine(Lcom/mediatek/ngin3d/Stage;)Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mCacheDir:Ljava/lang/String;

    .line 141
    :cond_0
    const-string v0, "ngin3d.showfps"

    invoke-static {}, Lcom/mediatek/ngin3d/Ngin3d;->showFPS()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mShowFPS:Z

    .line 144
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mShowFPS:Z

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {p0, v7}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 146
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/StageView;->setupFPSText()V

    .line 150
    :goto_2
    return-void

    .line 121
    :cond_1
    iput-object p3, p0, Lcom/mediatek/ngin3d/android/StageView;->mStage:Lcom/mediatek/ngin3d/Stage;

    goto :goto_0

    .line 128
    :cond_2
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    goto :goto_1

    .line 148
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "antiAlias"

    .prologue
    .line 92
    new-instance v0, Lcom/mediatek/ngin3d/Stage;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Stage;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ngin3d/android/StageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mediatek/ngin3d/Stage;Z)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ngin3d/Stage;)V
    .locals 2
    .parameter "context"
    .parameter "stage"

    .prologue
    .line 102
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/mediatek/ngin3d/android/StageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mediatek/ngin3d/Stage;Z)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ngin3d/Stage;Z)V
    .locals 1
    .parameter "context"
    .parameter "stage"
    .parameter "antiAlias"

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mediatek/ngin3d/android/StageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mediatek/ngin3d/Stage;Z)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ngin3d/android/StageView;)Lcom/mediatek/ngin3d/presentation/PresentationEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    return-object v0
.end method

.method public static dpToPixel(Landroid/content/Context;F)F
    .locals 4
    .parameter "context"
    .parameter "dp"

    .prologue
    .line 169
    const-class v2, Lcom/mediatek/ngin3d/android/StageView;

    monitor-enter v2

    .line 170
    :try_start_0
    sget v1, Lcom/mediatek/ngin3d/android/StageView;->sPixelDensity:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 171
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 172
    .local v0, metrics:Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 174
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/mediatek/ngin3d/android/StageView;->sPixelDensity:F

    .line 176
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    sget v1, Lcom/mediatek/ngin3d/android/StageView;->sPixelDensity:F

    mul-float/2addr v1, p1

    monitor-exit v2

    return v1

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static dpToPixel(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "dp"

    .prologue
    .line 181
    int-to-float v0, p1

    invoke-static {p0, v0}, Lcom/mediatek/ngin3d/android/StageView;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setupFPSText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    new-instance v0, Lcom/mediatek/ngin3d/Text;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/Text;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    .line 154
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    new-instance v1, Lcom/mediatek/ngin3d/Point;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Plane;->setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    new-instance v1, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v1, v3, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    sget-object v1, Lcom/mediatek/ngin3d/Color;->YELLOW:Lcom/mediatek/ngin3d/Color;

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Text;->setTextColor(Lcom/mediatek/ngin3d/Color;)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mStage:Lcom/mediatek/ngin3d/Stage;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mediatek/ngin3d/Actor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/ngin3d/android/StageView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 158
    return-void
.end method


# virtual methods
.method public enableStereoscopic3D(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mStage:Lcom/mediatek/ngin3d/Stage;

    const v1, 0x448ae000

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ngin3d/Stage;->setStereo3D(ZF)V

    .line 236
    return-void
.end method

.method public enableStereoscopic3D(ZF)V
    .locals 1
    .parameter "enable"
    .parameter "focalDistance"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mStage:Lcom/mediatek/ngin3d/Stage;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ngin3d/Stage;->setStereo3D(ZF)V

    .line 247
    return-void
.end method

.method public enableStereoscopic3D(ZFF)V
    .locals 1
    .parameter "enable"
    .parameter "focalDistance"
    .parameter "intensity"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mStage:Lcom/mediatek/ngin3d/Stage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/ngin3d/Stage;->setStereo3D(ZFF)V

    .line 260
    return-void
.end method

.method public getFPS()D
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->getFPS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstOnDrawTime()J
    .locals 2

    .prologue
    .line 378
    iget-wide v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mFirstOnDrawFrameTime:J

    return-wide v0
.end method

.method public getPresentationEngine()Lcom/mediatek/ngin3d/presentation/PresentationEngine;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    return-object v0
.end method

.method public getScreenShot()Landroid/graphics/Bitmap;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/mediatek/ngin3d/android/StageView$1;

    invoke-direct {v3, p0}, Lcom/mediatek/ngin3d/android/StageView$1;-><init>(Lcom/mediatek/ngin3d/android/StageView;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 312
    .local v2, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Object;>;"
    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/android/StageView;->runInGLThread(Ljava/lang/Runnable;)V

    .line 313
    const/4 v1, 0x0

    .line 315
    .local v1, obj:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 322
    .end local v1           #obj:Ljava/lang/Object;
    :goto_0
    instance-of v3, v1, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 323
    check-cast v1, Landroid/graphics/Bitmap;

    .line 325
    :goto_1
    return-object v1

    .line 316
    .restart local v1       #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 318
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 319
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    .end local v1           #obj:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final getStage()Lcom/mediatek/ngin3d/Stage;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mStage:Lcom/mediatek/ngin3d/Stage;

    return-object v0
.end method

.method public isSurfaceReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->isReady()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mFirstOnDrawFrameTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mFirstOnDrawFrameTime:J

    .line 384
    const-string v0, "StageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFrame() invoked @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/ngin3d/android/StageView;->mFirstOnDrawFrameTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mShowFPS:Z

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    const-string v1, "FPS: %.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v4}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->getFPS()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->render()Z

    .line 395
    :cond_1
    :goto_0
    return-void

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->render()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageView;->pauseRendering()V

    .line 402
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/mediatek/ngin3d/android/StageView$3;

    invoke-direct {v1, p0}, Lcom/mediatek/ngin3d/android/StageView$3;-><init>(Lcom/mediatek/ngin3d/android/StageView;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 408
    .local v0, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/android/StageView;->runInGLThread(Ljava/lang/Runnable;)V

    .line 409
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 410
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 413
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 414
    const-string v0, "StageView"

    const-string v1, "onResume from activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageView;->resumeRendering()V

    .line 417
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 357
    const-string v0, "StageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged(width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-interface {p1, v3, v3, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 363
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mStage:Lcom/mediatek/ngin3d/Stage;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->touchProperty(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0, p2, p3}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->resize(II)V

    .line 367
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mShowFPS:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    new-instance v1, Lcom/mediatek/ngin3d/Point;

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 329
    const-string v2, "StageView"

    const-string v3, "onSurfaceCreated()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v2, -0x4

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 333
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ngin3d/android/StageView;->mGLThread:Ljava/lang/Thread;

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 336
    .local v1, w:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 339
    .local v0, h:I
    iget-object v2, p0, Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    new-instance v3, Lcom/mediatek/ngin3d/android/StageView$2;

    invoke-direct {v3, p0}, Lcom/mediatek/ngin3d/android/StageView$2;-><init>(Lcom/mediatek/ngin3d/android/StageView;)V

    invoke-interface {v2, v3}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setRenderCallback(Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;)V

    .line 345
    iget-object v2, p0, Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    iget-object v3, p0, Lcom/mediatek/ngin3d/android/StageView;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/mediatek/ngin3d/android/StageView;->mCacheDir:Ljava/lang/String;

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->initialize(IILandroid/content/res/Resources;Ljava/lang/String;)V

    .line 347
    iget-object v3, p0, Lcom/mediatek/ngin3d/android/StageView;->mSurfaceReadyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/android/StageView;->mSurfaceReadyLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 349
    monitor-exit v3

    .line 354
    return-void

    .line 349
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public pauseRendering()V
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mShowFPS:Z

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->pauseRendering()V

    .line 428
    return-void
.end method

.method public resumeRendering()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->resumeRendering()V

    .line 437
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/StageView;->mShowFPS:Z

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public runInGLThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageView;->mGLThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 162
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .locals 0
    .parameter "cacheDir"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/StageView;->mCacheDir:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setStereoscopic3dFlags(II)V
    .locals 7
    .parameter "flag"
    .parameter "mask"

    .prologue
    .line 278
    :try_start_0
    const-string v4, "android.opengl.GLSurfaceView"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 281
    .local v0, cls:Ljava/lang/Class;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Class;

    .line 282
    .local v3, paramInt:[Ljava/lang/Class;
    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 283
    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 286
    const-string v4, "setFlagsEx"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 287
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 297
    .end local v0           #cls:Ljava/lang/Class;
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #paramInt:[Ljava/lang/Class;
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    const-string v4, "StageView"

    const-string v5, "android.opengl.GLSurfaceView not found "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 291
    .local v1, ex:Ljava/lang/NoSuchMethodException;
    const-string v4, "StageView"

    const-string v5, "setFlagsEx not found in GLSurfaceView"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    .end local v1           #ex:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 293
    .local v1, ex:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "StageView"

    const-string v5, "Got exception when invoking setFlagsEx"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v1           #ex:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 295
    .local v1, ex:Ljava/lang/IllegalAccessException;
    const-string v4, "StageView"

    const-string v5, "Illegal to access setFlagsEx"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public waitSurfaceReady()V
    .locals 3

    .prologue
    .line 451
    iget-object v2, p0, Lcom/mediatek/ngin3d/android/StageView;->mSurfaceReadyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 452
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageView;->isSurfaceReady()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 454
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageView;->mSurfaceReadyLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 459
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    return-void
.end method
