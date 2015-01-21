.class Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "RenderScriptWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/magicsmoke/RenderScriptWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderScriptEngine"
.end annotation


# instance fields
.field private mRenderer:Lcom/android/magicsmoke/RenderScriptScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRs:Landroid/renderscript/RenderScriptGL;

.field final synthetic this$0:Lcom/android/magicsmoke/RenderScriptWallpaper;


# direct methods
.method private constructor <init>(Lcom/android/magicsmoke/RenderScriptWallpaper;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    .local p0, this:Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/magicsmoke/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iput-object p1, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/magicsmoke/RenderScriptWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/magicsmoke/RenderScriptWallpaper;Lcom/android/magicsmoke/RenderScriptWallpaper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    .local p0, this:Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/magicsmoke/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-direct {p0, p1}, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;-><init>(Lcom/android/magicsmoke/RenderScriptWallpaper;)V

    return-void
.end method

.method private destroyRenderer()V
    .locals 4

    .prologue
    .local p0, this:Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/magicsmoke/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/RenderScriptScene;->stop(Z)V

    .line 58
    iput-object v2, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v2, v3, v3}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 63
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 64
    iput-object v2, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 66
    :cond_1
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 7
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 120
    .local p0, this:Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/magicsmoke/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/magicsmoke/RenderScriptScene;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "surfaceHolder"

    .prologue
    .line 43
    .local p0, this:Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/magicsmoke/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setTouchEventsEnabled(Z)V

    .line 45
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 46
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 51
    .local p0, this:Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/magicsmoke/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 52
    invoke-direct {p0}, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 53
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 7
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 98
    .local p0, this:Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/magicsmoke/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/magicsmoke/RenderScriptScene;->setOffset(FFFFII)V

    .line 99
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 82
    .local p0, this:Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/magicsmoke/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 83
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/magicsmoke/RenderScriptWallpaper;

    invoke-virtual {v0, p3, p4}, Lcom/android/magicsmoke/RenderScriptWallpaper;->createScene(II)Lcom/android/magicsmoke/RenderScriptScene;

    move-result-object v0

    iput-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    .line 88
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    iget-object v1, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/magicsmoke/RenderScriptWallpaper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/magicsmoke/RenderScriptScene;->init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;Z)V

    .line 89
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/magicsmoke/RenderScriptScene;->start()V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    invoke-virtual {v0, p3, p4}, Lcom/android/magicsmoke/RenderScriptScene;->resize(II)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 103
    .local p0, this:Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/magicsmoke/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 105
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 106
    .local v0, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    new-instance v1, Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/magicsmoke/RenderScriptWallpaper;

    invoke-direct {v1, v2, v0}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v1, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 107
    iget-object v1, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->setPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 108
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 112
    .local p0, this:Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/magicsmoke/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 113
    invoke-direct {p0}, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 114
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 70
    .local p0, this:Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/magicsmoke/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    if-eqz v0, :cond_0

    .line 72
    if-eqz p1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/magicsmoke/RenderScriptScene;->start()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/magicsmoke/RenderScriptScene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/RenderScriptScene;->stop(Z)V

    goto :goto_0
.end method
