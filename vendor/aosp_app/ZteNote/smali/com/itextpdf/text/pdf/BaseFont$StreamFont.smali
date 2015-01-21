.class Lcom/itextpdf/text/pdf/BaseFont$StreamFont;
.super Lcom/itextpdf/text/pdf/PdfStream;
.source "BaseFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/BaseFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreamFont"
.end annotation


# direct methods
.method public constructor <init>([BLjava/lang/String;I)V
    .locals 4
    .parameter "contents"
    .parameter "subType"
    .parameter "compressionLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfStream;-><init>()V

    .line 369
    :try_start_0
    iput-object p1, p0, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;->bytes:[B

    .line 370
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;->bytes:[B

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 371
    if-eqz p2, :cond_0

    .line 372
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v2, p2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 373
    :cond_0
    invoke-virtual {p0, p3}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;->flateCompress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/DocumentException;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>([B[II)V
    .locals 5
    .parameter "contents"
    .parameter "lengths"
    .parameter "compressionLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfStream;-><init>()V

    .line 347
    :try_start_0
    iput-object p1, p0, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;->bytes:[B

    .line 348
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;->bytes:[B

    array-length v4, v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 349
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 350
    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    aget v4, p2, v1

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p0, p3}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;->flateCompress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    return-void

    .line 354
    .end local v1           #k:I
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/DocumentException;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
