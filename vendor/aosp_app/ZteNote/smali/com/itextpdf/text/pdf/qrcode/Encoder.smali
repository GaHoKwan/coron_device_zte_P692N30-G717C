.class public final Lcom/itextpdf/text/pdf/qrcode/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final ALPHANUMERIC_TABLE:[I = null

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x24t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/BitVector;Ljava/lang/String;)V
    .locals 5
    .parameter "content"
    .parameter "bits"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 517
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 521
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 522
    aget-byte v3, v0, v1

    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    .end local v0           #bytes:[B
    .end local v1           #i:I
    :catch_0
    move-exception v2

    .line 519
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 524
    .end local v2           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #bytes:[B
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method static appendAlphanumericBytes(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/BitVector;)V
    .locals 7
    .parameter "content"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 490
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 491
    .local v3, length:I
    const/4 v2, 0x0

    .line 492
    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 493
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->getAlphanumericCode(I)I

    move-result v0

    .line 494
    .local v0, code1:I
    if-ne v0, v6, :cond_0

    .line 495
    new-instance v4, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>()V

    throw v4

    .line 497
    :cond_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_2

    .line 498
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->getAlphanumericCode(I)I

    move-result v1

    .line 499
    .local v1, code2:I
    if-ne v1, v6, :cond_1

    .line 500
    new-instance v4, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>()V

    throw v4

    .line 503
    :cond_1
    mul-int/lit8 v4, v0, 0x2d

    add-int/2addr v4, v1

    const/16 v5, 0xb

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 504
    add-int/lit8 v2, v2, 0x2

    .line 505
    goto :goto_0

    .line 507
    .end local v1           #code2:I
    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p1, v0, v4}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    .end local v0           #code1:I
    :cond_3
    return-void
.end method

