.class public Lcom/mediatek/ngin3d/android/StageTextureView;
.super Lcom/mediatek/ngin3d/android/GLTextureView;
.source "StageTextureView.java"

# interfaces
.implements Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "StageTextureView"


# instance fields
.field private mCacheDir:Ljava/lang/String;

.field private mLibDir:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field protected mStage:Lcom/mediatek/ngin3d/Stage;

.field private final mSurfaceReadyLock:Ljava/lang/Object;

.field private mTextFPS:Lcom/mediatek/ngin3d/Text;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    check-cast v0, Lcom/mediatek/ngin3d/Stage;

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/android/StageTextureView;-><init>(Landroid/content/Context;Lcom/mediatek/ngin3d/Stage;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    new-instance v0, Lcom/mediatek/ngin3d/Stage;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Stage;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mediatek/ngin3d/android/StageTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mediatek/ngin3d/Stage;Z)V

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mediatek/ngin3d/Stage;Z)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "stage"
    .parameter "antiAlias"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ngin3d/android/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 349
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mSurfaceReadyLock:Ljava/lang/Object;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mResources:Landroid/content/res/Resources;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mCacheDir:Ljava/lang/String;

    .line 113
    :cond_0
    if-nez p3, :cond_2

    .line 114
    new-instance v0, Lcom/mediatek/ngin3d/Stage;

    invoke-static {}, Lcom/mediatek/ngin3d/android/AndroidUiHandler;->create()Lcom/mediatek/ngin3d/UiHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/Stage;-><init>(Lcom/mediatek/ngin3d/UiHandler;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    .line 119
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/android/StageTextureView;->setEGLContextClientVersion(I)V

    .line 120
    if-eqz p4, :cond_1

    .line 121
    new-instance v0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/android/StageTextureView;->setEGLConfigChooser(Lcom/mediatek/ngin3d/android/EGLConfigChooser;)V

    .line 124
    :cond_1
    invoke-virtual {p0, p0}, Lcom/mediatek/ngin3d/android/StageTextureView;->setRenderer(Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;)V

    .line 127
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mShowFPS:Z

    if-eqz v0, :cond_3

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/android/StageTextureView;->setRenderMode(I)V

    .line 129
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/StageTextureView;->setupFPSText()V

    .line 133
    :goto_1
    return-void

    .line 116
    :cond_2
    iput-object p3, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    goto :goto_0

    .line 131
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/android/StageTextureView;->setRenderMode(I)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "antiAlias"

    .prologue
    .line 80
    new-instance v0, Lcom/mediatek/ngin3d/Stage;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Stage;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ngin3d/android/StageTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mediatek/ngin3d/Stage;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ngin3d/Stage;)V
    .locals 2
    .parameter "context"
    .parameter "stage"

    .prologue
    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/mediatek/ngin3d/android/StageTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mediatek/ngin3d/Stage;Z)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ngin3d/Stage;Z)V
    .locals 1
    .parameter "context"
    .parameter "stage"
    .parameter "antiAlias"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mediatek/ngin3d/android/StageTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mediatek/ngin3d/Stage;Z)V

    .line 103
    return-void
.end method

.method private setupFPSText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 261
    new-instance v0, Lcom/mediatek/ngin3d/Text;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/Text;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    .line 262
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    new-instance v1, Lcom/mediatek/ngin3d/Point;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Plane;->setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V

    .line 263
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    new-instance v1, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v1, v3, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 264
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    sget-object v1, Lcom/mediatek/ngin3d/Color;->YELLOW:Lcom/mediatek/ngin3d/Color;

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Text;->setTextColor(Lcom/mediatek/ngin3d/Color;)V

    .line 265
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mediatek/ngin3d/Actor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 266
    return-void
.end method


# virtual methods
.method public getFPS()D
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->getFPS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPresentationEngine()Lcom/mediatek/ngin3d/presentation/PresentationEngine;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    return-object v0
.end method

.method public bridge synthetic getRenderMode()I
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/mediatek/ngin3d/android/GLTextureView;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public final getStage()Lcom/mediatek/ngin3d/Stage;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    return-object v0
.end method

.method public isSurfaceReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "StageTextureView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageTextureView;->onPause()V

    .line 148
    invoke-super {p0}, Lcom/mediatek/ngin3d/android/GLTextureView;->onDetachedFromWindow()V

    .line 149
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mShowFPS:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    const-string v1, "FPS: %.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v4}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->getFPS()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->render()Z

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->render()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageTextureView;->requestRender()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "StageTextureView"

    const-string v1, "onPause from activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageTextureView;->pauseRendering()V

    .line 140
    invoke-super {p0}, Lcom/mediatek/ngin3d/android/GLTextureView;->onPause()V

    .line 141
    return-void
.end method

