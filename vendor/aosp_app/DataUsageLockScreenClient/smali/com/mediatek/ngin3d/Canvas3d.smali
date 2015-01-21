.class public Lcom/mediatek/ngin3d/Canvas3d;
.super Lcom/mediatek/ngin3d/Actor;
.source "Canvas3d.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/Graphics3d$Renderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Actor;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Graphics3d;
    .locals 1
    .parameter "engine"

    .prologue
    .line 68
    invoke-interface {p1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->createGraphics3d()Lcom/mediatek/ngin3d/presentation/Graphics3d;

    move-result-object v0

    .line 69
    .local v0, g3d:Lcom/mediatek/ngin3d/presentation/Graphics3d;
    invoke-interface {v0, p0}, Lcom/mediatek/ngin3d/presentation/Graphics3d;->setRenderer(Lcom/mediatek/ngin3d/presentation/Graphics3d$Renderer;)V

    .line 70
    return-object v0
.end method

.method protected bridge synthetic createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Canvas3d;->createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Graphics3d;

    move-result-object v0

    return-object v0
.end method

.method public onDrawFrame(Lcom/mediatek/ngin3d/presentation/Graphics3d;)V
    .locals 0
    .parameter "g3d"

    .prologue
    .line 58
    return-void
.end method
