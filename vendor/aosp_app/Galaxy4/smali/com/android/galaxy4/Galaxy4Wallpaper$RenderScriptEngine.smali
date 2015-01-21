.class Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "Galaxy4Wallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/galaxy4/Galaxy4Wallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderScriptEngine"
.end annotation


# instance fields
.field private mDensityDPI:I

.field private mRenderScript:Landroid/renderscript/RenderScriptGL;

.field private mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

.field final synthetic this$0:Lcom/android/galaxy4/Galaxy4Wallpaper;


# direct methods
.method private constructor <init>(Lcom/android/galaxy4/Galaxy4Wallpaper;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->this$0:Lcom/android/galaxy4/Galaxy4Wallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 40
    iput-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 41
    iput-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/galaxy4/Galaxy4Wallpaper;Lcom/android/galaxy4/Galaxy4Wallpaper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;-><init>(Lcom/android/galaxy4/Galaxy4Wallpaper;)V

    return-void
.end method


# virtual methods
.method public destroyRenderer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

    invoke-virtual {v0}, Lcom/android/galaxy4/GalaxyRS;->stop()V

    .line 66
    iput-object v1, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v1, v2, v2}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 71
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 72
    iput-object v1, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 74
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
    .line 113
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

    if-eqz v0, :cond_0

    .line 116
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolder"

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 47
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->setTouchEventsEnabled(Z)V

    .line 48
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 49
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 51
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 52
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->this$0:Lcom/android/galaxy4/Galaxy4Wallpaper;

    invoke-virtual {v1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mDensityDPI:I

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 60
    invoke-virtual {p0}, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 61
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "surfaceHolder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 96
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/android/galaxy4/GalaxyRS;

    invoke-direct {v0}, Lcom/android/galaxy4/GalaxyRS;-><init>()V

    iput-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

    .line 102
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

    iget v1, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mDensityDPI:I

    iget-object v2, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->this$0:Lcom/android/galaxy4/Galaxy4Wallpaper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/galaxy4/GalaxyRS;->init(ILandroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;II)V

    .line 103
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

    invoke-virtual {v0}, Lcom/android/galaxy4/GalaxyRS;->start()V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

    invoke-virtual {v0, p3, p4}, Lcom/android/galaxy4/GalaxyRS;->resize(II)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolder"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 80
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 81
    .local v0, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    new-instance v1, Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->this$0:Lcom/android/galaxy4/Galaxy4Wallpaper;

    invoke-direct {v1, v2, v0}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v1, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 82
    iget-object v1, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->setPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 83
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 89
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

    if-eqz v0, :cond_0

    .line 123
    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

    invoke-virtual {v0}, Lcom/android/galaxy4/GalaxyRS;->start()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/galaxy4/GalaxyRS;

    invoke-virtual {v0}, Lcom/android/galaxy4/GalaxyRS;->stop()V

    goto :goto_0
.end method
