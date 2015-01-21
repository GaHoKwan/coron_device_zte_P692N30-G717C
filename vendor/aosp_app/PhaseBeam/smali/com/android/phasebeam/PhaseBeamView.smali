.class public Lcom/android/phasebeam/PhaseBeamView;
.super Landroid/renderscript/RSSurfaceView;
.source "PhaseBeamView.java"


# instance fields
.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mRender:Lcom/android/phasebeam/PhaseBeamRS;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, p1}, Landroid/renderscript/RSSurfaceView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v2, v1, v1}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 37
    iput-object v2, p0, Lcom/android/phasebeam/PhaseBeamView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 38
    invoke-virtual {p0}, Landroid/renderscript/RSSurfaceView;->destroyRenderScriptGL()V

    .line 40
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Landroid/renderscript/RSSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 22
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-nez v0, :cond_0

    .line 23
    new-instance v6, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v6}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 24
    .local v6, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    invoke-virtual {p0, v6}, Landroid/renderscript/RSSurfaceView;->createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phasebeam/PhaseBeamView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 25
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 27
    new-instance v0, Lcom/android/phasebeam/PhaseBeamRS;

    invoke-direct {v0}, Lcom/android/phasebeam/PhaseBeamRS;-><init>()V

    iput-object v0, p0, Lcom/android/phasebeam/PhaseBeamView;->mRender:Lcom/android/phasebeam/PhaseBeamRS;

    .line 28
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamView;->mRender:Lcom/android/phasebeam/PhaseBeamRS;

    const/16 v1, 0xf0

    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/phasebeam/PhaseBeamRS;->init(ILandroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;II)V

    .line 31
    .end local v6           #sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    :cond_0
    return-void
.end method
