.class Lcom/mediatek/ngin3d/android/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/android/GLTextureView$1;,
        Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;,
        Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;,
        Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;,
        Lcom/mediatek/ngin3d/android/GLTextureView$DefaultWindowSurfaceFactory;,
        Lcom/mediatek/ngin3d/android/GLTextureView$EGLWindowSurfaceFactory;,
        Lcom/mediatek/ngin3d/android/GLTextureView$DefaultContextFactory;,
        Lcom/mediatek/ngin3d/android/GLTextureView$EGLContextFactory;,
        Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;,
        Lcom/mediatek/ngin3d/android/GLTextureView$GLWrapper;
    }
.end annotation


# static fields
.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field private static final GL_THREAD_MANAGER:Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager; = null

.field private static final LOG_ATTACH_DETACH:Z = true

.field private static final LOG_EGL:Z = true

.field private static final LOG_PAUSE_RESUME:Z = true

.field private static final LOG_RENDERER:Z = true

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = true

.field private static final LOG_TEXTURE_UPDATE_FRAME:Z = false

.field private static final LOG_TEXTURE_VIEW:Z = true

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLTextureView"


# instance fields
.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/mediatek/ngin3d/android/EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/mediatek/ngin3d/android/GLTextureView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/mediatek/ngin3d/android/GLTextureView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

.field protected mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

.field private mRenderer:Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;

.field protected mShowFPS:Z

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1359
    new-instance v0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;-><init>(Lcom/mediatek/ngin3d/android/GLTextureView$1;)V

    sput-object v0, Lcom/mediatek/ngin3d/android/GLTextureView;->GL_THREAD_MANAGER:Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/android/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mSizeChanged:Z

    .line 100
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 101
    const-string v0, "ngin3d.showfps"

    invoke-static {}, Lcom/mediatek/ngin3d/Ngin3d;->showFPS()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mShowFPS:Z

    .line 102
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ngin3d/android/GLTextureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/ngin3d/android/GLTextureView;)Lcom/mediatek/ngin3d/android/EGLConfigChooser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLConfigChooser:Lcom/mediatek/ngin3d/android/EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ngin3d/android/GLTextureView;)Lcom/mediatek/ngin3d/android/GLTextureView$EGLContextFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLContextFactory:Lcom/mediatek/ngin3d/android/GLTextureView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ngin3d/android/GLTextureView;)Lcom/mediatek/ngin3d/android/GLTextureView$EGLWindowSurfaceFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/mediatek/ngin3d/android/GLTextureView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/mediatek/ngin3d/android/GLTextureView;->GL_THREAD_MANAGER:Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ngin3d/android/GLTextureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/ngin3d/android/GLTextureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mSizeChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/ngin3d/android/GLTextureView;)Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    return-object v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 1257
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1260
    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderMode()I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 108
    const-string v1, "GLTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttachedToWindow reattach ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mDetached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mDetached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mRenderer:Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;

    if-eqz v1, :cond_2

    .line 113
    const/4 v0, 0x1

    .line 114
    .local v0, renderMode:I
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    .line 117
    :cond_0
    new-instance v1, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    iget-object v2, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mRenderer:Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;-><init>(Lcom/mediatek/ngin3d/android/GLTextureView;Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;)V

    iput-object v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    .line 118
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v1, v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->setRenderMode(I)V

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 124
    .end local v0           #renderMode:I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mDetached:Z

    .line 125
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "GLTextureView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->requestExitAndWait()V

    .line 136
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mDetached:Z

    .line 137
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 138
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "GLTextureView"

    const-string v1, "onPause from activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->onPause()V

    .line 219
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 230
    const-string v0, "GLTextureView"

    const-string v1, "onResume from activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->onResume()V

    .line 233
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 143
    const-string v0, "GLTextureView"

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

    .line 144
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->onWindowResize(II)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->setSurfaceTextureReady()V

    .line 146
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->requestRender()V

    .line 147
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 175
    const-string v0, "GLTextureView"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->surfaceCreated(Landroid/graphics/SurfaceTexture;II)V

    .line 179
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->onResume()V

    .line 181
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .parameter "surface"

    .prologue
    .line 191
    const-string v0, "GLTextureView"

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->onPause()V

    .line 196
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->surfaceDestroyed()V

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 185
    const-string v0, "GLTextureView"

    const-string v1, "onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surface"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->setSurfaceTextureReady()V

    .line 206
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 159
    if-nez p2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->requestRender()V

    .line 162
    :cond_0
    const-string v0, "GLTextureView"

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

    .line 163
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->requestRender()V

    .line 394
    return-void
