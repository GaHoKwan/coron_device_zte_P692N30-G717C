.class public Lcom/itextpdf/text/pdf/BarcodeCodabar;
.super Lcom/itextpdf/text/pdf/Barcode;
.source "BarcodeCodabar.java"


# static fields
.field private static final BARS:[[B = null

.field private static final CHARS:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field private static final START_STOP_IDX:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 73
    const/16 v0, 0x14

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

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [B

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [B

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [B

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [B

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [B

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [B

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->BARS:[[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_2
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_5
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_6
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_7
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_8
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_9
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_b
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_c
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_d
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_e
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_f
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_10
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_11
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_12
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_13
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/Barcode;-><init>()V

    .line 106
    const v1, 0x3f4ccccd

    :try_start_0
    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->x:F

    .line 107
    const/high16 v1, 0x4000

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->n:F

    .line 108
    const-string v1, "Helvetica"

    const-string v2, "winansi"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->font:Lcom/itextpdf/text/pdf/BaseFont;

    .line 109
    const/high16 v1, 0x4100

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->size:F

    .line 110
    iget v1, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->size:F

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->baseline:F

    .line 111
    iget v1, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->size:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->barHeight:F

    .line 112
    const/4 v1, 0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->textAlignment:I

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->generateChecksum:Z

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->checksumText:Z

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->startStopText:Z

    .line 116
    const/16 v1, 0xc

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->codeType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static calculateChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "code"

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 155
    .end local p0
    :goto_0
    return-object p0

    .line 149
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, text:Ljava/lang/String;
    const/4 v2, 0x0

    .line 151
    .local v2, sum:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 152
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 153
    const-string v4, "0123456789-$:/.+ABCD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_1
    add-int/lit8 v4, v2, 0xf

    div-int/lit8 v4, v4, 0x10

    mul-int/lit8 v4, v4, 0x10

    sub-int v2, v4, v2

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0123456789-$:/.+ABCD"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getBarsCodabar(Ljava/lang/String;)[B
    .locals 9
    .parameter "text"

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 130
    .local v3, len:I
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 131
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "codabar.must.have.at.least.a.start.and.stop.character"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 132
    :cond_0
    const-string v4, "0123456789-$:/.+ABCD"

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lt v4, v8, :cond_1

    const-string v4, "0123456789-$:/.+ABCD"

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ge v4, v8, :cond_2

    .line 133
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "codabar.must.have.one.of.abcd.as.start.stop.character"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, -0x1

    new-array v0, v4, [B

    .line 135
    .local v0, bars:[B
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 136
    const-string v4, "0123456789-$:/.+ABCD"

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 137
    .local v1, idx:I
    if-lt v1, v8, :cond_3

    if-lez v2, :cond_3

    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_3

    .line 138
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "in.codabar.start.stop.characters.are.only.allowed.at.the.extremes"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_3
    if-gez v1, :cond_4

    .line 140
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "the.character.1.is.illegal.in.codabar"

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 141
    :cond_4
    sget-object v4, Lcom/itextpdf/text/pdf/BarcodeCodabar;->BARS:[[B

    aget-object v4, v4, v1

    mul-int/lit8 v5, v2, 0x8

    const/4 v6, 0x7

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v1           #idx:I
    :cond_5
    return-object v0
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 22
    .parameter "foreground"
    .parameter "background"

    .prologue
    .line 303
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v10

    .line 304
    .local v10, f:I
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v12

    .line 305
    .local v12, g:I
    new-instance v9, Ljava/awt/Canvas;

    invoke-direct {v9}, Ljava/awt/Canvas;-><init>()V

    .line 307
    .local v9, canvas:Ljava/awt/Canvas;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->code:Ljava/lang/String;

    .line 308
    .local v11, fullCode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->generateChecksum:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->checksumText:Z

    if-eqz v1, :cond_0

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 310
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->startStopText:Z

    if-nez v1, :cond_1

    .line 311
    const/4 v1, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v11, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 312
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->generateChecksum:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/itextpdf/text/pdf/BarcodeCodabar;->getBarsCodabar(Ljava/lang/String;)[B

    move-result-object v7

    .line 313
    .local v7, bars:[B
    const/16 v21, 0x0

    .line 314
    .local v21, wide:I
    const/4 v15, 0x0

    .local v15, k:I
    :goto_1
    array-length v1, v7

    if-ge v15, v1, :cond_3

    .line 315
    aget-byte v1, v7, v15

    add-int v21, v21, v1

    .line 314
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 312
    .end local v7           #bars:[B
    .end local v15           #k:I
    .end local v21           #wide:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->code:Ljava/lang/String;

    goto :goto_0

    .line 317
    .restart local v7       #bars:[B
    .restart local v15       #k:I
    .restart local v21       #wide:I
    :cond_3
    array-length v1, v7

    sub-int v16, v1, v21

    .line 318
    .local v16, narrow:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->n:F

    float-to-int v1, v1

    mul-int v1, v1, v21

    add-int v2, v16, v1

    .line 319
    .local v2, fullWidth:I
    const/16 v17, 0x1

    .line 320
    .local v17, print:Z
    const/16 v18, 0x0

    .line 321
    .local v18, ptr:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->barHeight:F

    float-to-int v3, v1

    .line 322
    .local v3, height:I
    mul-int v1, v2, v3

    new-array v4, v1, [I

    .line 323
    .local v4, pix:[I
    const/4 v15, 0x0

    :goto_2
    array-length v1, v7

    if-ge v15, v1, :cond_8

    .line 324
    aget-byte v1, v7, v15

    if-nez v1, :cond_5

    const/16 v20, 0x1

    .line 325
    .local v20, w:I
    :goto_3
    move v8, v12

    .line 326
    .local v8, c:I
    if-eqz v17, :cond_4

    .line 327
    move v8, v10

    .line 328
    :cond_4
    if-nez v17, :cond_6

    const/16 v17, 0x1

    .line 329
    :goto_4
    const/4 v14, 0x0

    .local v14, j:I
    move/from16 v19, v18

    .end local v18           #ptr:I
    .local v19, ptr:I
    :goto_5
    move/from16 v0, v20

    if-ge v14, v0, :cond_7

    .line 330
    add-int/lit8 v18, v19, 0x1

    .end local v19           #ptr:I
    .restart local v18       #ptr:I
    aput v8, v4, v19

    .line 329
    add-int/lit8 v14, v14, 0x1

    move/from16 v19, v18

    .end local v18           #ptr:I
    .restart local v19       #ptr:I
    goto :goto_5

    .line 324
    .end local v8           #c:I
    .end local v14           #j:I
    .end local v19           #ptr:I
    .end local v20           #w:I
    .restart local v18       #ptr:I
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->n:F

    float-to-int v0, v1

    move/from16 v20, v0

    goto :goto_3

    .line 328
    .restart local v8       #c:I
    .restart local v20       #w:I
    :cond_6
    const/16 v17, 0x0

    goto :goto_4

    .line 323
    .end local v18           #ptr:I
    .restart local v14       #j:I
    .restart local v19       #ptr:I
    :cond_7
    add-int/lit8 v15, v15, 0x1

    move/from16 v18, v19

    .end local v19           #ptr:I
    .restart local v18       #ptr:I
    goto :goto_2

    .line 332
    .end local v8           #c:I
    .end local v14           #j:I
    .end local v20           #w:I
    :cond_8
    move v15, v2

    :goto_6
    array-length v1, v4

    if-ge v15, v1, :cond_9

    .line 333
    const/4 v1, 0x0

    invoke-static {v4, v1, v4, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    add-int/2addr v15, v2

    goto :goto_6

    .line 335
    :cond_9
    new-instance v1, Ljava/awt/image/MemoryImageSource;

    const/4 v5, 0x0

    move v6, v2

    invoke-direct/range {v1 .. v6}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v9, v1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v13

    .line 337
    .local v13, img:Ljava/awt/Image;
    return-object v13
.end method

.method public getBarcodeSize()Lcom/itextpdf/text/Rectangle;
    .locals 13

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, fontX:F
    const/4 v2, 0x0

    .line 165
    .local v2, fontY:F
    iget-object v7, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->code:Ljava/lang/String;

    .line 166
    .local v7, text:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->generateChecksum:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->checksumText:Z

    if-eqz v9, :cond_0

    .line 167
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v9}, Lcom/itextpdf/text/pdf/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 168
    :cond_0
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->startStopText:Z

    if-nez v9, :cond_1

    .line 169
    const/4 v9, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 170
    :cond_1
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v9, :cond_3

    .line 171
    iget v9, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->baseline:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_5

    .line 172
    iget v9, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->baseline:F

    iget-object v10, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->font:Lcom/itextpdf/text/pdf/BaseFont;

    const/4 v11, 0x3

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->size:F

    invoke-virtual {v10, v11, v12}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v10

    sub-float v2, v9, v10

    .line 175
    :goto_0
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->font:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v10, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->altText:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v7, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->altText:Ljava/lang/String;

    .end local v7           #text:Ljava/lang/String;
    :cond_2
    iget v10, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->size:F

    invoke-virtual {v9, v7, v10}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v1

    .line 177
    :cond_3
    iget-object v7, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->code:Ljava/lang/String;

    .line 178
    .restart local v7       #text:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->generateChecksum:Z

    if-eqz v9, :cond_4

    .line 179
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v9}, Lcom/itextpdf/text/pdf/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    :cond_4
    invoke-static {v7}, Lcom/itextpdf/text/pdf/BarcodeCodabar;->getBarsCodabar(Ljava/lang/String;)[B

    move-result-object v0

    .line 181
    .local v0, bars:[B
    const/4 v8, 0x0

    .line 182
    .local v8, wide:I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    array-length v9, v0

    if-ge v5, v9, :cond_6

    .line 183
    aget-byte v9, v0, v5

    add-int/2addr v8, v9

    .line 182
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 174
    .end local v0           #bars:[B
    .end local v5           #k:I
    .end local v8           #wide:I
    :cond_5
    iget v9, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->baseline:F

    neg-float v9, v9

    iget v10, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->size:F

    add-float v2, v9, v10

    goto :goto_0

    .line 185
    .restart local v0       #bars:[B
    .restart local v5       #k:I
    .restart local v8       #wide:I
    :cond_6
    array-length v9, v0

    sub-int v6, v9, v8

    .line 186
    .local v6, narrow:I
    iget v9, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->x:F

    int-to-float v10, v6

    int-to-float v11, v8

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->n:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    mul-float v4, v9, v10

    .line 187
    .local v4, fullWidth:F
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 188
    iget v9, p0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->barHeight:F

    add-float v3, v9, v2

    .line 189
    .local v3, fullHeight:F
    new-instance v9, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v9, v4, v3}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    return-object v9
.end method

.method public placeBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Rectangle;
    .locals 19
    .parameter "cb"
    .parameter "barColor"
    .parameter "textColor"

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->code:Ljava/lang/String;

    .line 230
    .local v6, fullCode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->generateChecksum:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->checksumText:Z

    if-eqz v15, :cond_0

    .line 231
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v15}, Lcom/itextpdf/text/pdf/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 232
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->startStopText:Z

    if-nez v15, :cond_1

    .line 233
    const/4 v15, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 234
    :cond_1
    const/4 v5, 0x0

    .line 235
    .local v5, fontX:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v15, :cond_3

    .line 236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->altText:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->altText:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->size:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v5

    .line 238
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->generateChecksum:Z

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v15}, Lcom/itextpdf/text/pdf/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :goto_0
    invoke-static {v15}, Lcom/itextpdf/text/pdf/BarcodeCodabar;->getBarsCodabar(Ljava/lang/String;)[B

    move-result-object v4

    .line 239
    .local v4, bars:[B
    const/4 v14, 0x0

    .line 240
    .local v14, wide:I
    const/4 v8, 0x0

    .local v8, k:I
    :goto_1
    array-length v15, v4

    if-ge v8, v15, :cond_5

    .line 241
    aget-byte v15, v4, v8

    add-int/2addr v14, v15

    .line 240
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 238
    .end local v4           #bars:[B
    .end local v8           #k:I
    .end local v14           #wide:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->code:Ljava/lang/String;

    goto :goto_0

    .line 243
    .restart local v4       #bars:[B
    .restart local v8       #k:I
    .restart local v14       #wide:I
    :cond_5
    array-length v15, v4

    sub-int v9, v15, v14

    .line 244
    .local v9, narrow:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->x:F

    int-to-float v0, v9

    move/from16 v16, v0

    int-to-float v0, v14

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->n:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    mul-float v7, v15, v16

    .line 245
    .local v7, fullWidth:F
    const/4 v2, 0x0

    .line 246
    .local v2, barStartX:F
    const/4 v11, 0x0

    .line 247
    .local v11, textStartX:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->textAlignment:I

    packed-switch v15, :pswitch_data_0

    .line 257
    :pswitch_0
    cmpl-float v15, v5, v7

    if-lez v15, :cond_a

    .line 258
    sub-float v15, v5, v7

    const/high16 v16, 0x4000

    div-float v2, v15, v16

    .line 263
    :goto_2
    :pswitch_1
    const/4 v3, 0x0

    .line 264
    .local v3, barStartY:F
    const/4 v12, 0x0

    .line 265
    .local v12, textStartY:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v15, :cond_6

    .line 266
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->baseline:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_b

    .line 267
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->barHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->baseline:F

    move/from16 v16, v0

    sub-float v12, v15, v16

    .line 273
    :cond_6
    :goto_3
    const/4 v10, 0x1

    .line 274
    .local v10, print:Z
    if-eqz p2, :cond_7

    .line 275
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 276
    :cond_7
    const/4 v8, 0x0

    :goto_4
    array-length v15, v4

    if-ge v8, v15, :cond_e

    .line 277
    aget-byte v15, v4, v8

    if-nez v15, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->x:F

    .line 278
    .local v13, w:F
    :goto_5
    if-eqz v10, :cond_8

    .line 279
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->inkSpreading:F

    sub-float v15, v13, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->barHeight:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v2, v3, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 280
    :cond_8
    if-nez v10, :cond_d

    const/4 v10, 0x1

    .line 281
    :goto_6
    add-float/2addr v2, v13

    .line 276
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 251
    .end local v3           #barStartY:F
    .end local v10           #print:Z
    .end local v12           #textStartY:F
    .end local v13           #w:F
    :pswitch_2
    cmpl-float v15, v5, v7

    if-lez v15, :cond_9

    .line 252
    sub-float v2, v5, v7

    goto :goto_2

    .line 254
    :cond_9
    sub-float v11, v7, v5

    .line 255
    goto :goto_2

    .line 260
    :cond_a
    sub-float v15, v7, v5

    const/high16 v16, 0x4000

    div-float v11, v15, v16

    goto :goto_2

    .line 269
    .restart local v3       #barStartY:F
    .restart local v12       #textStartY:F
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->font:Lcom/itextpdf/text/pdf/BaseFont;

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->size:F

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v15

    neg-float v12, v15

    .line 270
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->baseline:F

    add-float v3, v12, v15

    goto :goto_3

    .line 277
    .restart local v10       #print:Z
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->n:F

    move/from16 v16, v0

    mul-float v13, v15, v16

    goto :goto_5

    .line 280
    .restart local v13       #w:F
    :cond_d
    const/4 v10, 0x0

    goto :goto_6

    .line 283
    .end local v13           #w:F
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 284
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v15, :cond_10

    .line 285
    if-eqz p3, :cond_f

    .line 286
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 287
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 288
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeCodabar;->size:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 289
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 290
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 293
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/BarcodeCodabar;->getBarcodeSize()Lcom/itextpdf/text/Rectangle;

    move-result-object v15

    return-object v15

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
