.class public Lcom/android/galaxy4/GalaxyView;
.super Landroid/renderscript/RSSurfaceView;
.source "GalaxyView.java"


# instance fields
.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mRender:Lcom/android/galaxy4/GalaxyRS;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, p1}, Landroid/renderscript/RSSurfaceView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/android/galaxy4/GalaxyView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/galaxy4/GalaxyView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v2, v1, v1}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 48
    iput-object v2, p0, Lcom/android/galaxy4/GalaxyView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 49
    invoke-virtual {p0}, Landroid/renderscript/RSSurfaceView;->destroyRenderScriptGL()V

    .line 51
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/renderscript/RSSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 27
    iget-object v0, p0, Lcom/android/galaxy4/GalaxyView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-nez v0, :cond_0

    .line 28
    new-instance v7, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v7}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 29
    .local v7, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    invoke-virtual {p0, v7}, Landroid/renderscript/RSSurfaceView;->createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/galaxy4/GalaxyView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 30
    iget-object v0, p0, Lcom/android/galaxy4/GalaxyView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 32
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 33
    .local v6, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    new-instance v0, Lcom/android/galaxy4/GalaxyRS;

    invoke-direct {v0}, Lcom/android/galaxy4/GalaxyRS;-><init>()V

    iput-object v0, p0, Lcom/android/galaxy4/GalaxyView;->mRender:Lcom/android/galaxy4/GalaxyRS;

    .line 38
    iget-object v0, p0, Lcom/android/galaxy4/GalaxyView;->mRender:Lcom/android/galaxy4/GalaxyRS;

    iget v1, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v2, p0, Lcom/android/galaxy4/GalaxyView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/galaxy4/GalaxyRS;->init(ILandroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;II)V

    .line 42
    .end local v6           #metrics:Landroid/util/DisplayMetrics;
    .end local v7           #sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/galaxy4/GalaxyView;->mRender:Lcom/android/galaxy4/GalaxyRS;

    invoke-virtual {v0}, Lcom/android/galaxy4/GalaxyRS;->createProgramVertex()V

    goto :goto_0
.end method
