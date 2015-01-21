.class public Lcom/itextpdf/text/pdf/BarcodeInter25;
.super Lcom/itextpdf/text/pdf/Barcode;
.source "BarcodeInter25.java"


# static fields
.field private static final BARS:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 74
    const/16 v0, 0xa

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->BARS:[[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_5
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_8
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/Barcode;-><init>()V

    .line 91
    const v1, 0x3f4ccccd

    :try_start_0
    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->x:F

    .line 92
    const/high16 v1, 0x4000

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->n:F

    .line 93
    const-string v1, "Helvetica"

    const-string v2, "winansi"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->font:Lcom/itextpdf/text/pdf/BaseFont;

    .line 94
    const/high16 v1, 0x4100

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->size:F

    .line 95
    iget v1, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->size:F

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->baseline:F

    .line 96
    iget v1, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->size:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->barHeight:F

    .line 97
    const/4 v1, 0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->textAlignment:I

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->generateChecksum:Z

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->checksumText:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getBarsInter25(Ljava/lang/String;)[B
    .locals 13
    .parameter "text"

    .prologue
    const/4 v12, 0x0

    .line 140
    invoke-static {p0}, Lcom/itextpdf/text/pdf/BarcodeInter25;->keepNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_0

    .line 142
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "the.text.length.must.be.even"

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 143
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x5

    add-int/lit8 v10, v10, 0x7

    new-array v2, v10, [B

    .line 144
    .local v2, bars:[B
    const/4 v8, 0x0

    .line 145
    .local v8, pb:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #pb:I
    .local v9, pb:I
    aput-byte v12, v2, v8

    .line 146
    add-int/lit8 v8, v9, 0x1

    .end local v9           #pb:I
    .restart local v8       #pb:I
    aput-byte v12, v2, v9

    .line 147
    add-int/lit8 v9, v8, 0x1

    .end local v8           #pb:I
    .restart local v9       #pb:I
    aput-byte v12, v2, v8

    .line 148
    add-int/lit8 v8, v9, 0x1

    .end local v9           #pb:I
    .restart local v8       #pb:I
    aput-byte v12, v2, v9

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    div-int/lit8 v7, v10, 0x2

    .line 150
    .local v7, len:I
    const/4 v6, 0x0

    .local v6, k:I
    move v9, v8

    .end local v8           #pb:I
    .restart local v9       #pb:I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 151
    mul-int/lit8 v10, v6, 0x2

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v3, v10, -0x30

    .line 152
    .local v3, c1:I
    mul-int/lit8 v10, v6, 0x2

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v4, v10, -0x30

    .line 153
    .local v4, c2:I
    sget-object v10, Lcom/itextpdf/text/pdf/BarcodeInter25;->BARS:[[B

    aget-object v0, v10, v3

    .line 154
    .local v0, b1:[B
    sget-object v10, Lcom/itextpdf/text/pdf/BarcodeInter25;->BARS:[[B

    aget-object v1, v10, v4

    .line 155
    .local v1, b2:[B
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    const/4 v10, 0x5

    if-ge v5, v10, :cond_1

    .line 156
    add-int/lit8 v8, v9, 0x1

    .end local v9           #pb:I
    .restart local v8       #pb:I
    aget-byte v10, v0, v5

    aput-byte v10, v2, v9

    .line 157
    add-int/lit8 v9, v8, 0x1

    .end local v8           #pb:I
    .restart local v9       #pb:I
    aget-byte v10, v1, v5

    aput-byte v10, v2, v8

    .line 155
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 150
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 160
    .end local v0           #b1:[B
    .end local v1           #b2:[B
    .end local v3           #c1:I
    .end local v4           #c2:I
    .end local v5           #j:I
    :cond_2
    add-int/lit8 v8, v9, 0x1

    .end local v9           #pb:I
    .restart local v8       #pb:I
    const/4 v10, 0x1

    aput-byte v10, v2, v9

    .line 161
    add-int/lit8 v9, v8, 0x1

    .end local v8           #pb:I
    .restart local v9       #pb:I
    aput-byte v12, v2, v8

    .line 162
    add-int/lit8 v8, v9, 0x1

    .end local v9           #pb:I
    .restart local v8       #pb:I
    aput-byte v12, v2, v9

    .line 163
    return-object v2
.end method

.method public static getChecksum(Ljava/lang/String;)C
    .locals 5
    .parameter "text"

    .prologue
    .line 125
    const/4 v1, 0x3

    .line 126
    .local v1, mul:I
    const/4 v3, 0x0

    .line 127
    .local v3, total:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, k:I
    :goto_0
    if-ltz v0, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v2, v4, -0x30

    .line 129
    .local v2, n:I
    mul-int v4, v1, v2

    add-int/2addr v3, v4

    .line 130
    xor-int/lit8 v1, v1, 0x2

    .line 127
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 132
    .end local v2           #n:I
    :cond_0
    rem-int/lit8 v4, v3, 0xa

    rsub-int/lit8 v4, v4, 0xa

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    return v4
.end method

.method public static keepNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"

    .prologue
    .line 111
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 113
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 114
    .local v0, c:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 22
    .parameter "foreground"
    .parameter "background"

    .prologue
    .line 303
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v11

    .line 304
    .local v11, f:I
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v12

    .line 305
    .local v12, g:I
    new-instance v10, Ljava/awt/Canvas;

    invoke-direct {v10}, Ljava/awt/Canvas;-><init>()V

    .line 307
    .local v10, canvas:Ljava/awt/Canvas;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/BarcodeInter25;->keepNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 308
    .local v7, bCode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->generateChecksum:Z

    if-eqz v1, :cond_0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lcom/itextpdf/text/pdf/BarcodeInter25;->getChecksum(Ljava/lang/String;)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 310
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    .line 311
    .local v16, len:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->n:F

    float-to-int v0, v1

    move/from16 v17, v0

    .line 312
    .local v17, nn:I
    mul-int/lit8 v1, v17, 0x2

    add-int/lit8 v1, v1, 0x3

    mul-int v1, v1, v16

    add-int/lit8 v5, v17, 0x6

    add-int v2, v1, v5

    .line 313
    .local v2, fullWidth:I
    invoke-static {v7}, Lcom/itextpdf/text/pdf/BarcodeInter25;->getBarsInter25(Ljava/lang/String;)[B

    move-result-object v8

    .line 314
    .local v8, bars:[B
    const/16 v18, 0x1

    .line 315
    .local v18, print:Z
    const/16 v19, 0x0

    .line 316
    .local v19, ptr:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->barHeight:F

    float-to-int v3, v1

    .line 317
    .local v3, height:I
    mul-int v1, v2, v3

    new-array v4, v1, [I

    .line 318
    .local v4, pix:[I
    const/4 v15, 0x0

    .local v15, k:I
    :goto_0
    array-length v1, v8

    if-ge v15, v1, :cond_5

    .line 319
    aget-byte v1, v8, v15

    if-nez v1, :cond_2

    const/16 v21, 0x1

    .line 320
    .local v21, w:I
    :goto_1
    move v9, v12

    .line 321
    .local v9, c:I
    if-eqz v18, :cond_1

    .line 322
    move v9, v11

    .line 323
    :cond_1
    if-nez v18, :cond_3

    const/16 v18, 0x1

    .line 324
    :goto_2
    const/4 v14, 0x0

    .local v14, j:I
    move/from16 v20, v19

    .end local v19           #ptr:I
    .local v20, ptr:I
    :goto_3
    move/from16 v0, v21

    if-ge v14, v0, :cond_4

    .line 325
    add-int/lit8 v19, v20, 0x1

    .end local v20           #ptr:I
    .restart local v19       #ptr:I
    aput v9, v4, v20

    .line 324
    add-int/lit8 v14, v14, 0x1

    move/from16 v20, v19

    .end local v19           #ptr:I
    .restart local v20       #ptr:I
    goto :goto_3

    .end local v9           #c:I
    .end local v14           #j:I
    .end local v20           #ptr:I
    .end local v21           #w:I
    .restart local v19       #ptr:I
    :cond_2
    move/from16 v21, v17

    .line 319
    goto :goto_1

    .line 323
    .restart local v9       #c:I
    .restart local v21       #w:I
    :cond_3
    const/16 v18, 0x0

    goto :goto_2

    .line 318
    .end local v19           #ptr:I
    .restart local v14       #j:I
    .restart local v20       #ptr:I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v19, v20

    .end local v20           #ptr:I
    .restart local v19       #ptr:I
    goto :goto_0

    .line 327
    .end local v9           #c:I
    .end local v14           #j:I
    .end local v21           #w:I
    :cond_5
    move v15, v2

    :goto_4
    array-length v1, v4

    if-ge v15, v1, :cond_6

    .line 328
    const/4 v1, 0x0

    invoke-static {v4, v1, v4, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    add-int/2addr v15, v2

    goto :goto_4

    .line 330
    :cond_6
    new-instance v1, Ljava/awt/image/MemoryImageSource;

    const/4 v5, 0x0

    move v6, v2

    invoke-direct/range {v1 .. v6}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v10, v1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v13

    .line 332
    .local v13, img:Ljava/awt/Image;
    return-object v13
.end method

.method public getBarcodeSize()Lcom/itextpdf/text/Rectangle;
    .locals 10

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, fontX:F
    const/4 v1, 0x0

    .line 173
    .local v1, fontY:F
    iget-object v6, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v6, :cond_2

    .line 174
    iget v6, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->baseline:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 175
    iget v6, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->baseline:F

    iget-object v7, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->font:Lcom/itextpdf/text/pdf/BaseFont;

    const/4 v8, 0x3

    iget v9, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->size:F

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v7

    sub-float v1, v6, v7

    .line 178
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->code:Ljava/lang/String;

    .line 179
    .local v2, fullCode:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->generateChecksum:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->checksumText:Z

    if-eqz v6, :cond_0

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/itextpdf/text/pdf/BarcodeInter25;->getChecksum(Ljava/lang/String;)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    :cond_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->font:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->altText:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->altText:Ljava/lang/String;

    .end local v2           #fullCode:Ljava/lang/String;
    :cond_1
    iget v7, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->size:F

    invoke-virtual {v6, v2, v7}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v0

    .line 183
    :cond_2
    iget-object v6, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->code:Ljava/lang/String;

    invoke-static {v6}, Lcom/itextpdf/text/pdf/BarcodeInter25;->keepNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .restart local v2       #fullCode:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 185
    .local v5, len:I
    iget-boolean v6, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->generateChecksum:Z

    if-eqz v6, :cond_3

    .line 186
    add-int/lit8 v5, v5, 0x1

    .line 187
    :cond_3
    int-to-float v6, v5

    const/high16 v7, 0x4040

    iget v8, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->x:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    iget v9, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->x:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->n:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    const/high16 v7, 0x40c0

    iget v8, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->n:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->x:F

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 188
    .local v4, fullWidth:F
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 189
    iget v6, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->barHeight:F

    add-float v3, v6, v1

    .line 190
    .local v3, fullHeight:F
    new-instance v6, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v6, v4, v3}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    return-object v6

    .line 177
    .end local v2           #fullCode:Ljava/lang/String;
    .end local v3           #fullHeight:F
    .end local v4           #fullWidth:F
    .end local v5           #len:I
    :cond_4
    iget v6, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->baseline:F

    neg-float v6, v6

    iget v7, p0, Lcom/itextpdf/text/pdf/BarcodeInter25;->size:F

    add-float v1, v6, v7

    goto :goto_0
.end method

.method public placeBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Rectangle;
    .locals 19
    .parameter "cb"
    .parameter "barColor"
    .parameter "textColor"

    .prologue
    .line 230
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->code:Ljava/lang/String;

    .line 231
    .local v7, fullCode:Ljava/lang/String;
    const/4 v6, 0x0

    .line 232
    .local v6, fontX:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v15, :cond_2

    .line 233
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->generateChecksum:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->checksumText:Z

    if-eqz v15, :cond_0

    .line 234
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v7}, Lcom/itextpdf/text/pdf/BarcodeInter25;->getChecksum(Ljava/lang/String;)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 235
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->altText:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->altText:Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->size:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v7, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v6

    .line 237
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->code:Ljava/lang/String;

    invoke-static {v15}, Lcom/itextpdf/text/pdf/BarcodeInter25;->keepNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, bCode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->generateChecksum:Z

    if-eqz v15, :cond_3

    .line 239
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2}, Lcom/itextpdf/text/pdf/BarcodeInter25;->getChecksum(Ljava/lang/String;)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    .line 241
    .local v10, len:I
    int-to-float v15, v10

    const/high16 v16, 0x4040

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->x:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->x:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->n:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    mul-float v15, v15, v16

    const/high16 v16, 0x40c0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->n:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->x:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v8, v15, v16

    .line 242
    .local v8, fullWidth:F
    const/4 v3, 0x0

    .line 243
    .local v3, barStartX:F
    const/4 v12, 0x0

    .line 244
    .local v12, textStartX:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->textAlignment:I

    packed-switch v15, :pswitch_data_0

    .line 254
    :pswitch_0
    cmpl-float v15, v6, v8

    if-lez v15, :cond_8

    .line 255
    sub-float v15, v6, v8

    const/high16 v16, 0x4000

    div-float v3, v15, v16

    .line 260
    :goto_0
    :pswitch_1
    const/4 v4, 0x0

    .line 261
    .local v4, barStartY:F
    const/4 v13, 0x0

    .line 262
    .local v13, textStartY:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v15, :cond_4

    .line 263
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->baseline:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_9

    .line 264
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->barHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->baseline:F

    move/from16 v16, v0

    sub-float v13, v15, v16

    .line 270
    :cond_4
    :goto_1
    invoke-static {v2}, Lcom/itextpdf/text/pdf/BarcodeInter25;->getBarsInter25(Ljava/lang/String;)[B

    move-result-object v5

    .line 271
    .local v5, bars:[B
    const/4 v11, 0x1

    .line 272
    .local v11, print:Z
    if-eqz p2, :cond_5

    .line 273
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 274
    :cond_5
    const/4 v9, 0x0

    .local v9, k:I
    :goto_2
    array-length v15, v5

    if-ge v9, v15, :cond_c

    .line 275
    aget-byte v15, v5, v9

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->x:F

    .line 276
    .local v14, w:F
    :goto_3
    if-eqz v11, :cond_6

    .line 277
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->inkSpreading:F

    sub-float v15, v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->barHeight:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v3, v4, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 278
    :cond_6
    if-nez v11, :cond_b

    const/4 v11, 0x1

    .line 279
    :goto_4
    add-float/2addr v3, v14

    .line 274
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 248
    .end local v4           #barStartY:F
    .end local v5           #bars:[B
    .end local v9           #k:I
    .end local v11           #print:Z
    .end local v13           #textStartY:F
    .end local v14           #w:F
    :pswitch_2
    cmpl-float v15, v6, v8

    if-lez v15, :cond_7

    .line 249
    sub-float v3, v6, v8

    goto :goto_0

    .line 251
    :cond_7
    sub-float v12, v8, v6

    .line 252
    goto :goto_0

    .line 257
    :cond_8
    sub-float v15, v8, v6

    const/high16 v16, 0x4000

    div-float v12, v15, v16

    goto :goto_0

    .line 266
    .restart local v4       #barStartY:F
    .restart local v13       #textStartY:F
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->font:Lcom/itextpdf/text/pdf/BaseFont;

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->size:F

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v15

    neg-float v13, v15

    .line 267
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->baseline:F

    add-float v4, v13, v15

    goto :goto_1

    .line 275
    .restart local v5       #bars:[B
    .restart local v9       #k:I
    .restart local v11       #print:Z
    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->n:F

    move/from16 v16, v0

    mul-float v14, v15, v16

    goto :goto_3

    .line 278
    .restart local v14       #w:F
    :cond_b
    const/4 v11, 0x0

    goto :goto_4

    .line 281
    .end local v14           #w:F
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v15, :cond_e

    .line 283
    if-eqz p3, :cond_d

    .line 284
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 285
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 286
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeInter25;->size:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 287
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 288
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 291
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/BarcodeInter25;->getBarcodeSize()Lcom/itextpdf/text/Rectangle;

    move-result-object v15

    return-object v15

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
