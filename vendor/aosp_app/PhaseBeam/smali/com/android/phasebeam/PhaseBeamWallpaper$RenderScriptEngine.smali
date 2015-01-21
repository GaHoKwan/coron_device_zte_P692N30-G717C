.class Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "PhaseBeamWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phasebeam/PhaseBeamWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderScriptEngine"
.end annotation


# instance fields
.field private mDensityDPI:I

.field private mRenderScript:Landroid/renderscript/RenderScriptGL;

.field private mWallpaperRS:Lcom/android/phasebeam/PhaseBeamRS;

.field final synthetic this$0:Lcom/android/phasebeam/PhaseBeamWallpaper;


# direct methods
.method private constructor <init>(Lcom/android/phasebeam/PhaseBeamWallpaper;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 20
    iput-object p1, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->this$0:Lcom/android/phasebeam/PhaseBeamWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 21
    iput-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 22
    iput-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/phasebeam/PhaseBeamRS;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phasebeam/PhaseBeamWallpaper;Lcom/android/phasebeam/PhaseBeamWallpaper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;-><init>(Lcom/android/phasebeam/PhaseBeamWallpaper;)V

    return-void
.end method


# virtual methods
.method public destroyRenderer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/phasebeam/PhaseBeamRS;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/phasebeam/PhaseBeamRS;

    invoke-virtual {v0}, Lcom/android/phasebeam/PhaseBeamRS;->stop()V

    .line 47
    iput-object v1, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/phasebeam/PhaseBeamRS;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v1, v2, v2}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 52
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 53
    iput-object v1, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 55
    :cond_1
    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolder"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 28
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->setTouchEventsEnabled(Z)V

    .line 29
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 30
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 32
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 33
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->this$0:Lcom/android/phasebeam/PhaseBeamWallpaper;

    invoke-virtual {v1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 35
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mDensityDPI:I

    .line 36
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 41
    invoke-virtual {p0}, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 42
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixelOffset"
    .parameter "yPixelOffset"

    .prologue
    .line 113
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "surfaceHolder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 77
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/phasebeam/PhaseBeamRS;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Lcom/android/phasebeam/PhaseBeamRS;

    invoke-direct {v0}, Lcom/android/phasebeam/PhaseBeamRS;-><init>()V

    iput-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/phasebeam/PhaseBeamRS;

    .line 83
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/phasebeam/PhaseBeamRS;

    iget v1, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mDensityDPI:I

    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->this$0:Lcom/android/phasebeam/PhaseBeamWallpaper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/phasebeam/PhaseBeamRS;->init(ILandroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;II)V

    .line 84
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/phasebeam/PhaseBeamRS;

    invoke-virtual {v0}, Lcom/android/phasebeam/PhaseBeamRS;->start()V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/phasebeam/PhaseBeamRS;

    invoke-virtual {v0, p3, p4}, Lcom/android/phasebeam/PhaseBeamRS;->resize(II)V

    .line 88
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolder"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 61
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 62
    .local v0, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    new-instance v1, Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->this$0:Lcom/android/phasebeam/PhaseBeamWallpaper;

    invoke-direct {v1, v2, v0}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v1, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 63
    iget-object v1, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Landroid/renderscript/RenderScript$Priority;->NORMAL:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->setPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 64
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 70
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/phasebeam/PhaseBeamRS;

    if-eqz v0, :cond_0

    .line 100
    if-eqz p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/phasebeam/PhaseBeamRS;

    invoke-virtual {v0}, Lcom/android/phasebeam/PhaseBeamRS;->start()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/phasebeam/PhaseBeamRS;

    invoke-virtual {v0}, Lcom/android/phasebeam/PhaseBeamRS;->stop()V

    goto :goto_0
.end method
