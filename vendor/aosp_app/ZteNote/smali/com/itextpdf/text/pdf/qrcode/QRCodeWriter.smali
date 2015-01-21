.class public final Lcom/itextpdf/text/pdf/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"


# static fields
.field private static final QUIET_ZONE_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static renderResult(Lcom/itextpdf/text/pdf/qrcode/QRCode;II)Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;
    .locals 26
    .parameter "code"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->getMatrix()Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    move-result-object v4

    .line 67
    .local v4, input:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v7

    .line 68
    .local v7, inputWidth:I
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v6

    .line 69
    .local v6, inputHeight:I
    add-int/lit8 v16, v7, 0x8

    .line 70
    .local v16, qrWidth:I
    add-int/lit8 v15, v6, 0x8

    .line 71
    .local v15, qrHeight:I
    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 72
    .local v14, outputWidth:I
    move/from16 v0, p2

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 74
    .local v13, outputHeight:I
    div-int v23, v14, v16

    div-int v24, v13, v15

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 79
    .local v9, multiple:I
    mul-int v23, v7, v9

    sub-int v23, v14, v23

    div-int/lit8 v8, v23, 0x2

    .line 80
    .local v8, leftPadding:I
    mul-int v23, v6, v9

    sub-int v23, v13, v23

    div-int/lit8 v18, v23, 0x2

    .line 82
    .local v18, topPadding:I
    new-instance v11, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-direct {v11, v14, v13}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;-><init>(II)V

    .line 83
    .local v11, output:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v12

    .line 87
    .local v12, outputArray:[[B
    new-array v0, v14, [B

    move-object/from16 v17, v0

    .line 90
    .local v17, row:[B
    const/16 v21, 0x0

    .local v21, y:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 91
    aget-object v23, v12, v21

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Lcom/itextpdf/text/pdf/qrcode/QRCodeWriter;->setRowColor([BB)V

    .line 90
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v5

    .line 96
    .local v5, inputArray:[[B
    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    if-ge v0, v6, :cond_7

    .line 98
    const/16 v20, 0x0

    .local v20, x:I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v8, :cond_1

    .line 99
    const/16 v23, -0x1

    aput-byte v23, v17, v20

    .line 98
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 103
    :cond_1
    move v10, v8

    .line 104
    .local v10, offset:I
    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v0, v7, :cond_4

    .line 105
    aget-object v23, v5, v21

    aget-byte v23, v23, v20

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 v19, 0x0

    .line 106
    .local v19, value:B
    :goto_4
    const/16 v22, 0x0

    .local v22, z:I
    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_3

    .line 107
    add-int v23, v10, v22

    aput-byte v19, v17, v23

    .line 106
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 105
    .end local v19           #value:B
    .end local v22           #z:I
    :cond_2
    const/16 v19, -0x1

    goto :goto_4

    .line 109
    .restart local v19       #value:B
    .restart local v22       #z:I
    :cond_3
    add-int/2addr v10, v9

    .line 104
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 113
    .end local v19           #value:B
    .end local v22           #z:I
    :cond_4
    mul-int v23, v7, v9

    add-int v10, v8, v23

    .line 114
    move/from16 v20, v10

    :goto_6
    move/from16 v0, v20

    if-ge v0, v14, :cond_5

    .line 115
    const/16 v23, -0x1

    aput-byte v23, v17, v20

    .line 114
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 119
    :cond_5
    mul-int v23, v21, v9

    add-int v10, v18, v23

    .line 120
    const/16 v22, 0x0

    .restart local v22       #z:I
    :goto_7
    move/from16 v0, v22

    if-ge v0, v9, :cond_6

    .line 121
    const/16 v23, 0x0

    add-int v24, v10, v22

    aget-object v24, v12, v24

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 96
    :cond_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 126
    .end local v10           #offset:I
    .end local v20           #x:I
    .end local v22           #z:I
    :cond_7
    mul-int v23, v6, v9

    add-int v10, v18, v23

    .line 127
    .restart local v10       #offset:I
    move/from16 v21, v10

    :goto_8
    move/from16 v0, v21

    if-ge v0, v13, :cond_8

    .line 128
    aget-object v23, v12, v21

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Lcom/itextpdf/text/pdf/qrcode/QRCodeWriter;->setRowColor([BB)V

    .line 127
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 131
    :cond_8
    return-object v11
.end method

.method private static setRowColor([BB)V
    .locals 2
    .parameter "row"
    .parameter "value"

    .prologue
    .line 135
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 136
    aput-byte p1, p0, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;II)Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;
    .locals 1
    .parameter "contents"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;)Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;IILjava/util/Map;)Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;
    .locals 6
    .parameter "contents"
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
            ">;)",
            "Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 41
    .local p4, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 42
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Found empty contents"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    :cond_1
    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 46
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested dimensions are too small: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_3
    sget-object v1, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->L:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    .line 51
    .local v1, errorCorrectionLevel:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;
    if-eqz p4, :cond_4

    .line 52
    sget-object v3, Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;->ERROR_CORRECTION:Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    .line 53
    .local v2, requestedECLevel:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;
    if-eqz v2, :cond_4

    .line 54
    move-object v1, v2

    .line 58
    .end local v2           #requestedECLevel:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;
    :cond_4
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/QRCode;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/qrcode/QRCode;-><init>()V

    .line 59
    .local v0, code:Lcom/itextpdf/text/pdf/qrcode/QRCode;
    invoke-static {p1, v1, p4, v0}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->encode(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;Ljava/util/Map;Lcom/itextpdf/text/pdf/qrcode/QRCode;)V

    .line 60
    invoke-static {v0, p2, p3}, Lcom/itextpdf/text/pdf/qrcode/QRCodeWriter;->renderResult(Lcom/itextpdf/text/pdf/qrcode/QRCode;II)Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    move-result-object v3

    return-object v3
.end method
