.class public Lcom/itextpdf/text/pdf/BarcodeEANSUPP;
.super Lcom/itextpdf/text/pdf/Barcode;
.source "BarcodeEANSUPP.java"


# instance fields
.field protected ean:Lcom/itextpdf/text/pdf/Barcode;

.field protected supp:Lcom/itextpdf/text/pdf/Barcode;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/Barcode;Lcom/itextpdf/text/pdf/Barcode;)V
    .locals 1
    .parameter "ean"
    .parameter "supp"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/Barcode;-><init>()V

    .line 76
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->n:F

    .line 77
    iput-object p1, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->ean:Lcom/itextpdf/text/pdf/Barcode;

    .line 78
    iput-object p2, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->supp:Lcom/itextpdf/text/pdf/Barcode;

    .line 79
    return-void
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 3
    .parameter "foreground"
    .parameter "background"

    .prologue
    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "the.two.barcodes.must.be.composed.externally"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBarcodeSize()Lcom/itextpdf/text/Rectangle;
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->ean:Lcom/itextpdf/text/pdf/Barcode;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/Barcode;->getBarcodeSize()Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    .line 87
    .local v0, rect:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->supp:Lcom/itextpdf/text/pdf/Barcode;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/Barcode;->getBarcodeSize()Lcom/itextpdf/text/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->n:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->setRight(F)V

    .line 88
    return-object v0
.end method

.method public placeBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Rectangle;
    .locals 8
    .parameter "cb"
    .parameter "barColor"
    .parameter "textColor"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->supp:Lcom/itextpdf/text/pdf/Barcode;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/Barcode;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->supp:Lcom/itextpdf/text/pdf/Barcode;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->ean:Lcom/itextpdf/text/pdf/Barcode;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/Barcode;->getBarHeight()F

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->supp:Lcom/itextpdf/text/pdf/Barcode;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/Barcode;->getBaseline()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->supp:Lcom/itextpdf/text/pdf/Barcode;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/Barcode;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->supp:Lcom/itextpdf/text/pdf/Barcode;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/Barcode;->getSize()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/Barcode;->setBarHeight(F)V

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->ean:Lcom/itextpdf/text/pdf/Barcode;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/Barcode;->getBarcodeSize()Lcom/itextpdf/text/Rectangle;

    move-result-object v7

    .line 133
    .local v7, eanR:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 134
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->ean:Lcom/itextpdf/text/pdf/Barcode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/Barcode;->placeBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Rectangle;

    .line 135
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 136
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 137
    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v0

    iget v3, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->n:F

    add-float v5, v0, v3

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v0

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->ean:Lcom/itextpdf/text/pdf/Barcode;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/Barcode;->getBarHeight()F

    move-result v3

    sub-float v6, v0, v3

    move-object v0, p1

    move v3, v2

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->concatCTM(FFFFFF)V

    .line 138
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->supp:Lcom/itextpdf/text/pdf/Barcode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/Barcode;->placeBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Rectangle;

    .line 139
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 140
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->getBarcodeSize()Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    return-object v0

    .line 131
    .end local v7           #eanR:Lcom/itextpdf/text/Rectangle;
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->supp:Lcom/itextpdf/text/pdf/Barcode;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BarcodeEANSUPP;->ean:Lcom/itextpdf/text/pdf/Barcode;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/Barcode;->getBarHeight()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/Barcode;->setBarHeight(F)V

    goto :goto_0
.end method
