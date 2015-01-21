.class public Lcom/itextpdf/text/pdf/draw/DottedLineSeparator;
.super Lcom/itextpdf/text/pdf/draw/LineSeparator;
.source "DottedLineSeparator.java"


# instance fields
.field protected gap:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/draw/LineSeparator;-><init>()V

    .line 57
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/itextpdf/text/pdf/draw/DottedLineSeparator;->gap:F

    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V
    .locals 4
    .parameter "canvas"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "y"

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 64
    iget v0, p0, Lcom/itextpdf/text/pdf/draw/DottedLineSeparator;->lineWidth:F

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 66
    const/4 v0, 0x0

    iget v1, p0, Lcom/itextpdf/text/pdf/draw/DottedLineSeparator;->gap:F

    iget v2, p0, Lcom/itextpdf/text/pdf/draw/DottedLineSeparator;->gap:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineDash(FFF)V

    .line 67
    invoke-virtual {p0, p1, p2, p4, p6}, Lcom/itextpdf/text/pdf/draw/DottedLineSeparator;->drawLine(Lcom/itextpdf/text/pdf/PdfContentByte;FFF)V

    .line 68
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 69
    return-void
.end method

.method public getGap()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/itextpdf/text/pdf/draw/DottedLineSeparator;->gap:F

    return v0
.end method

.method public setGap(F)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 84
    iput p1, p0, Lcom/itextpdf/text/pdf/draw/DottedLineSeparator;->gap:F

    .line 85
    return-void
.end method
