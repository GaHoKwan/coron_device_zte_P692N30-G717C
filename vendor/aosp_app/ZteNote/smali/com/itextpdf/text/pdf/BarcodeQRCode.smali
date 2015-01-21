.class public Lcom/itextpdf/text/pdf/BarcodeQRCode;
.super Ljava/lang/Object;
.source "BarcodeQRCode.java"


# instance fields
.field bm:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/util/Map;)V
    .locals 3
    .parameter "content"
    .parameter "width"
    .parameter "height"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p4, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    :try_start_0
    new-instance v1, Lcom/itextpdf/text/pdf/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/qrcode/QRCodeWriter;-><init>()V

    .line 79
    .local v1, qc:Lcom/itextpdf/text/pdf/qrcode/QRCodeWriter;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;)Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/BarcodeQRCode;->bm:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;
    :try_end_0
    .catch Lcom/itextpdf/text/pdf/qrcode/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 81
    .end local v1           #qc:Lcom/itextpdf/text/pdf/qrcode/QRCodeWriter;
    :catch_0
    move-exception v0

    .line 82
    .local v0, ex:Lcom/itextpdf/text/pdf/qrcode/WriterException;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private getBitMatrix()[B
    .locals 12

    .prologue
    .line 87
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BarcodeQRCode;->bm:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v6

    .line 88
    .local v6, width:I
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BarcodeQRCode;->bm:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v1

    .line 89
    .local v1, height:I
    add-int/lit8 v9, v6, 0x7

    div-int/lit8 v5, v9, 0x8

    .line 90
    .local v5, stride:I
    mul-int v9, v5, v1

    new-array v0, v9, [B

    .line 91
    .local v0, b:[B
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BarcodeQRCode;->bm:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v3

    .line 92
    .local v3, mt:[[B
    const/4 v8, 0x0

    .local v8, y:I
    :goto_0
    if-ge v8, v1, :cond_2

    .line 93
    aget-object v2, v3, v8

    .line 94
    .local v2, line:[B
    const/4 v7, 0x0

    .local v7, x:I
    :goto_1
    if-ge v7, v6, :cond_1

    .line 95
    aget-byte v9, v2, v7

    if-eqz v9, :cond_0

    .line 96
    mul-int v9, v5, v8

    div-int/lit8 v10, v7, 0x8

    add-int v4, v9, v10

    .line 97
    .local v4, offset:I
    aget-byte v9, v0, v4

    const/16 v10, 0x80

    rem-int/lit8 v11, v7, 0x8

    shr-int/2addr v10, v11

    int-to-byte v10, v10

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 94
    .end local v4           #offset:I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 92
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 101
    .end local v2           #line:[B
    .end local v7           #x:I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 14
    .parameter "foreground"
    .parameter "background"

    .prologue
    .line 122
    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result v7

    .line 123
    .local v7, f:I
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v8

    .line 124
    .local v8, g:I
    new-instance v6, Ljava/awt/Canvas;

    invoke-direct {v6}, Ljava/awt/Canvas;-><init>()V

    .line 126
    .local v6, canvas:Ljava/awt/Canvas;
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeQRCode;->bm:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v1

    .line 127
    .local v1, width:I
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeQRCode;->bm:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v2

    .line 128
    .local v2, height:I
    mul-int v0, v1, v2

    new-array v3, v0, [I

    .line 129
    .local v3, pix:[I
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeQRCode;->bm:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v11

    .line 130
    .local v11, mt:[[B
    const/4 v13, 0x0

    .local v13, y:I
    :goto_0
    if-ge v13, v2, :cond_2

    .line 131
    aget-object v10, v11, v13

    .line 132
    .local v10, line:[B
    const/4 v12, 0x0

    .local v12, x:I
    :goto_1
    if-ge v12, v1, :cond_1

    .line 133
    mul-int v0, v13, v1

    add-int v4, v0, v12

    aget-byte v0, v10, v12

    if-nez v0, :cond_0

    move v0, v7

    :goto_2
    aput v0, v3, v4

    .line 132
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    move v0, v8

    .line 133
    goto :goto_2

    .line 130
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 137
    .end local v10           #line:[B
    .end local v12           #x:I
    :cond_2
    new-instance v0, Ljava/awt/image/MemoryImageSource;

    const/4 v4, 0x0

    move v5, v1

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v6, v0}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v9

    .line 138
    .local v9, img:Ljava/awt/Image;
    return-object v9
.end method

.method public getImage()Lcom/itextpdf/text/Image;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BarcodeQRCode;->getBitMatrix()[B

    move-result-object v7

    .line 110
    .local v7, b:[B
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeQRCode;->bm:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BarcodeQRCode;->bm:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v1

    invoke-static {v7, v0, v1}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->compress([BII)[B

    move-result-object v5

    .line 111
    .local v5, g4:[B
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeQRCode;->bm:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BarcodeQRCode;->bm:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x100

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/text/Image;->getInstance(IIZII[B[I)Lcom/itextpdf/text/Image;

    move-result-object v0

    return-object v0
.end method