.end method

.method public runInGLThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 166
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    if-ne v0, v1, :cond_0

    .line 167
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 7
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    .line 341
    new-instance v0, Lcom/mediatek/ngin3d/android/ComponentSizeChooser;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/ngin3d/android/ComponentSizeChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/android/GLTextureView;->setEGLConfigChooser(Lcom/mediatek/ngin3d/android/EGLConfigChooser;)V

    .line 343
    return-void
.end method

.method public setEGLConfigChooser(Lcom/mediatek/ngin3d/android/EGLConfigChooser;)V
    .locals 0
    .parameter "configChooser"

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView;->checkRenderThreadState()V

    .line 305
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLConfigChooser:Lcom/mediatek/ngin3d/android/EGLConfigChooser;

    .line 306
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .parameter "needDepth"

    .prologue
    .line 323
    new-instance v0, Lcom/mediatek/ngin3d/android/SimpleEGLConfigChooser;

    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/android/SimpleEGLConfigChooser;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/android/GLTextureView;->setEGLConfigChooser(Lcom/mediatek/ngin3d/android/EGLConfigChooser;)V

    .line 324
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView;->checkRenderThreadState()V

    .line 352
    iput p1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLContextClientVersion:I

    .line 353
    return-void
.end method

.method public setEGLContextFactory(Lcom/mediatek/ngin3d/android/GLTextureView$EGLContextFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView;->checkRenderThreadState()V

    .line 274
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLContextFactory:Lcom/mediatek/ngin3d/android/GLTextureView$EGLContextFactory;

    .line 275
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/mediatek/ngin3d/android/GLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView;->checkRenderThreadState()V

    .line 288
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/mediatek/ngin3d/android/GLTextureView$EGLWindowSurfaceFactory;

    .line 289
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter "renderMode"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->setRenderMode(I)V

    .line 372
    return-void
.end method

.method public setRenderer(Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView;->checkRenderThreadState()V

    .line 247
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLConfigChooser:Lcom/mediatek/ngin3d/android/EGLConfigChooser;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/mediatek/ngin3d/android/SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/android/SimpleEGLConfigChooser;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLConfigChooser:Lcom/mediatek/ngin3d/android/EGLConfigChooser;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLContextFactory:Lcom/mediatek/ngin3d/android/GLTextureView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 251
    new-instance v0, Lcom/mediatek/ngin3d/android/GLTextureView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/ngin3d/android/GLTextureView$DefaultContextFactory;-><init>(Lcom/mediatek/ngin3d/android/GLTextureView;Lcom/mediatek/ngin3d/android/GLTextureView$1;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLContextFactory:Lcom/mediatek/ngin3d/android/GLTextureView$EGLContextFactory;

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/mediatek/ngin3d/android/GLTextureView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 254
    new-instance v0, Lcom/mediatek/ngin3d/android/GLTextureView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/mediatek/ngin3d/android/GLTextureView$DefaultWindowSurfaceFactory;-><init>(Lcom/mediatek/ngin3d/android/GLTextureView$1;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/mediatek/ngin3d/android/GLTextureView$EGLWindowSurfaceFactory;

    .line 257
    :cond_2
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mRenderer:Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;

    .line 258
    new-instance v0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;-><init>(Lcom/mediatek/ngin3d/android/GLTextureView;Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    .line 259
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 260
    return-void
.end method

.method protected setSurfaceTextureReady()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->setSurfaceTextureReady()V

    .line 399
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    const-string v0, "GLTextureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility, visibility is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method
