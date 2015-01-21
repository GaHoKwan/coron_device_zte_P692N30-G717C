.class public Lcom/itextpdf/text/pdf/draw/LineSeparator;
.super Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;
.source "LineSeparator.java"


# instance fields
.field protected alignment:I

.field protected lineColor:Lcom/itextpdf/text/BaseColor;

.field protected lineWidth:F

.field protected percentage:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;-><init>()V

    .line 61
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->lineWidth:F

    .line 63
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->percentage:F

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->alignment:I

    .line 90
    return-void
.end method

.method public constructor <init>(FFLcom/itextpdf/text/BaseColor;IF)V
    .locals 1
    .parameter "lineWidth"
    .parameter "percentage"
    .parameter "lineColor"
    .parameter "align"
    .parameter "offset"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;-><init>()V

    .line 61
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->lineWidth:F

    .line 63
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->percentage:F

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->alignment:I

    .line 78
    iput p1, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->lineWidth:F

    .line 79
    iput p2, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->percentage:F

    .line 80
    iput-object p3, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->lineColor:Lcom/itextpdf/text/BaseColor;

    .line 81
    iput p4, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->alignment:I

    .line 82
    iput p5, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->offset:F

    .line 83
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V
    .locals 0
    .parameter "canvas"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "y"

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 97
    invoke-virtual {p0, p1, p2, p4, p6}, Lcom/itextpdf/text/pdf/draw/LineSeparator;->drawLine(Lcom/itextpdf/text/pdf/PdfContentByte;FFF)V

    .line 98
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 99
    return-void
.end method

.method public drawLine(Lcom/itextpdf/text/pdf/PdfContentByte;FFF)V
    .locals 4
    .parameter "canvas"
    .parameter "leftX"
    .parameter "rightX"
    .parameter "y"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/draw/LineSeparator;->getPercentage()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/draw/LineSeparator;->getPercentage()F

    move-result v2

    neg-float v1, v2

    .line 115
    .local v1, w:F
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/draw/LineSeparator;->getAlignment()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 123
    :pswitch_0
    sub-float v2, p3, p2

    sub-float/2addr v2, v1

    const/high16 v3, 0x4000

    div-float v0, v2, v3

    .line 126
    .local v0, s:F
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/draw/LineSeparator;->getLineWidth()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 127
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/draw/LineSeparator;->getLineColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/draw/LineSeparator;->getLineColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 129
    :cond_0
    add-float v2, v0, p2

    iget v3, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->offset:F

    add-float/2addr v3, p4

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 130
    add-float v2, v0, v1

    add-float/2addr v2, p2

    iget v3, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->offset:F

    add-float/2addr v3, p4

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 131
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 132
    return-void

    .line 113
    .end local v0           #s:F
    .end local v1           #w:F
    :cond_1
    sub-float v2, p3, p2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/draw/LineSeparator;->getPercentage()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v1, v2, v3

    .restart local v1       #w:F
    goto :goto_0

    .line 117
    :pswitch_1
    const/4 v0, 0x0

    .line 118
    .restart local v0       #s:F
    goto :goto_1

    .line 120
    .end local v0           #s:F
    :pswitch_2
    sub-float v2, p3, p2

    sub-float v0, v2, v1

    .line 121
    .restart local v0       #s:F
    goto :goto_1

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getAlignment()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->alignment:I

    return v0
.end method

.method public getLineColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->lineColor:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->lineWidth:F

    return v0
.end method

.method public getPercentage()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->percentage:F

    return v0
.end method

.method public setAlignment(I)V
    .locals 0
    .parameter "align"

    .prologue
    .line 195
    iput p1, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->alignment:I

    .line 196
    return-void
.end method

.method public setLineColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->lineColor:Lcom/itextpdf/text/BaseColor;

    .line 180
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .parameter "lineWidth"

    .prologue
    .line 147
    iput p1, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->lineWidth:F

    .line 148
    return-void
.end method

.method public setPercentage(F)V
    .locals 0
    .parameter "percentage"

    .prologue
    .line 163
    iput p1, p0, Lcom/itextpdf/text/pdf/draw/LineSeparator;->percentage:F

    .line 164
    return-void
.end method
