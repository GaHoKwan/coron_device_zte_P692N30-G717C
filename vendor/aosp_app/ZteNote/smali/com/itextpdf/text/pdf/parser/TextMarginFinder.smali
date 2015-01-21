.class public Lcom/itextpdf/text/pdf/parser/TextMarginFinder;
.super Ljava/lang/Object;
.source "TextMarginFinder.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/parser/RenderListener;


# instance fields
.field private textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextMarginFinder;->textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    return-void
.end method


# virtual methods
.method public beginTextBlock()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public endTextBlock()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextMarginFinder;->textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    iget v0, v0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->height:F

    return v0
.end method

.method public getLlx()F
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextMarginFinder;->textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    iget v0, v0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->x:F

    return v0
.end method

.method public getLly()F
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextMarginFinder;->textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    iget v0, v0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->y:F

    return v0
.end method

.method public getUrx()F
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextMarginFinder;->textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    iget v0, v0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->x:F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/TextMarginFinder;->textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    iget v1, v1, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getUry()F
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextMarginFinder;->textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    iget v0, v0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->y:F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/TextMarginFinder;->textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    iget v1, v1, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextMarginFinder;->textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    iget v0, v0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->width:F

    return v0
.end method

.method public renderImage(Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;)V
    .locals 0
    .parameter "renderInfo"

    .prologue
    .line 138
    return-void
.end method

.method public renderText(Lcom/itextpdf/text/pdf/parser/TextRenderInfo;)V
    .locals 2
    .parameter "renderInfo"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextMarginFinder;->textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getDescentLine()Lcom/itextpdf/text/pdf/parser/LineSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getBoundingRectange()Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextMarginFinder;->textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextMarginFinder;->textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getAscentLine()Lcom/itextpdf/text/pdf/parser/LineSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getBoundingRectange()Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->add(Lcom/itextpdf/awt/geom/Rectangle2D;)V

    .line 69
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextMarginFinder;->textRectangle:Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getDescentLine()Lcom/itextpdf/text/pdf/parser/LineSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getBoundingRectange()Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->add(Lcom/itextpdf/awt/geom/Rectangle2D;)V

    goto :goto_0
.end method