.method static appendBytes(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/Mode;Lcom/itextpdf/text/pdf/qrcode/BitVector;Ljava/lang/String;)V
    .locals 3
    .parameter "content"
    .parameter "mode"
    .parameter "bits"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 452
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->NUMERIC:Lcom/itextpdf/text/pdf/qrcode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {p0, p2}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->appendNumericBytes(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/BitVector;)V

    .line 463
    :goto_0
    return-void

    .line 454
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->ALPHANUMERIC:Lcom/itextpdf/text/pdf/qrcode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-static {p0, p2}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->appendAlphanumericBytes(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/BitVector;)V

    goto :goto_0

    .line 456
    :cond_1
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->BYTE:Lcom/itextpdf/text/pdf/qrcode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    invoke-static {p0, p2, p3}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/BitVector;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_2
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->KANJI:Lcom/itextpdf/text/pdf/qrcode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 459
    invoke-static {p0, p2}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/BitVector;)V

    goto :goto_0

    .line 461
    :cond_3
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static appendECI(Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;Lcom/itextpdf/text/pdf/qrcode/BitVector;)V
    .locals 2
    .parameter "eci"
    .parameter "bits"

    .prologue
    .line 553
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->ECI:Lcom/itextpdf/text/pdf/qrcode/Mode;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/qrcode/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 555
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->getValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 556
    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/BitVector;)V
    .locals 12
    .parameter "content"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    const v11, 0x8140

    .line 529
    :try_start_0
    const-string v9, "Shift_JIS"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 533
    .local v2, bytes:[B
    array-length v6, v2

    .line 534
    .local v6, length:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 535
    aget-byte v9, v2, v5

    and-int/lit16 v0, v9, 0xff

    .line 536
    .local v0, byte1:I
    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v2, v9

    and-int/lit16 v1, v9, 0xff

    .line 537
    .local v1, byte2:I
    shl-int/lit8 v9, v0, 0x8

    or-int v3, v9, v1

    .line 538
    .local v3, code:I
    const/4 v7, -0x1

    .line 539
    .local v7, subtracted:I
    if-lt v3, v11, :cond_1

    const v9, 0x9ffc

    if-gt v3, v9, :cond_1

    .line 540
    sub-int v7, v3, v11

    .line 544
    :cond_0
    :goto_1
    const/4 v9, -0x1

    if-ne v7, v9, :cond_2

    .line 545
    new-instance v9, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v10, "Invalid byte sequence"

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 530
    .end local v0           #byte1:I
    .end local v1           #byte2:I
    .end local v2           #bytes:[B
    .end local v3           #code:I
    .end local v5           #i:I
    .end local v6           #length:I
    .end local v7           #subtracted:I
    :catch_0
    move-exception v8

    .line 531
    .local v8, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v9, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 541
    .end local v8           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #byte1:I
    .restart local v1       #byte2:I
    .restart local v2       #bytes:[B
    .restart local v3       #code:I
    .restart local v5       #i:I
    .restart local v6       #length:I
    .restart local v7       #subtracted:I
    :cond_1
    const v9, 0xe040

    if-lt v3, v9, :cond_0

    const v9, 0xebbf

    if-gt v3, v9, :cond_0

    .line 542
    const v9, 0xc140

    sub-int v7, v3, v9

    goto :goto_1

    .line 547
    :cond_2
    shr-int/lit8 v9, v7, 0x8

    mul-int/lit16 v9, v9, 0xc0

    and-int/lit16 v10, v7, 0xff

    add-int v4, v9, v10

    .line 548
    .local v4, encoded:I
    const/16 v9, 0xd

    invoke-virtual {p1, v4, v9}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 534
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 550
    .end local v0           #byte1:I
    .end local v1           #byte2:I
    .end local v3           #code:I
    .end local v4           #encoded:I
    .end local v7           #subtracted:I
    :cond_3
    return-void
.end method

.method static appendLengthInfo(IILcom/itextpdf/text/pdf/qrcode/Mode;Lcom/itextpdf/text/pdf/qrcode/BitVector;)V
    .locals 5
    .parameter "numLetters"
    .parameter "version"
    .parameter "mode"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 440
    invoke-static {p1}, Lcom/itextpdf/text/pdf/qrcode/Version;->getVersionForNumber(I)Lcom/itextpdf/text/pdf/qrcode/Version;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/text/pdf/qrcode/Mode;->getCharacterCountBits(Lcom/itextpdf/text/pdf/qrcode/Version;)I

    move-result v0

    .line 441
    .local v0, numBits:I
    shl-int v1, v4, v0

    add-int/lit8 v1, v1, -0x1

    if-le p0, v1, :cond_0

    .line 442
    new-instance v1, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is bigger than"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shl-int v3, v4, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_0
    invoke-virtual {p3, p0, v0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 445
    return-void
.end method

.method static appendModeInfo(Lcom/itextpdf/text/pdf/qrcode/Mode;Lcom/itextpdf/text/pdf/qrcode/BitVector;)V
    .locals 2
    .parameter "mode"
    .parameter "bits"

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 432
    return-void
.end method

.method static appendNumericBytes(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/BitVector;)V
    .locals 7
    .parameter "content"
    .parameter "bits"

    .prologue
    .line 466
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 467
    .local v1, length:I
    const/4 v0, 0x0

    .line 468
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 469
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v2, v5, -0x30

    .line 470
    .local v2, num1:I
    add-int/lit8 v5, v0, 0x2

    if-ge v5, v1, :cond_0

    .line 472
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 473
    .local v3, num2:I
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v4, v5, -0x30

    .line 474
    .local v4, num3:I
    mul-int/lit8 v5, v2, 0x64

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v6}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 475
    add-int/lit8 v0, v0, 0x3

    .line 476
    goto :goto_0

    .end local v3           #num2:I
    .end local v4           #num3:I
    :cond_0
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v1, :cond_1

    .line 478
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 479
    .restart local v3       #num2:I
    mul-int/lit8 v5, v2, 0xa

    add-int/2addr v5, v3

    const/4 v6, 0x7

    invoke-virtual {p1, v5, v6}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 480
    add-int/lit8 v0, v0, 0x2

    .line 481
    goto :goto_0

    .line 483
    .end local v3           #num2:I
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p1, v2, v5}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    .end local v2           #num1:I
    :cond_2
    return-void