.method public onPaused()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->uninitialize()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    .line 258
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "StageTextureView"

    const-string v1, "onResume from activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-super {p0}, Lcom/mediatek/ngin3d/android/GLTextureView;->onResume()V

    .line 156
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageTextureView;->resumeRendering()V

    .line 157
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/ngin3d/android/GLTextureView;->onSizeChanged(IIII)V

    .line 192
    const-string v0, "StageTextureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged, w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mShowFPS:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    new-instance v1, Lcom/mediatek/ngin3d/Point;

    int-to-float v2, p1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageTextureView;->requestRender()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 227
    const-string v0, "StageTextureView"

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

    .line 232
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->touchProperty(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0, p2, p3}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->resize(II)V

    .line 235
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mShowFPS:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mTextFPS:Lcom/mediatek/ngin3d/Text;

    new-instance v1, Lcom/mediatek/ngin3d/Point;

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageTextureView;->requestRender()V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 201
    const-string v0, "StageTextureView"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    invoke-static {v0}, Lcom/mediatek/ngin3d/Ngin3d;->createPresentationEngine(Lcom/mediatek/ngin3d/Stage;)Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    .line 206
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    new-instance v1, Lcom/mediatek/ngin3d/android/StageTextureView$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ngin3d/android/StageTextureView$1;-><init>(Lcom/mediatek/ngin3d/android/StageTextureView;)V

    invoke-interface {v0, v1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setRenderCallback(Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;)V

    .line 211
    const-string v0, "StageTextureView"

    const-string v1, "PresentationEngine initialize "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mCacheDir:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mLibDir:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->initialize(IILandroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageTextureView;->resumeRendering()V

    .line 217
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mSurfaceReadyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mSurfaceReadyLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 219
    monitor-exit v1

    .line 224
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/android/GLTextureView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public bridge synthetic onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/android/GLTextureView;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public bridge synthetic onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/android/GLTextureView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 186
    const-string v0, "StageTextureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged, visibility is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method public pauseRendering()V
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mShowFPS:Z

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/android/StageTextureView;->setRenderMode(I)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->pauseRendering()V

    .line 325
    :cond_1
    return-void
.end method

.method public bridge synthetic queueEvent(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic requestRender()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/mediatek/ngin3d/android/GLTextureView;->requestRender()V

    return-void
.end method

.method public resumeRendering()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->resumeRendering()V

    .line 334
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageTextureView;->requestRender()V

    .line 337
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/GLTextureView;->setSurfaceTextureReady()V

    .line 338
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mShowFPS:Z

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/android/StageTextureView;->setRenderMode(I)V

    .line 343
    :cond_0
    return-void
.end method

.method public bridge synthetic runInGLThread(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCacheDir(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "cacheDir"

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v2, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v3, "The context can not be null"

    invoke-direct {v2, v3}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_0
    iput-object p2, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mCacheDir:Ljava/lang/String;

    .line 287
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mCacheDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/mediatek/ngin3d/animation/AnimationLoader;->setCacheDir(Ljava/io/File;)V

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mCacheDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mLibDir:Ljava/lang/String;

    .line 293
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mLibDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/libja3m.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, symbolic:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mLibDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 301
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ln -s /system/lib/libja3m.so "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mLibDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/libja3m.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 310
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mLibDir:Ljava/lang/String;

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic setEGLConfigChooser(IIIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 63
    invoke-super/range {p0 .. p6}, Lcom/mediatek/ngin3d/android/GLTextureView;->setEGLConfigChooser(IIIIII)V

    return-void
.end method

.method public bridge synthetic setEGLConfigChooser(Lcom/mediatek/ngin3d/android/EGLConfigChooser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView;->setEGLConfigChooser(Lcom/mediatek/ngin3d/android/EGLConfigChooser;)V

    return-void
.end method

.method public bridge synthetic setEGLConfigChooser(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView;->setEGLConfigChooser(Z)V

    return-void
.end method

.method public bridge synthetic setEGLContextClientVersion(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView;->setEGLContextClientVersion(I)V

    return-void
.end method

.method public bridge synthetic setEGLContextFactory(Lcom/mediatek/ngin3d/android/GLTextureView$EGLContextFactory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView;->setEGLContextFactory(Lcom/mediatek/ngin3d/android/GLTextureView$EGLContextFactory;)V

    return-void
.end method

.method public bridge synthetic setEGLWindowSurfaceFactory(Lcom/mediatek/ngin3d/android/GLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView;->setEGLWindowSurfaceFactory(Lcom/mediatek/ngin3d/android/GLTextureView$EGLWindowSurfaceFactory;)V

    return-void
.end method

.method public bridge synthetic setRenderMode(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView;->setRenderMode(I)V

    return-void
.end method

.method public bridge synthetic setRenderer(Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView;->setRenderer(Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;)V

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView;->setVisibility(I)V

    return-void
.end method

.method public waitSurfaceReady()V
    .locals 3

    .prologue
    .line 352
    iget-object v2, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mSurfaceReadyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 353
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageTextureView;->isSurfaceReady()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 355
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mSurfaceReadyLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 360
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

    .line 361
    return-void
.end method
