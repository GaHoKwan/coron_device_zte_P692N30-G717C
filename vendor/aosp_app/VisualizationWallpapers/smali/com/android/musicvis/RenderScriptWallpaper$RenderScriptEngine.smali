.class Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "RenderScriptWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicvis/RenderScriptWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderScriptEngine"
.end annotation


# instance fields
.field private mRenderer:Lcom/android/musicvis/RenderScriptScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRs:Landroid/renderscript/RenderScriptGL;

.field final synthetic this$0:Lcom/android/musicvis/RenderScriptWallpaper;


# direct methods
.method private constructor <init>(Lcom/android/musicvis/RenderScriptWallpaper;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iput-object p1, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/musicvis/RenderScriptWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/musicvis/RenderScriptWallpaper;Lcom/android/musicvis/RenderScriptWallpaper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-direct {p0, p1}, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;-><init>(Lcom/android/musicvis/RenderScriptWallpaper;)V

    return-void
.end method

.method private destroyRenderer()V
    .locals 3

    .prologue
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/musicvis/RenderScriptScene;->stop()V

    .line 57
    iput-object v1, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v1, v2, v2}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 62
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 63
    iput-object v1, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "surfaceHolder"

    .prologue
    .line 43
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
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
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 51
    invoke-direct {p0}, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

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
    .line 102
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/android/musicvis/RenderScriptScene;->setOffset(FFII)V

    .line 103
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 81
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 82
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/musicvis/RenderScriptWallpaper;

    invoke-virtual {v0, p3, p4}, Lcom/android/musicvis/RenderScriptWallpaper;->createScene(II)Lcom/android/musicvis/RenderScriptScene;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    .line 87
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    iget-object v1, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/musicvis/RenderScriptWallpaper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/musicvis/RenderScriptScene;->init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;Z)V

    .line 88
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/musicvis/RenderScriptScene;->start()V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    invoke-virtual {v0, p3, p4}, Lcom/android/musicvis/RenderScriptScene;->resize(II)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 107
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 109
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 110
    .local v0, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    new-instance v1, Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/musicvis/RenderScriptWallpaper;

    invoke-direct {v1, v2, v0}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v1, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 111
    iget-object v1, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->setPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 112
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 116
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 117
    invoke-direct {p0}, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 118
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 69
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    if-eqz v0, :cond_0

    .line 71
    if-eqz p1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/musicvis/RenderScriptScene;->start()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/musicvis/RenderScriptScene;->stop()V

    goto :goto_0
.end method
