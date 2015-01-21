.class public abstract Lcom/itextpdf/text/pdf/Barcode;
.super Ljava/lang/Object;
.source "Barcode.java"


# static fields
.field public static final CODABAR:I = 0xc

.field public static final CODE128:I = 0x9

.field public static final CODE128_RAW:I = 0xb

.field public static final CODE128_UCC:I = 0xa

.field public static final EAN13:I = 0x1

.field public static final EAN8:I = 0x2

.field public static final PLANET:I = 0x8

.field public static final POSTNET:I = 0x7

.field public static final SUPP2:I = 0x5

.field public static final SUPP5:I = 0x6

.field public static final UPCA:I = 0x3

.field public static final UPCE:I = 0x4


# instance fields
.field protected altText:Ljava/lang/String;

.field protected barHeight:F

.field protected baseline:F

.field protected checksumText:Z

.field protected code:Ljava/lang/String;

.field protected codeType:I

.field protected extended:Z

.field protected font:Lcom/itextpdf/text/pdf/BaseFont;

.field protected generateChecksum:Z

.field protected guardBars:Z

.field protected inkSpreading:F

.field protected n:F

.field protected size:F

.field protected startStopText:Z

.field protected textAlignment:I

.field protected x:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/text/pdf/Barcode;->code:Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/Barcode;->inkSpreading:F

    return-void
.end method


# virtual methods
.method public abstract createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
.end method

.method public createImageWithBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Image;
    .locals 2
    .parameter "cb"
    .parameter "barColor"
    .parameter "textColor"

    .prologue
    .line 418
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/Barcode;->createTemplateWithBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfTemplate;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/pdf/PdfTemplate;)Lcom/itextpdf/text/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public createTemplateWithBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 3
    .parameter "cb"
    .parameter "barColor"
    .parameter "textColor"

    .prologue
    const/4 v2, 0x0

    .line 402
    invoke-virtual {p1, v2, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->createTemplate(FF)Lcom/itextpdf/text/pdf/PdfTemplate;

    move-result-object v1

    .line 403
    .local v1, tp:Lcom/itextpdf/text/pdf/PdfTemplate;
    invoke-virtual {p0, v1, p2, p3}, Lcom/itextpdf/text/pdf/Barcode;->placeBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    .line 404
    .local v0, rect:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 405
    return-object v1
.end method

.method public getAltText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Barcode;->altText:Ljava/lang/String;

    return-object v0
.end method

.method public getBarHeight()F
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/itextpdf/text/pdf/Barcode;->barHeight:F

    return v0
.end method

.method public abstract getBarcodeSize()Lcom/itextpdf/text/Rectangle;
.end method

.method public getBaseline()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/itextpdf/text/pdf/Barcode;->baseline:F

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Barcode;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeType()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/itextpdf/text/pdf/Barcode;->codeType:I

    return v0
.end method

.method public getFont()Lcom/itextpdf/text/pdf/BaseFont;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Barcode;->font:Lcom/itextpdf/text/pdf/BaseFont;

    return-object v0
.end method

.method public getInkSpreading()F
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/itextpdf/text/pdf/Barcode;->inkSpreading:F

    return v0
.end method

.method public getN()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/itextpdf/text/pdf/Barcode;->n:F

    return v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/itextpdf/text/pdf/Barcode;->size:F

    return v0
.end method

.method public getTextAlignment()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/itextpdf/text/pdf/Barcode;->textAlignment:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/itextpdf/text/pdf/Barcode;->x:F

    return v0
.end method

.method public isChecksumText()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/Barcode;->checksumText:Z

    return v0
.end method

.method public isExtended()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/Barcode;->extended:Z

    return v0
.end method

.method public isGenerateChecksum()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/Barcode;->generateChecksum:Z

    return v0
.end method

.method public isGuardBars()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/Barcode;->guardBars:Z

    return v0
.end method

.method public isStartStopText()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/Barcode;->startStopText:Z

    return v0
.end method

.method public abstract placeBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Rectangle;
.end method

.method public setAltText(Ljava/lang/String;)V
    .locals 0
    .parameter "altText"

    .prologue
    .line 462
    iput-object p1, p0, Lcom/itextpdf/text/pdf/Barcode;->altText:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setBarHeight(F)V
    .locals 0
    .parameter "barHeight"

    .prologue
    .line 230
    iput p1, p0, Lcom/itextpdf/text/pdf/Barcode;->barHeight:F

    .line 231
    return-void
.end method

.method public setBaseline(F)V
    .locals 0
    .parameter "baseline"

    .prologue
    .line 216
    iput p1, p0, Lcom/itextpdf/text/pdf/Barcode;->baseline:F

    .line 217
    return-void
.end method

.method public setChecksumText(Z)V
    .locals 0
    .parameter "checksumText"

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/Barcode;->checksumText:Z

    .line 275
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/itextpdf/text/pdf/Barcode;->code:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setCodeType(I)V
    .locals 0
    .parameter "codeType"

    .prologue
    .line 346
    iput p1, p0, Lcom/itextpdf/text/pdf/Barcode;->codeType:I

    .line 347
    return-void
.end method

.method public setExtended(Z)V
    .locals 0
    .parameter "extended"

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/Barcode;->extended:Z

    .line 305
    return-void
.end method

.method public setFont(Lcom/itextpdf/text/pdf/BaseFont;)V
    .locals 0
    .parameter "font"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/itextpdf/text/pdf/Barcode;->font:Lcom/itextpdf/text/pdf/BaseFont;

    .line 185
    return-void
.end method

.method public setGenerateChecksum(Z)V
    .locals 0
    .parameter "generateChecksum"

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/Barcode;->generateChecksum:Z

    .line 261
    return-void
.end method

.method public setGuardBars(Z)V
    .locals 0
    .parameter "guardBars"

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/Barcode;->guardBars:Z

    .line 333
    return-void
.end method

.method public setInkSpreading(F)V
    .locals 0
    .parameter "inkSpreading"

    .prologue
    .line 440
    iput p1, p0, Lcom/itextpdf/text/pdf/Barcode;->inkSpreading:F

    .line 441
    return-void
.end method

.method public setN(F)V
    .locals 0
    .parameter "n"

    .prologue
    .line 170
    iput p1, p0, Lcom/itextpdf/text/pdf/Barcode;->n:F

    .line 171
    return-void
.end method

.method public setSize(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 198
    iput p1, p0, Lcom/itextpdf/text/pdf/Barcode;->size:F

    .line 199
    return-void
.end method

.method public setStartStopText(Z)V
    .locals 0
    .parameter "startStopText"

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/Barcode;->startStopText:Z

    .line 291
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 0
    .parameter "textAlignment"

    .prologue
    .line 246
    iput p1, p0, Lcom/itextpdf/text/pdf/Barcode;->textAlignment:I

    .line 247
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 156
    iput p1, p0, Lcom/itextpdf/text/pdf/Barcode;->x:F

    .line 157
    return-void
.end method
