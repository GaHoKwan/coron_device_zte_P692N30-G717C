.class public Lzte/com/cn/cloudnotepad/utils/PdfUtils;
.super Ljava/lang/Object;
.source "PdfUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPdf(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 11
    .parameter "bitmap"
    .parameter "pdfName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 18
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    .local v8, outputStream:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 20
    new-instance v0, Lcom/itextpdf/text/Document;

    sget-object v1, Lcom/itextpdf/text/PageSize;->A4:Lcom/itextpdf/text/Rectangle;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/Document;-><init>(Lcom/itextpdf/text/Rectangle;FFFF)V

    .line 21
    .local v0, doc:Lcom/itextpdf/text/Document;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->getInstance(Lcom/itextpdf/text/Document;Ljava/io/OutputStream;)Lcom/itextpdf/text/pdf/PdfWriter;

    .line 22
    invoke-virtual {v0}, Lcom/itextpdf/text/Document;->open()V

    .line 23
    invoke-virtual {v0}, Lcom/itextpdf/text/Document;->newPage()Z

    .line 24
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/Image;->getInstance([B)Lcom/itextpdf/text/Image;

    move-result-object v7

    .line 25
    .local v7, image1:Lcom/itextpdf/text/Image;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/itextpdf/text/Image;->setAlignment(I)V

    .line 26
    sget-object v1, Lcom/itextpdf/text/PageSize;->A4:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 27
    .local v9, scaleHeight:F
    sget-object v1, Lcom/itextpdf/text/PageSize;->A4:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 28
    .local v10, scaleWidth:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v10

    sget-object v2, Lcom/itextpdf/text/PageSize;->A4:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 29
    sget-object v1, Lcom/itextpdf/text/PageSize;->A4:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v1

    sget-object v2, Lcom/itextpdf/text/PageSize;->A4:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/itextpdf/text/Image;->scaleToFit(FF)V

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    const/4 p0, 0x0

    .line 37
    invoke-virtual {v0, v7}, Lcom/itextpdf/text/Document;->add(Lcom/itextpdf/text/Element;)Z

    .line 38
    invoke-virtual {v0}, Lcom/itextpdf/text/Document;->close()V

    .line 41
    :try_start_0
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_1
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    sget-object v2, Lcom/itextpdf/text/PageSize;->A4:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/itextpdf/text/Image;->scaleToFit(FF)V

    goto :goto_0

    .line 43
    :catch_0
    move-exception v6

    .line 44
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
