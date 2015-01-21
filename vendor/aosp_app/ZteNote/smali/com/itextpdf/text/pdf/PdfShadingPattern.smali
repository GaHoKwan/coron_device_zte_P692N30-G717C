.class public Lcom/itextpdf/text/pdf/PdfShadingPattern;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfShadingPattern.java"


# instance fields
.field protected matrix:[F

.field protected patternName:Lcom/itextpdf/text/pdf/PdfName;

.field protected patternReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field protected shading:Lcom/itextpdf/text/pdf/PdfShading;

.field protected writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfShading;)V
    .locals 3
    .parameter "shading"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->matrix:[F

    .line 66
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShading;->getWriter()Lcom/itextpdf/text/pdf/PdfWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 67
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PATTERNTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 68
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->shading:Lcom/itextpdf/text/pdf/PdfShading;

    .line 69
    return-void

    .line 58
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method addToBody()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SHADING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getShadingReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 95
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->MATRIX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->matrix:[F

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 96
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getPatternReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 97
    return-void
.end method

.method getColorDetails()Lcom/itextpdf/text/pdf/ColorDetails;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->shading:Lcom/itextpdf/text/pdf/PdfShading;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfShading;->getColorDetails()Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v0

    return-object v0
.end method

.method public getMatrix()[F
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->matrix:[F

    return-object v0
.end method

.method getPatternName()Lcom/itextpdf/text/pdf/PdfName;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->patternName:Lcom/itextpdf/text/pdf/PdfName;

    return-object v0
.end method

.method getPatternReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->patternReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->patternReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->patternReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getShading()Lcom/itextpdf/text/pdf/PdfShading;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->shading:Lcom/itextpdf/text/pdf/PdfShading;

    return-object v0
.end method

.method getShadingName()Lcom/itextpdf/text/pdf/PdfName;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->shading:Lcom/itextpdf/text/pdf/PdfShading;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfShading;->getShadingName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method getShadingReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->shading:Lcom/itextpdf/text/pdf/PdfShading;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfShading;->getShadingReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    return-object v0
.end method

.method public setMatrix([F)V
    .locals 3
    .parameter "matrix"

    .prologue
    .line 100
    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "the.matrix.size.must.be.6"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->matrix:[F

    .line 103
    return-void
.end method

.method setName(I)V
    .locals 3
    .parameter "number"

    .prologue
    .line 90
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfShadingPattern;->patternName:Lcom/itextpdf/text/pdf/PdfName;

    .line 91
    return-void
.end method
