.class public Lcom/mediatek/ngin3d/j3m/Canvas3dPresentation;
.super Lcom/mediatek/ngin3d/j3m/ActorPresentation;
.source "Canvas3dPresentation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/Graphics3d;


# instance fields
.field private mRenderer:Lcom/mediatek/ngin3d/presentation/Graphics3d$Renderer;


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V
    .locals 0
    .parameter "engine"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onDrawFrame()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas3dPresentation;->mRenderer:Lcom/mediatek/ngin3d/presentation/Graphics3d$Renderer;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas3dPresentation;->mRenderer:Lcom/mediatek/ngin3d/presentation/Graphics3d$Renderer;

    invoke-interface {v0, p0}, Lcom/mediatek/ngin3d/presentation/Graphics3d$Renderer;->onDrawFrame(Lcom/mediatek/ngin3d/presentation/Graphics3d;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onUninitialize()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas3dPresentation;->mRenderer:Lcom/mediatek/ngin3d/presentation/Graphics3d$Renderer;

    .line 64
    invoke-super {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->onUninitialize()V

    .line 65
    return-void
.end method

.method public render(I)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 73
    return-void
.end method

.method public setRenderer(Lcom/mediatek/ngin3d/presentation/Graphics3d$Renderer;)V
    .locals 0
    .parameter "renderer"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/Canvas3dPresentation;->mRenderer:Lcom/mediatek/ngin3d/presentation/Graphics3d$Renderer;

    .line 69
    return-void
.end method
