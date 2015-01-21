.class public Lcom/mediatek/ngin3d/Canvas2d;
.super Lcom/mediatek/ngin3d/Plane;
.source "Canvas2d.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/Canvas2d$LastProperty;
    }
.end annotation


# static fields
.field static final PROP_DIRTY_RECT:Lcom/mediatek/ngin3d/Canvas2d$LastProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Canvas2d$LastProperty",
            "<",
            "Lcom/mediatek/ngin3d/Box;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/mediatek/ngin3d/Canvas2d$LastProperty;

    const-string v1, "dirty_rect"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/Canvas2d$LastProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/mediatek/ngin3d/Canvas2d;->PROP_DIRTY_RECT:Lcom/mediatek/ngin3d/Canvas2d$LastProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/Plane;-><init>(Z)V

    .line 53
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    .line 79
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "isYUp"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Plane;-><init>(Z)V

    .line 53
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    .line 87
    return-void
.end method


# virtual methods
.method protected applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 2
    .parameter "property"
    .parameter "value"

    .prologue
    .line 99
    sget-object v1, Lcom/mediatek/ngin3d/Canvas2d;->PROP_DIRTY_RECT:Lcom/mediatek/ngin3d/Canvas2d$LastProperty;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 100
    check-cast v0, Lcom/mediatek/ngin3d/Box;

    .line 101
    .local v0, rect:Lcom/mediatek/ngin3d/Box;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Canvas2d;->getPresentation()Lcom/mediatek/ngin3d/presentation/Graphics2d;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Canvas2d;->drawRect(Lcom/mediatek/ngin3d/Box;Lcom/mediatek/ngin3d/presentation/Graphics2d;)V

    .line 102
    const/4 v1, 0x1

    .line 105
    .end local v0           #rect:Lcom/mediatek/ngin3d/Box;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/Plane;->applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Graphics2d;
    .locals 1
    .parameter "engine"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/Plane;->mIsYUp:Z

    invoke-interface {p1, v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->createGraphics2d(Z)Lcom/mediatek/ngin3d/presentation/Graphics2d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/ImageDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Canvas2d;->createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Graphics2d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Canvas2d;->createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Graphics2d;

    move-result-object v0

    return-object v0
.end method

.method protected drawRect(Lcom/mediatek/ngin3d/Box;Lcom/mediatek/ngin3d/presentation/Graphics2d;)V
    .locals 0
    .parameter "rect"
    .parameter "g2d"

    .prologue
    .line 116
    return-void
.end method

.method public getDirtyRect()Lcom/mediatek/ngin3d/Box;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/mediatek/ngin3d/Canvas2d;->PROP_DIRTY_RECT:Lcom/mediatek/ngin3d/Canvas2d$LastProperty;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Box;

    return-object v0
.end method

.method public getPresentation()Lcom/mediatek/ngin3d/presentation/Graphics2d;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    check-cast v0, Lcom/mediatek/ngin3d/presentation/Graphics2d;

    return-object v0
.end method

.method public bridge synthetic getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Canvas2d;->getPresentation()Lcom/mediatek/ngin3d/presentation/Graphics2d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Canvas2d;->getPresentation()Lcom/mediatek/ngin3d/presentation/Graphics2d;

    move-result-object v0

    return-object v0
.end method

.method public setDirtyRect(Lcom/mediatek/ngin3d/Box;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 124
    sget-object v0, Lcom/mediatek/ngin3d/Canvas2d;->PROP_DIRTY_RECT:Lcom/mediatek/ngin3d/Canvas2d$LastProperty;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 125
    return-void
.end method
