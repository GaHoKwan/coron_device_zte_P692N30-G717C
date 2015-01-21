.class Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "RenderScriptWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/RenderScriptWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderScriptEngine"
.end annotation


# instance fields
.field private mRenderer:Lcom/android/wallpaper/RenderScriptScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRs:Landroid/renderscript/RenderScriptGL;

.field final synthetic this$0:Lcom/android/wallpaper/RenderScriptWallpaper;


# direct methods
.method private constructor <init>(Lcom/android/wallpaper/RenderScriptWallpaper;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iput-object p1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wallpaper/RenderScriptWallpaper;Lcom/android/wallpaper/RenderScriptWallpaper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-direct {p0, p1}, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;-><init>(Lcom/android/wallpaper/RenderScriptWallpaper;)V

    return-void
.end method

.method private destroyRenderer()V
    .locals 3

    .prologue
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/wallpaper/RenderScriptScene;->stop()V

    .line 57
    iput-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v1, v2, v2}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 61
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 62
    iput-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 64
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
    .line 125
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/wallpaper/RenderScriptScene;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 128
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
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setTouchEventsEnabled(Z)V

    .line 45
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 50
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 51
    invoke-direct {p0}, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 52
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 1
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 103
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/android/wallpaper/RenderScriptScene;->setOffset(FFII)V

    .line 104
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 80
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 81
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 85
    :cond_0
    if-eqz p3, :cond_1

    if-nez p4, :cond_2

    .line 86
    :cond_1
    const-string v0, "RenderScriptWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged holder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    if-nez v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    invoke-virtual {v0, p3, p4}, Lcom/android/wallpaper/RenderScriptWallpaper;->createScene(II)Lcom/android/wallpaper/RenderScriptScene;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    .line 93
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wallpaper/RenderScriptScene;->init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;Z)V

    .line 94
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/wallpaper/RenderScriptScene;->start()V

    goto :goto_0

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0, p3, p4}, Lcom/android/wallpaper/RenderScriptScene;->resize(II)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 108
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 110
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 111
    .local v0, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    new-instance v1, Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    invoke-direct {v1, v2, v0}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 112
    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->setPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 113
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 117
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 118
    invoke-direct {p0}, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 119
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 68
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    if-eqz v0, :cond_0

    .line 70
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/wallpaper/RenderScriptScene;->start()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/wallpaper/RenderScriptScene;->stop()V

    goto :goto_0
.end method
