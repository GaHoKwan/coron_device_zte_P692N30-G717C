.class public Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/android/GLWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GLEngine"
.end annotation


# static fields
.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lcom/mediatek/ngin3d/android/EGLConfigChooser;

.field private mEGLContextFactory:Lcom/mediatek/ngin3d/android/EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/mediatek/ngin3d/android/EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

.field private mGLWrapper:Lcom/mediatek/ngin3d/android/GLWrapper;

.field final synthetic this$0:Lcom/mediatek/ngin3d/android/GLWallpaperService;


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/android/GLWallpaperService;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->this$0:Lcom/mediatek/ngin3d/android/GLWallpaperService;

    .line 93
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 94
    return-void
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 114
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLThread;->requestExitAndWait()V

    .line 115
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLThread;->onPause()V

    .line 251
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLThread;->onResume()V

    .line 255
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/mediatek/ngin3d/android/GLThread;->onWindowResize(II)V

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 121
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/android/GLThread;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 126
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 127
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 131
    const-string v0, "GLWallpaperService"

    const-string v1, "onSurfaceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLThread;->surfaceDestroyed()V

    .line 133
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 134
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->onResume()V

    .line 103
    :goto_0
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 104
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->onPause()V

    goto :goto_0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/android/GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLThread;->requestRender()V

    .line 247
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .parameter "debugFlags"

    .prologue
    .line 144
    iput p1, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mDebugFlags:I

    .line 145
    return-void
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
    .line 233
    new-instance v0, Lcom/mediatek/ngin3d/android/ComponentSizeChooser;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/ngin3d/android/ComponentSizeChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->setEGLConfigChooser(Lcom/mediatek/ngin3d/android/EGLConfigChooser;)V

    .line 235
    return-void
.end method

.method public setEGLConfigChooser(Lcom/mediatek/ngin3d/android/EGLConfigChooser;)V
    .locals 0
    .parameter "configChooser"

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->checkRenderThreadState()V

    .line 215
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mEGLConfigChooser:Lcom/mediatek/ngin3d/android/EGLConfigChooser;

    .line 216
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .parameter "needDepth"

    .prologue
    .line 210
    new-instance v0, Lcom/mediatek/ngin3d/android/SimpleEGLConfigChooser;

    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/android/SimpleEGLConfigChooser;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->setEGLConfigChooser(Lcom/mediatek/ngin3d/android/EGLConfigChooser;)V

    .line 211
    return-void
.end method

.method public setEGLContextFactory(Lcom/mediatek/ngin3d/android/EGLContextFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->checkRenderThreadState()V

    .line 192
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mEGLContextFactory:Lcom/mediatek/ngin3d/android/EGLContextFactory;

    .line 193
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/mediatek/ngin3d/android/EGLWindowSurfaceFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->checkRenderThreadState()V

    .line 177
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mEGLWindowSurfaceFactory:Lcom/mediatek/ngin3d/android/EGLWindowSurfaceFactory;

    .line 178
    return-void
.end method

.method public setGLWrapper(Lcom/mediatek/ngin3d/android/GLWrapper;)V
    .locals 0
    .parameter "glWrapper"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLWrapper:Lcom/mediatek/ngin3d/android/GLWrapper;

    .line 141
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter "renderMode"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/android/GLThread;->setRenderMode(I)V

    .line 239
    return-void
.end method

.method public setRenderer(Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;)V
    .locals 6
    .parameter "renderer"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->checkRenderThreadState()V

    .line 153
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mEGLConfigChooser:Lcom/mediatek/ngin3d/android/EGLConfigChooser;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/mediatek/ngin3d/android/SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/android/SimpleEGLConfigChooser;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mEGLConfigChooser:Lcom/mediatek/ngin3d/android/EGLConfigChooser;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mEGLContextFactory:Lcom/mediatek/ngin3d/android/EGLContextFactory;

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lcom/mediatek/ngin3d/android/DefaultContextFactory;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/android/DefaultContextFactory;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mEGLContextFactory:Lcom/mediatek/ngin3d/android/EGLContextFactory;

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mEGLWindowSurfaceFactory:Lcom/mediatek/ngin3d/android/EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 160
    new-instance v0, Lcom/mediatek/ngin3d/android/DefaultWindowSurfaceFactory;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/android/DefaultWindowSurfaceFactory;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mEGLWindowSurfaceFactory:Lcom/mediatek/ngin3d/android/EGLWindowSurfaceFactory;

    .line 162
    :cond_2
    new-instance v0, Lcom/mediatek/ngin3d/android/GLThread;

    iget-object v2, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mEGLConfigChooser:Lcom/mediatek/ngin3d/android/EGLConfigChooser;

    iget-object v3, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mEGLContextFactory:Lcom/mediatek/ngin3d/android/EGLContextFactory;

    iget-object v4, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mEGLWindowSurfaceFactory:Lcom/mediatek/ngin3d/android/EGLWindowSurfaceFactory;

    iget-object v5, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLWrapper:Lcom/mediatek/ngin3d/android/GLWrapper;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ngin3d/android/GLThread;-><init>(Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;Lcom/mediatek/ngin3d/android/EGLConfigChooser;Lcom/mediatek/ngin3d/android/EGLContextFactory;Lcom/mediatek/ngin3d/android/EGLWindowSurfaceFactory;Lcom/mediatek/ngin3d/android/GLWrapper;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

    .line 163
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->mGLThread:Lcom/mediatek/ngin3d/android/GLThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method