.end method

.method private static calculateMaskPenalty(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)I
    .locals 2
    .parameter "matrix"

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, penalty:I
    invoke-static {p0}, Lcom/itextpdf/text/pdf/qrcode/MaskUtil;->applyMaskPenaltyRule1(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    invoke-static {p0}, Lcom/itextpdf/text/pdf/qrcode/MaskUtil;->applyMaskPenaltyRule2(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    invoke-static {p0}, Lcom/itextpdf/text/pdf/qrcode/MaskUtil;->applyMaskPenaltyRule3(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    invoke-static {p0}, Lcom/itextpdf/text/pdf/qrcode/MaskUtil;->applyMaskPenaltyRule4(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    return v0
.end method

.method private static chooseMaskPattern(Lcom/itextpdf/text/pdf/qrcode/BitVector;Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)I
    .locals 5
    .parameter "bits"
    .parameter "ecLevel"
    .parameter "version"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 197
    const v2, 0x7fffffff

    .line 198
    .local v2, minPenalty:I
    const/4 v0, -0x1

    .line 200
    .local v0, bestMaskPattern:I
    const/4 v1, 0x0

    .local v1, maskPattern:I
    :goto_0
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 201
    invoke-static {p0, p1, p2, v1, p3}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->buildMatrix(Lcom/itextpdf/text/pdf/qrcode/BitVector;Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 202
    invoke-static {p3}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->calculateMaskPenalty(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)I

    move-result v3

    .line 203
    .local v3, penalty:I
    if-ge v3, v2, :cond_0

    .line 204
    move v2, v3

    .line 205
    move v0, v1

    .line 200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v3           #penalty:I
    :cond_1
    return v0
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/itextpdf/text/pdf/qrcode/Mode;
    .locals 1
    .parameter "content"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/qrcode/Mode;

    move-result-object v0

    return-object v0
.end method

.method public static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/qrcode/Mode;
    .locals 6
    .parameter "content"
    .parameter "encoding"

    .prologue
    .line 150
    const-string v4, "Shift_JIS"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    invoke-static {p0}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/itextpdf/text/pdf/qrcode/Mode;->KANJI:Lcom/itextpdf/text/pdf/qrcode/Mode;

    .line 171
    :goto_0
    return-object v4

    .line 152
    :cond_0
    sget-object v4, Lcom/itextpdf/text/pdf/qrcode/Mode;->BYTE:Lcom/itextpdf/text/pdf/qrcode/Mode;

    goto :goto_0

    .line 154
    :cond_1
    const/4 v2, 0x0

    .line 155
    .local v2, hasNumeric:Z
    const/4 v1, 0x0

    .line 156
    .local v1, hasAlphanumeric:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 157
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 158
    .local v0, c:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    const/16 v4, 0x39

    if-gt v0, v4, :cond_2

    .line 159
    const/4 v2, 0x1

    .line 156
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->getAlphanumericCode(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 161
    const/4 v1, 0x1

    goto :goto_2

    .line 163
    :cond_3
    sget-object v4, Lcom/itextpdf/text/pdf/qrcode/Mode;->BYTE:Lcom/itextpdf/text/pdf/qrcode/Mode;

    goto :goto_0

    .line 166
    .end local v0           #c:C
    :cond_4
    if-eqz v1, :cond_5

    .line 167
    sget-object v4, Lcom/itextpdf/text/pdf/qrcode/Mode;->ALPHANUMERIC:Lcom/itextpdf/text/pdf/qrcode/Mode;

    goto :goto_0

    .line 168
    :cond_5
    if-eqz v2, :cond_6

    .line 169
    sget-object v4, Lcom/itextpdf/text/pdf/qrcode/Mode;->NUMERIC:Lcom/itextpdf/text/pdf/qrcode/Mode;

    goto :goto_0

    .line 171
    :cond_6
    sget-object v4, Lcom/itextpdf/text/pdf/qrcode/Mode;->BYTE:Lcom/itextpdf/text/pdf/qrcode/Mode;

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;Lcom/itextpdf/text/pdf/qrcode/QRCode;)V
    .locals 1
    .parameter "content"
    .parameter "ecLevel"
    .parameter "qrCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->encode(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;Ljava/util/Map;Lcom/itextpdf/text/pdf/qrcode/QRCode;)V

    .line 70
    return-void
.end method

.method public static encode(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;Ljava/util/Map;Lcom/itextpdf/text/pdf/qrcode/QRCode;)V
    .locals 12
    .parameter "content"
    .parameter "ecLevel"
    .parameter
    .parameter "qrCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/itextpdf/text/pdf/qrcode/QRCode;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 75
    .local p2, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;Ljava/lang/Object;>;"
    if-nez p2, :cond_2

    const/4 v2, 0x0

    .line 76
    .local v2, encoding:Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_0

    .line 77
    const-string v2, "ISO-8859-1"

    .line 81
    :cond_0
    invoke-static {p0, v2}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/qrcode/Mode;

    move-result-object v6

    .line 84
    .local v6, mode:Lcom/itextpdf/text/pdf/qrcode/Mode;
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/BitVector;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;-><init>()V

    .line 85
    .local v0, dataBits:Lcom/itextpdf/text/pdf/qrcode/BitVector;
    invoke-static {p0, v6, v0, v2}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->appendBytes(Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/Mode;Lcom/itextpdf/text/pdf/qrcode/BitVector;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBytes()I

    move-result v7

    .line 88
    .local v7, numInputBytes:I
    invoke-static {v7, p1, v6, p3}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->initQRCode(ILcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;Lcom/itextpdf/text/pdf/qrcode/Mode;Lcom/itextpdf/text/pdf/qrcode/QRCode;)V

    .line 91
    new-instance v4, Lcom/itextpdf/text/pdf/qrcode/BitVector;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/qrcode/BitVector;-><init>()V

    .line 94
    .local v4, headerAndDataBits:Lcom/itextpdf/text/pdf/qrcode/BitVector;
    sget-object v9, Lcom/itextpdf/text/pdf/qrcode/Mode;->BYTE:Lcom/itextpdf/text/pdf/qrcode/Mode;

    if-ne v6, v9, :cond_1

    const-string v9, "ISO-8859-1"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 95
    invoke-static {v2}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;

    move-result-object v1

    .line 96
    .local v1, eci:Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;
    if-eqz v1, :cond_1

    .line 97
    invoke-static {v1, v4}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->appendECI(Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;Lcom/itextpdf/text/pdf/qrcode/BitVector;)V

    .line 101
    .end local v1           #eci:Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;
    :cond_1
    invoke-static {v6, v4}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->appendModeInfo(Lcom/itextpdf/text/pdf/qrcode/Mode;Lcom/itextpdf/text/pdf/qrcode/BitVector;)V

    .line 103
    sget-object v9, Lcom/itextpdf/text/pdf/qrcode/Mode;->BYTE:Lcom/itextpdf/text/pdf/qrcode/Mode;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBytes()I

    move-result v8

    .line 104
    .local v8, numLetters:I
    :goto_1
    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->getVersion()I

    move-result v9

    invoke-static {v8, v9, v6, v4}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->appendLengthInfo(IILcom/itextpdf/text/pdf/qrcode/Mode;Lcom/itextpdf/text/pdf/qrcode/BitVector;)V

    .line 105
    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBitVector(Lcom/itextpdf/text/pdf/qrcode/BitVector;)V

    .line 108
    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->getNumDataBytes()I

    move-result v9

    invoke-static {v9, v4}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->terminateBits(ILcom/itextpdf/text/pdf/qrcode/BitVector;)V

    .line 111
    new-instance v3, Lcom/itextpdf/text/pdf/qrcode/BitVector;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/qrcode/BitVector;-><init>()V

    .line 112
    .local v3, finalBits:Lcom/itextpdf/text/pdf/qrcode/BitVector;
    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->getNumTotalBytes()I

    move-result v9

    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->getNumDataBytes()I

    move-result v10

    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->getNumRSBlocks()I

    move-result v11

    invoke-static {v4, v9, v10, v11, v3}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->interleaveWithECBytes(Lcom/itextpdf/text/pdf/qrcode/BitVector;IIILcom/itextpdf/text/pdf/qrcode/BitVector;)V

    .line 116
    new-instance v5, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->getMatrixWidth()I

    move-result v9

    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->getMatrixWidth()I

    move-result v10

    invoke-direct {v5, v9, v10}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;-><init>(II)V

    .line 117
    .local v5, matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;
    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->getECLevel()Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    move-result-object v9

    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->getVersion()I

    move-result v10

    invoke-static {v3, v9, v10, v5}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->chooseMaskPattern(Lcom/itextpdf/text/pdf/qrcode/BitVector;Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)I

    move-result v9

    invoke-virtual {p3, v9}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->setMaskPattern(I)V

    .line 121
    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->getECLevel()Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    move-result-object v9

    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->getVersion()I

    move-result v10

    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->getMaskPattern()I

    move-result v11

    invoke-static {v3, v9, v10, v11, v5}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->buildMatrix(Lcom/itextpdf/text/pdf/qrcode/BitVector;Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 123
    invoke-virtual {p3, v5}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->setMatrix(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 125
    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->isValid()Z

    move-result v9

    if-nez v9, :cond_4

    .line 126
    new-instance v9, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid QR code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 75
    .end local v0           #dataBits:Lcom/itextpdf/text/pdf/qrcode/BitVector;
    .end local v2           #encoding:Ljava/lang/String;
    .end local v3           #finalBits:Lcom/itextpdf/text/pdf/qrcode/BitVector;
    .end local v4           #headerAndDataBits:Lcom/itextpdf/text/pdf/qrcode/BitVector;
    .end local v5           #matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;
    .end local v6           #mode:Lcom/itextpdf/text/pdf/qrcode/Mode;
    .end local v7           #numInputBytes:I
    .end local v8           #numLetters:I
    :cond_2
    sget-object v9, Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;->CHARACTER_SET:Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v2, v9

    goto/16 :goto_0

    .line 103
    .restart local v0       #dataBits:Lcom/itextpdf/text/pdf/qrcode/BitVector;
    .restart local v2       #encoding:Ljava/lang/String;
    .restart local v4       #headerAndDataBits:Lcom/itextpdf/text/pdf/qrcode/BitVector;
    .restart local v6       #mode:Lcom/itextpdf/text/pdf/qrcode/Mode;
    .restart local v7       #numInputBytes:I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    goto/16 :goto_1

    .line 128
    .restart local v3       #finalBits:Lcom/itextpdf/text/pdf/qrcode/BitVector;
    .restart local v5       #matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;
    .restart local v8       #numLetters:I
    :cond_4
    return-void
.end method

.method static generateECBytes(Lcom/itextpdf/text/pdf/qrcode/ByteArray;I)Lcom/itextpdf/text/pdf/qrcode/ByteArray;
    .locals 6
    .parameter "dataBytes"
    .parameter "numEcBytesInBlock"

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/ByteArray;->size()I

    move-result v2

    .line 414
    .local v2, numDataBytes:I
    add-int v4, v2, p1

    new-array v3, v4, [I

    .line 415
    .local v3, toEncode:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 416
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/qrcode/ByteArray;->at(I)I

    move-result v4

    aput v4, v3, v1

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_0
    new-instance v4, Lcom/itextpdf/text/pdf/qrcode/ReedSolomonEncoder;

    sget-object v5, Lcom/itextpdf/text/pdf/qrcode/GF256;->QR_CODE_FIELD:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/qrcode/ReedSolomonEncoder;-><init>(Lcom/itextpdf/text/pdf/qrcode/GF256;)V

    invoke-virtual {v4, v3, p1}, Lcom/itextpdf/text/pdf/qrcode/ReedSolomonEncoder;->encode([II)V

    .line 420
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/ByteArray;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/qrcode/ByteArray;-><init>(I)V

    .line 421
    .local v0, ecBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 422
    add-int v4, v2, v1

    aget v4, v3, v4

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/pdf/qrcode/ByteArray;->set(II)V

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 424
    :cond_1
    return-object v0
.end method

.method static getAlphanumericCode(I)I
    .locals 1
    .parameter "code"

    .prologue
    .line 135
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 136
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v0, v0, p0

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 10
    .parameter "numTotalBytes"
    .parameter "numDataBytes"
    .parameter "numRSBlocks"
    .parameter "blockID"
    .parameter "numDataBytesInBlock"
    .parameter "numECBytesInBlock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 301
    if-lt p3, p2, :cond_0

    .line 302
    new-instance v8, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v9, "Block ID too large"

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 305
    :cond_0
    rem-int v5, p0, p2

    .line 307
    .local v5, numRsBlocksInGroup2:I
    sub-int v4, p2, v5

    .line 309
    .local v4, numRsBlocksInGroup1:I
    div-int v6, p0, p2

    .line 311
    .local v6, numTotalBytesInGroup1:I
    add-int/lit8 v7, v6, 0x1

    .line 313
    .local v7, numTotalBytesInGroup2:I
    div-int v0, p1, p2

    .line 315
    .local v0, numDataBytesInGroup1:I
    add-int/lit8 v1, v0, 0x1

    .line 317
    .local v1, numDataBytesInGroup2:I
    sub-int v2, v6, v0

    .line 319
    .local v2, numEcBytesInGroup1:I
    sub-int v3, v7, v1

    .line 322
    .local v3, numEcBytesInGroup2:I
    if-eq v2, v3, :cond_1

    .line 323
    new-instance v8, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v9, "EC bytes mismatch"

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 326
    :cond_1
    add-int v8, v4, v5

    if-eq p2, v8, :cond_2

    .line 327
    new-instance v8, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v9, "RS blocks mismatch"

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 330
    :cond_2
    add-int v8, v0, v2

    mul-int/2addr v8, v4

    add-int v9, v1, v3

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    if-eq p0, v8, :cond_3

    .line 335
    new-instance v8, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v9, "Total bytes mismatch"

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 338
    :cond_3
    if-ge p3, v4, :cond_4

    .line 339
    const/4 v8, 0x0

    aput v0, p4, v8

    .line 340
    const/4 v8, 0x0

    aput v2, p5, v8

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_4
    const/4 v8, 0x0

    aput v1, p4, v8

    .line 343
    const/4 v8, 0x0

    aput v3, p5, v8

    goto :goto_0
.end method

.method private static initQRCode(ILcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;Lcom/itextpdf/text/pdf/qrcode/Mode;Lcom/itextpdf/text/pdf/qrcode/QRCode;)V
    .locals 9
    .parameter "numInputBytes"
    .parameter "ecLevel"
    .parameter "mode"
    .parameter "qrCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p3, p1}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->setECLevel(Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;)V

    .line 218
    invoke-virtual {p3, p2}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->setMode(Lcom/itextpdf/text/pdf/qrcode/Mode;)V

    .line 221
    const/4 v6, 0x1

    .local v6, versionNum:I
    :goto_0
    const/16 v7, 0x28

    if-gt v6, v7, :cond_1

    .line 222
    invoke-static {v6}, Lcom/itextpdf/text/pdf/qrcode/Version;->getVersionForNumber(I)Lcom/itextpdf/text/pdf/qrcode/Version;

    move-result-object v5

    .line 224
    .local v5, version:Lcom/itextpdf/text/pdf/qrcode/Version;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/qrcode/Version;->getTotalCodewords()I

    move-result v1

    .line 226
    .local v1, numBytes:I
    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/qrcode/Version;->getECBlocksForLevel(Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;)Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;

    move-result-object v0

    .line 227
    .local v0, ecBlocks:Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;->getTotalECCodewords()I

    move-result v3

    .line 229
    .local v3, numEcBytes:I
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;->getNumBlocks()I

    move-result v4

    .line 231
    .local v4, numRSBlocks:I
    sub-int v2, v1, v3

    .line 235
    .local v2, numDataBytes:I
    add-int/lit8 v7, p0, 0x3

    if-lt v2, v7, :cond_0

    .line 237
    invoke-virtual {p3, v6}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->setVersion(I)V

    .line 238
    invoke-virtual {p3, v1}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->setNumTotalBytes(I)V

    .line 239
    invoke-virtual {p3, v2}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->setNumDataBytes(I)V

    .line 240
    invoke-virtual {p3, v4}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->setNumRSBlocks(I)V

    .line 242
    invoke-virtual {p3, v3}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->setNumECBytes(I)V

    .line 244
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/qrcode/Version;->getDimensionForVersion()I

    move-result v7

    invoke-virtual {p3, v7}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->setMatrixWidth(I)V

    .line 245
    return-void

    .line 221
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 248
    .end local v0           #ecBlocks:Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;
    .end local v1           #numBytes:I
    .end local v2           #numDataBytes:I
    .end local v3           #numEcBytes:I
    .end local v4           #numRSBlocks:I
    .end local v5           #version:Lcom/itextpdf/text/pdf/qrcode/Version;
    :cond_1
    new-instance v7, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v8, "Cannot find proper rs block info (input data too big?)"

    invoke-direct {v7, v8}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method static interleaveWithECBytes(Lcom/itextpdf/text/pdf/qrcode/BitVector;IIILcom/itextpdf/text/pdf/qrcode/BitVector;)V
    .locals 14
    .parameter "bits"
    .parameter "numTotalBytes"
    .parameter "numDataBytes"
    .parameter "numRSBlocks"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBytes()I

    move-result v1

    move/from16 v0, p2

    if-eq v1, v0, :cond_0

    .line 356
    new-instance v1, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v2, "Number of bits and data bytes does not match"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :cond_0
    const/4 v9, 0x0

    .line 362
    .local v9, dataBytesOffset:I
    const/4 v12, 0x0

    .line 363
    .local v12, maxNumDataBytes:I
    const/4 v13, 0x0

    .line 366
    .local v13, maxNumEcBytes:I
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .local v7, blocks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/qrcode/BlockPair;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_1

    .line 369
    const/4 v1, 0x1

    new-array v5, v1, [I

    .line 370
    .local v5, numDataBytesInBlock:[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .local v6, numEcBytesInBlock:[I
    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 371
    invoke-static/range {v1 .. v6}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    .line 375
    new-instance v8, Lcom/itextpdf/text/pdf/qrcode/ByteArray;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/qrcode/ByteArray;-><init>()V

    .line 376
    .local v8, dataBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->getArray()[B

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v5, v2

    invoke-virtual {v8, v1, v9, v2}, Lcom/itextpdf/text/pdf/qrcode/ByteArray;->set([BII)V

    .line 377
    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-static {v8, v1}, Lcom/itextpdf/text/pdf/qrcode/Encoder;->generateECBytes(Lcom/itextpdf/text/pdf/qrcode/ByteArray;I)Lcom/itextpdf/text/pdf/qrcode/ByteArray;

    move-result-object v10

    .line 378
    .local v10, ecBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;
    new-instance v1, Lcom/itextpdf/text/pdf/qrcode/BlockPair;

    invoke-direct {v1, v8, v10}, Lcom/itextpdf/text/pdf/qrcode/BlockPair;-><init>(Lcom/itextpdf/text/pdf/qrcode/ByteArray;Lcom/itextpdf/text/pdf/qrcode/ByteArray;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/qrcode/ByteArray;->size()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 381
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/qrcode/ByteArray;->size()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 382
    const/4 v1, 0x0

    aget v1, v5, v1

    add-int/2addr v9, v1

    .line 368
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 384
    .end local v5           #numDataBytesInBlock:[I
    .end local v6           #numEcBytesInBlock:[I
    .end local v8           #dataBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;
    .end local v10           #ecBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;
    :cond_1
    move/from16 v0, p2

    if-eq v0, v9, :cond_2

    .line 385
    new-instance v1, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v2, "Data bytes does not match offset"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v12, :cond_5

    .line 390
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 391
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/qrcode/BlockPair;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/qrcode/BlockPair;->getDataBytes()Lcom/itextpdf/text/pdf/qrcode/ByteArray;

    move-result-object v8

    .line 392
    .restart local v8       #dataBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/qrcode/ByteArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 393
    invoke-virtual {v8, v4}, Lcom/itextpdf/text/pdf/qrcode/ByteArray;->at(I)I

    move-result v1

    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 390
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 389
    .end local v8           #dataBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 398
    .end local v11           #j:I
    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v13, :cond_8

    .line 399
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_7

    .line 400
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/qrcode/BlockPair;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/qrcode/BlockPair;->getErrorCorrectionBytes()Lcom/itextpdf/text/pdf/qrcode/ByteArray;

    move-result-object v10

    .line 401
    .restart local v10       #ecBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/qrcode/ByteArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 402
    invoke-virtual {v10, v4}, Lcom/itextpdf/text/pdf/qrcode/ByteArray;->at(I)I

    move-result v1

    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 399
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 398
    .end local v10           #ecBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 406
    .end local v11           #j:I
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBytes()I

    move-result v1

    if-eq p1, v1, :cond_9

    .line 407
    new-instance v1, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interleaving error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBytes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " differ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_9
    return-void
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 7
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    .line 177
    :try_start_0
    const-string v6, "Shift_JIS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 181
    .local v1, bytes:[B
    array-length v3, v1

    .line 182
    .local v3, length:I
    rem-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    .line 191
    .end local v1           #bytes:[B
    .end local v3           #length:I
    :cond_0
    :goto_0
    return v5

    .line 178
    :catch_0
    move-exception v4

    .line 179
    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 185
    .end local v4           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #bytes:[B
    .restart local v3       #length:I
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 186
    aget-byte v6, v1, v2

    and-int/lit16 v0, v6, 0xff

    .line 187
    .local v0, byte1:I
    const/16 v6, 0x81

    if-lt v0, v6, :cond_2

    const/16 v6, 0x9f

    if-le v0, v6, :cond_3

    :cond_2
    const/16 v6, 0xe0

    if-lt v0, v6, :cond_0

    const/16 v6, 0xeb

    if-gt v0, v6, :cond_0

    .line 185
    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 191
    .end local v0           #byte1:I
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method static terminateBits(ILcom/itextpdf/text/pdf/qrcode/BitVector;)V
    .locals 8
    .parameter "numDataBytes"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 255
    shl-int/lit8 v0, p0, 0x3

    .line 256
    .local v0, capacity:I
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v5

    if-le v5, v0, :cond_0

    .line 257
    new-instance v5, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data bits cannot fit in the QR Code"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 264
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v5

    if-ge v5, v0, :cond_1

    .line 265
    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBit(I)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v5

    rem-int/lit8 v2, v5, 0x8

    .line 269
    .local v2, numBitsInLastByte:I
    if-lez v2, :cond_2

    .line 270
    rsub-int/lit8 v3, v2, 0x8

    .line 271
    .local v3, numPaddingBits:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 272
    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBit(I)V

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    .end local v3           #numPaddingBits:I
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 277
    new-instance v5, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v6, "Number of bits is not a multiple of 8"

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 280
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBytes()I

    move-result v5

    sub-int v4, p0, v5

    .line 281
    .local v4, numPaddingBytes:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_5

    .line 282
    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_4

    .line 283
    const/16 v5, 0xec

    invoke-virtual {p1, v5, v7}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 281
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 285
    :cond_4
    const/16 v5, 0x11

    invoke-virtual {p1, v5, v7}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    goto :goto_3

    .line 288
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v5

    if-eq v5, v0, :cond_6

    .line 289
    new-instance v5, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v6, "Bits size does not equal capacity"

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 291
    :cond_6
    return-void
.end method
