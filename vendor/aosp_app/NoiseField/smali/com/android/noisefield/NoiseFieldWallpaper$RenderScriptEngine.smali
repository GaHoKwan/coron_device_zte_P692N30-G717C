.class Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "NoiseFieldWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/noisefield/NoiseFieldWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderScriptEngine"
.end annotation


# instance fields
.field private mDensityDPI:I

.field private mRenderScript:Landroid/renderscript/RenderScriptGL;

.field private mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

.field final synthetic this$0:Lcom/android/noisefield/NoiseFieldWallpaper;


# direct methods
.method private constructor <init>(Lcom/android/noisefield/NoiseFieldWallpaper;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object p1, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->this$0:Lcom/android/noisefield/NoiseFieldWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 24
    iput-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 25
    iput-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/noisefield/NoiseFieldWallpaper;Lcom/android/noisefield/NoiseFieldWallpaper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;-><init>(Lcom/android/noisefield/NoiseFieldWallpaper;)V

    return-void
.end method


# virtual methods
.method public destroyRenderer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    invoke-virtual {v0}, Lcom/android/noisefield/NoiseFieldRS;->stop()V

    .line 50
    iput-object v1, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v1, v2, v2}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 55
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 56
    iput-object v1, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 58
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolder"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->setTouchEventsEnabled(Z)V

    .line 32
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 33
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 35
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 36
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->this$0:Lcom/android/noisefield/NoiseFieldWallpaper;

    invoke-virtual {v1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 38
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mDensityDPI:I

    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 44
    invoke-virtual {p0}, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 45
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "surfaceHolder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 82
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/android/noisefield/NoiseFieldRS;

    invoke-direct {v0}, Lcom/android/noisefield/NoiseFieldRS;-><init>()V

    iput-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    .line 88
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    iget v1, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mDensityDPI:I

    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->this$0:Lcom/android/noisefield/NoiseFieldWallpaper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/noisefield/NoiseFieldRS;->init(ILandroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;II)V

    .line 89
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    invoke-virtual {v0}, Lcom/android/noisefield/NoiseFieldRS;->start()V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    invoke-virtual {v0, p3, p4}, Lcom/android/noisefield/NoiseFieldRS;->resize(II)V

    .line 93
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolder"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 64
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 65
    .local v0, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    new-instance v1, Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->this$0:Lcom/android/noisefield/NoiseFieldWallpaper;

    invoke-direct {v1, v2, v0}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v1, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 66
    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->setPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 67
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 73
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 98
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    invoke-virtual {v0, p1}, Lcom/android/noisefield/NoiseFieldRS;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    if-eqz v0, :cond_0

    .line 107
    if-eqz p1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    invoke-virtual {v0}, Lcom/android/noisefield/NoiseFieldRS;->start()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/noisefield/NoiseFieldRS;

    invoke-virtual {v0}, Lcom/android/noisefield/NoiseFieldRS;->stop()V

    goto :goto_0
.end method
