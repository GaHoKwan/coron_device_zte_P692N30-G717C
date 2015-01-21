.class public Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;
.super Ljava/lang/Object;
.source "StageWallpaperService.java"

# interfaces
.implements Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/android/StageWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StageRenderer"
.end annotation


# instance fields
.field private mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

.field private final mRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

.field private final mShowFPS:Z

.field private final mStage:Lcom/mediatek/ngin3d/Stage;

.field private final mSurfaceReadyLock:Ljava/lang/Object;

.field private mTextFPS:Lcom/mediatek/ngin3d/Text;

.field final synthetic this$0:Lcom/mediatek/ngin3d/android/StageWallpaperService;


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;Lcom/mediatek/ngin3d/Stage;)V
    .locals 1
    .parameter
    .parameter "stage"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;-><init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;Lcom/mediatek/ngin3d/Stage;Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;Lcom/mediatek/ngin3d/Stage;Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;)V
    .locals 1
    .parameter
    .parameter "stage"
    .parameter "renderCallback"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;-><init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;Lcom/mediatek/ngin3d/Stage;Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;Lcom/mediatek/ngin3d/Stage;Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;Z)V
    .locals 1
    .parameter
    .parameter "stage"
    .parameter "renderCallback"
    .parameter "showFPS"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->this$0:Lcom/mediatek/ngin3d/android/StageWallpaperService;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mSurfaceReadyLock:Ljava/lang/Object;

    .line 80
    iput-object p2, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mStage:Lcom/mediatek/ngin3d/Stage;

    .line 81
    iput-object p3, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

    .line 82
    iput-boolean p4, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mShowFPS:Z

    .line 83
    return-void
.end method

.method private setupFPSText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    new-instance v0, Lcom/mediatek/ngin3d/Text;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/Text;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    new-instance v1, Lcom/mediatek/ngin3d/Point;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Plane;->setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    new-instance v1, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v1, v3, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 177
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    sget-object v1, Lcom/mediatek/ngin3d/Color;->YELLOW:Lcom/mediatek/ngin3d/Color;

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Text;->setTextColor(Lcom/mediatek/ngin3d/Color;)V

    .line 178
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mStage:Lcom/mediatek/ngin3d/Stage;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mediatek/ngin3d/Actor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 179
    return-void
.end method


# virtual methods
.method public getPresentationEngine()Lcom/mediatek/ngin3d/presentation/PresentationEngine;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    return-object v0
.end method

.method public isSurfaceReady()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 92
    const-string v0, "StageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSurfaceReady(), mPresentationEngine:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->isReady()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 168
    const-string v0, "StageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->uninitialize()V

    .line 171
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    .line 153
    const-string v0, "StageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFrame , id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mShowFPS:Z

    if-eqz v0, :cond_1

    .line 156
    const-string v0, "StageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StageWallpaperService FPS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v2}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->getFPS()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    const-string v1, "FPS: %.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v4}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->getFPS()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->render()Z

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->render()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;->requestRender()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 115
    const-string v1, "StageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged - width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    if-nez v1, :cond_3

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, cacheDir:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->this$0:Lcom/mediatek/ngin3d/android/StageWallpaperService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->this$0:Lcom/mediatek/ngin3d/android/StageWallpaperService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mStage:Lcom/mediatek/ngin3d/Stage;

    invoke-static {v1}, Lcom/mediatek/ngin3d/Ngin3d;->createPresentationEngine(Lcom/mediatek/ngin3d/Stage;)Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    .line 123
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    iget-object v2, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->this$0:Lcom/mediatek/ngin3d/android/StageWallpaperService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v1, p2, p3, v2, v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->initialize(IILandroid/content/res/Resources;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    iget-object v2, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setRenderCallback(Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;)V

    .line 125
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mShowFPS:Z

    if-eqz v1, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->setupFPSText()V

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mSurfaceReadyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mSurfaceReadyLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v0           #cacheDir:Ljava/lang/String;
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mShowFPS:Z

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    new-instance v2, Lcom/mediatek/ngin3d/Point;

    int-to-float v3, p2

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

    invoke-interface {v1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;->requestRender()V

    .line 149
    return-void

    .line 130
    .restart local v0       #cacheDir:Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 135
    .end local v0           #cacheDir:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mStage:Lcom/mediatek/ngin3d/Stage;

    const-string v2, "position"

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/Container;->touchProperty(Ljava/lang/String;)V

    .line 139
    invoke-interface {p1, v4, v4, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 142
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v1, p2, p3}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->resize(II)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 87
    const-string v0, "StageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public waitSurfaceReady()V
    .locals 3

    .prologue
    .line 102
    iget-object v2, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mSurfaceReadyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->isSurfaceReady()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->mSurfaceReadyLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 110
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

    .line 111
    return-void
.end method
