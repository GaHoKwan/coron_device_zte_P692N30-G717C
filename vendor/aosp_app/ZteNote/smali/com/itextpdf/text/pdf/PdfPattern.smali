.class public Lcom/itextpdf/text/pdf/PdfPattern;
.super Lcom/itextpdf/text/pdf/PdfStream;
.source "PdfPattern.java"


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V
    .locals 1
    .parameter "painter"

    .prologue
    .line 61
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfPattern;-><init>(Lcom/itextpdf/text/pdf/PdfPatternPainter;I)V

    .line 62
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfPatternPainter;I)V
    .locals 6
    .parameter "painter"
    .parameter "compressionLevel"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfStream;-><init>()V

    .line 72
    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 73
    .local v2, one:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getMatrix()Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    .line 74
    .local v1, matrix:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v1, :cond_0

    .line 75
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->MATRIX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/text/pdf/PdfPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 77
    :cond_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 78
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->BBOX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getBoundingBox()Lcom/itextpdf/text/Rectangle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 79
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getResources()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 80
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->TILINGTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/text/pdf/PdfPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 81
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PATTERNTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/text/pdf/PdfPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 82
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->isStencil()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PAINTTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 86
    :goto_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->XSTEP:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getXStep()F

    move-result v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 87
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->YSTEP:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getYStep()F

    move-result v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 88
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPattern;->bytes:[B

    .line 89
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPattern;->bytes:[B

    array-length v5, v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 91
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfPattern;->flateCompress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-void

    .line 85
    :cond_1
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PAINTTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/text/pdf/PdfPattern;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method
