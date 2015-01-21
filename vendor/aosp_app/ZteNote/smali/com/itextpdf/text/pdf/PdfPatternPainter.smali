.class public final Lcom/itextpdf/text/pdf/PdfPatternPainter;
.super Lcom/itextpdf/text/pdf/PdfTemplate;
.source "PdfPatternPainter.java"


# instance fields
.field defaultColor:Lcom/itextpdf/text/BaseColor;

.field stencil:Z

.field xstep:F

.field ystep:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->stencil:Z

    .line 69
    const/4 v0, 0x3

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->type:I

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "wr"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->stencil:Z

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->type:I

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/BaseColor;)V
    .locals 1
    .parameter "wr"
    .parameter "defaultColor"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->stencil:Z

    .line 86
    if-nez p2, :cond_0

    .line 87
    sget-object v0, Lcom/itextpdf/text/BaseColor;->GRAY:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->defaultColor:Lcom/itextpdf/text/BaseColor;

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->defaultColor:Lcom/itextpdf/text/BaseColor;

    goto :goto_0
.end method


# virtual methods
.method public addImage(Lcom/itextpdf/text/Image;FFFFFF)V
    .locals 1
    .parameter "image"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->stencil:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->isMask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 297
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/itextpdf/text/pdf/PdfTemplate;->addImage(Lcom/itextpdf/text/Image;FFFFFF)V

    .line 298
    return-void
.end method

.method checkNoColor()V
    .locals 3

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->stencil:Z

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "colors.are.not.allowed.in.uncolored.tile.patterns"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    return-void
.end method

.method public getDefaultColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->defaultColor:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 3

    .prologue
    .line 173
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;-><init>()V

    .line 174
    .local v0, tpl:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 175
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    .line 176
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 177
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 178
    new-instance v1, Lcom/itextpdf/text/Rectangle;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->bBox:Lcom/itextpdf/text/Rectangle;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->bBox:Lcom/itextpdf/text/Rectangle;

    .line 179
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->xstep:F

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->xstep:F

    .line 180
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->ystep:F

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->ystep:F

    .line 181
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    .line 182
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->stencil:Z

    iput-boolean v1, v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->stencil:Z

    .line 183
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->defaultColor:Lcom/itextpdf/text/BaseColor;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->defaultColor:Lcom/itextpdf/text/BaseColor;

    .line 184
    return-object v0
.end method

.method getPattern()Lcom/itextpdf/text/pdf/PdfPattern;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPattern;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfPattern;-><init>(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V

    return-object v0
.end method

.method getPattern(I)Lcom/itextpdf/text/pdf/PdfPattern;
    .locals 1
    .parameter "compressionLevel"

    .prologue
    .line 163
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPattern;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfPattern;-><init>(Lcom/itextpdf/text/pdf/PdfPatternPainter;I)V

    return-object v0
.end method

.method public getXStep()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->xstep:F

    return v0
.end method

.method public getYStep()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->ystep:F

    return v0
.end method

.method public isStencil()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->stencil:Z

    return v0
.end method

.method public resetCMYKColorFill()V
    .locals 0

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 272
    invoke-super {p0}, Lcom/itextpdf/text/pdf/PdfTemplate;->resetCMYKColorFill()V

    .line 273
    return-void
.end method

.method public resetCMYKColorStroke()V
    .locals 0

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 288
    invoke-super {p0}, Lcom/itextpdf/text/pdf/PdfTemplate;->resetCMYKColorStroke()V

    .line 289
    return-void
.end method

.method public resetGrayFill()V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 208
    invoke-super {p0}, Lcom/itextpdf/text/pdf/PdfTemplate;->resetGrayFill()V

    .line 209
    return-void
.end method

.method public resetGrayStroke()V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 224
    invoke-super {p0}, Lcom/itextpdf/text/pdf/PdfTemplate;->resetGrayStroke()V

    .line 225
    return-void
.end method

.method public resetRGBColorFill()V
    .locals 0

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 240
    invoke-super {p0}, Lcom/itextpdf/text/pdf/PdfTemplate;->resetRGBColorFill()V

    .line 241
    return-void
.end method

.method public resetRGBColorStroke()V
    .locals 0

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 256
    invoke-super {p0}, Lcom/itextpdf/text/pdf/PdfTemplate;->resetRGBColorStroke()V

    .line 257
    return-void
.end method

.method public setCMYKColorFill(IIII)V
    .locals 0
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setCMYKColorFill(IIII)V

    .line 306
    return-void
.end method

.method public setCMYKColorFillF(FFFF)V
    .locals 0
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setCMYKColorFillF(FFFF)V

    .line 265
    return-void
.end method

.method public setCMYKColorStroke(IIII)V
    .locals 0
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 313
    invoke-super {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setCMYKColorStroke(IIII)V

    .line 314
    return-void
.end method

.method public setCMYKColorStrokeF(FFFF)V
    .locals 0
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setCMYKColorStrokeF(FFFF)V

    .line 281
    return-void
.end method

.method public setColorFill(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 345
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 346
    return-void
.end method

.method public setColorFill(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V
    .locals 0
    .parameter "sp"
    .parameter "tint"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 353
    invoke-super {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfTemplate;->setColorFill(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V

    .line 354
    return-void
.end method

.method public setColorStroke(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 337
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 338
    return-void
.end method

.method public setColorStroke(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V
    .locals 0
    .parameter "sp"
    .parameter "tint"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 361
    invoke-super {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfTemplate;->setColorStroke(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V

    .line 362
    return-void
.end method

.method public setGrayFill(F)V
    .locals 0
    .parameter "gray"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 200
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setGrayFill(F)V

    .line 201
    return-void
.end method

.method public setGrayStroke(F)V
    .locals 0
    .parameter "gray"

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 216
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setGrayStroke(F)V

    .line 217
    return-void
.end method

.method public setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 369
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V

    .line 370
    return-void
.end method

.method public setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V
    .locals 0
    .parameter "p"
    .parameter "color"
    .parameter "tint"

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 377
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfTemplate;->setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V

    .line 378
    return-void
.end method

.method public setPatternMatrix(FFFFFF)V
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    .line 146
    invoke-virtual/range {p0 .. p6}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setMatrix(FFFFFF)V

    .line 147
    return-void
.end method

.method public setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 393
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V

    .line 394
    return-void
.end method

.method public setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V
    .locals 0
    .parameter "p"
    .parameter "color"
    .parameter "tint"

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 385
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfTemplate;->setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V

    .line 386
    return-void
.end method

.method public setRGBColorFill(III)V
    .locals 0
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 321
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfTemplate;->setRGBColorFill(III)V

    .line 322
    return-void
.end method

.method public setRGBColorFillF(FFF)V
    .locals 0
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 232
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfTemplate;->setRGBColorFillF(FFF)V

    .line 233
    return-void
.end method

.method public setRGBColorStroke(III)V
    .locals 0
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 329
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfTemplate;->setRGBColorStroke(III)V

    .line 330
    return-void
.end method

.method public setRGBColorStrokeF(FFF)V
    .locals 0
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->checkNoColor()V

    .line 248
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfTemplate;->setRGBColorStrokeF(FFF)V

    .line 249
    return-void
.end method

.method public setXStep(F)V
    .locals 0
    .parameter "xstep"

    .prologue
    .line 99
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->xstep:F

    .line 100
    return-void
.end method

.method public setYStep(F)V
    .locals 0
    .parameter "ystep"

    .prologue
    .line 109
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPatternPainter;->ystep:F

    .line 110
    return-void
.end method
