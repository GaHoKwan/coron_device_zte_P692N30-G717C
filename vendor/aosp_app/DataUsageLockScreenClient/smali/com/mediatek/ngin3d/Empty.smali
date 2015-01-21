.class public Lcom/mediatek/ngin3d/Empty;
.super Lcom/mediatek/ngin3d/Actor;
.source "Empty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Actor;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1
    .parameter "engine"

    .prologue
    .line 51
    invoke-interface {p1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->createEmpty()Lcom/mediatek/ngin3d/presentation/Presentation;

    move-result-object v0

    return-object v0
.end method
