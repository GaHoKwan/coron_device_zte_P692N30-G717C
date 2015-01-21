.class public Lcom/itextpdf/text/pdf/codec/TiffImage;
.super Ljava/lang/Object;
.source "TiffImage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ProcessExtraSamples(Ljava/util/zip/DeflaterOutputStream;Ljava/util/zip/DeflaterOutputStream;[BIIII)Lcom/itextpdf/text/Image;
    .locals 11
    .parameter "zip"
    .parameter "mzip"
    .parameter "outBuf"
    .parameter "samplePerPixel"
    .parameter "bitsPerSample"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    const/16 v8, 0x8

    if-ne p4, v8, :cond_2

    .line 538
    mul-int v8, p5, p6

    new-array v1, v8, [B

    .line 539
    .local v1, mask:[B
    const/4 v2, 0x0

    .line 540
    .local v2, mptr:I
    const/4 v4, 0x0

    .line 541
    .local v4, optr:I
    mul-int v8, p5, p6

    mul-int v7, v8, p3

    .line 542
    .local v7, total:I
    const/4 v0, 0x0

    .local v0, k:I
    move v3, v2

    .end local v2           #mptr:I
    .local v3, mptr:I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 543
    const/4 v6, 0x0

    .local v6, s:I
    move v5, v4

    .end local v4           #optr:I
    .local v5, optr:I
    :goto_1
    add-int/lit8 v8, p3, -0x1

    if-ge v6, v8, :cond_0

    .line 544
    add-int/lit8 v4, v5, 0x1

    .end local v5           #optr:I
    .restart local v4       #optr:I
    add-int v8, v0, v6

    aget-byte v8, p2, v8

    aput-byte v8, p2, v5

    .line 543
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    .end local v4           #optr:I
    .restart local v5       #optr:I
    goto :goto_1

    .line 546
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #mptr:I
    .restart local v2       #mptr:I
    add-int v8, v0, p3

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, p2, v8

    aput-byte v8, v1, v3

    .line 542
    add-int/2addr v0, p3

    move v4, v5

    .end local v5           #optr:I
    .restart local v4       #optr:I
    move v3, v2

    .end local v2           #mptr:I
    .restart local v3       #mptr:I
    goto :goto_0

    .line 548
    .end local v6           #s:I
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p0, p2, v8, v4}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 549
    const/4 v8, 0x0

    invoke-virtual {p1, v1, v8, v3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 553
    const/4 v8, 0x0

    return-object v8

    .line 552
    .end local v0           #k:I
    .end local v1           #mask:[B
    .end local v3           #mptr:I
    .end local v4           #optr:I
    .end local v7           #total:I
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "extra.samples.are.not.supported"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static decodePackbits([B[B)V
    .locals 8
    .parameter "data"
    .parameter "dst"

    .prologue
    .line 574
    const/4 v5, 0x0

    .local v5, srcCount:I
    const/4 v1, 0x0

    .local v1, dstCount:I
    move v6, v5

    .line 578
    .end local v5           #srcCount:I
    .local v6, srcCount:I
    :goto_0
    :try_start_0
    array-length v7, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, v7, :cond_4

    .line 579
    add-int/lit8 v5, v6, 0x1

    .end local v6           #srcCount:I
    .restart local v5       #srcCount:I
    :try_start_1
    aget-byte v0, p0, v6

    .line 580
    .local v0, b:B
    if-ltz v0, :cond_1

    const/16 v7, 0x7f

    if-gt v0, v7, :cond_1

    .line 582
    const/4 v3, 0x0

    .local v3, i:I
    move v2, v1

    .end local v1           #dstCount:I
    .local v2, dstCount:I
    move v6, v5

    .end local v5           #srcCount:I
    .restart local v6       #srcCount:I
    :goto_1
    add-int/lit8 v7, v0, 0x1

    if-ge v3, v7, :cond_0

    .line 583
    add-int/lit8 v1, v2, 0x1

    .end local v2           #dstCount:I
    .restart local v1       #dstCount:I
    add-int/lit8 v5, v6, 0x1

    .end local v6           #srcCount:I
    .restart local v5       #srcCount:I
    aget-byte v7, p0, v6

    aput-byte v7, p1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 582
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #dstCount:I
    .restart local v2       #dstCount:I
    move v6, v5

    .end local v5           #srcCount:I
    .restart local v6       #srcCount:I
    goto :goto_1

    :cond_0
    move v1, v2

    .end local v2           #dstCount:I
    .restart local v1       #dstCount:I
    goto :goto_0

    .line 586
    .end local v3           #i:I
    .end local v6           #srcCount:I
    .restart local v5       #srcCount:I
    :cond_1
    const/4 v7, -0x1

    if-gt v0, v7, :cond_3

    const/16 v7, -0x7f

    if-lt v0, v7, :cond_3

    .line 588
    add-int/lit8 v6, v5, 0x1

    .end local v5           #srcCount:I
    .restart local v6       #srcCount:I
    :try_start_2
    aget-byte v4, p0, v5

    .line 589
    .local v4, repeat:B
    const/4 v3, 0x0

    .restart local v3       #i:I
    move v2, v1

    .end local v1           #dstCount:I
    .restart local v2       #dstCount:I
    :goto_2
    neg-int v7, v0

    add-int/lit8 v7, v7, 0x1

    if-ge v3, v7, :cond_2

    .line 590
    add-int/lit8 v1, v2, 0x1

    .end local v2           #dstCount:I
    .restart local v1       #dstCount:I
    aput-byte v4, p1, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 589
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #dstCount:I
    .restart local v2       #dstCount:I
    goto :goto_2

    :cond_2
    move v1, v2

    .end local v2           #dstCount:I
    .restart local v1       #dstCount:I
    goto :goto_0

    .line 594
    .end local v3           #i:I
    .end local v4           #repeat:B
    .end local v6           #srcCount:I
    .restart local v5       #srcCount:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    .end local v5           #srcCount:I
    .restart local v6       #srcCount:I
    goto :goto_0

    .end local v0           #b:B
    :cond_4
    move v5, v6

    .line 601
    .end local v6           #srcCount:I
    .restart local v5       #srcCount:I
    :goto_3
    return-void

    .line 598
    .end local v5           #srcCount:I
    .restart local v6       #srcCount:I
    :catch_0
    move-exception v7

    move v5, v6

    .end local v6           #srcCount:I
    .restart local v5       #srcCount:I
    goto :goto_3

    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method static getArrayLongShort(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;I)[J
    .locals 6
    .parameter "dir"
    .parameter "tag"

    .prologue
    .line 557
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v0

    .line 558
    .local v0, field:Lcom/itextpdf/text/pdf/codec/TIFFField;
    if-nez v0, :cond_1

    .line 559
    const/4 v2, 0x0

    .line 569
    :cond_0
    :goto_0
    return-object v2

    .line 561
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 562
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsLongs()[J

    move-result-object v2

    .local v2, offset:[J
    goto :goto_0

    .line 564
    .end local v2           #offset:[J
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsChars()[C

    move-result-object v3

    .line 565
    .local v3, temp:[C
    array-length v4, v3

    new-array v2, v4, [J

    .line 566
    .restart local v2       #offset:[J
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 567
    aget-char v4, v3, v1

    int-to-long v4, v4

    aput-wide v4, v2, v1

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static getDpi(Lcom/itextpdf/text/pdf/codec/TIFFField;I)I
    .locals 9
    .parameter "fd"
    .parameter "resolutionUnit"

    .prologue
    const-wide/high16 v7, 0x3fe0

    const/4 v0, 0x0

    .line 83
    if-nez p0, :cond_0

    .line 97
    :goto_0
    return v0

    .line 85
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsRational(I)[J

    move-result-object v2

    .line 86
    .local v2, res:[J
    aget-wide v3, v2, v0

    long-to-float v3, v3

    const/4 v4, 0x1

    aget-wide v4, v2, v4

    long-to-float v4, v4

    div-float v1, v3, v4

    .line 87
    .local v1, frac:F
    const/4 v0, 0x0

    .line 88
    .local v0, dpi:I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    float-to-double v3, v1

    add-double/2addr v3, v7

    double-to-int v0, v3

    .line 92
    goto :goto_0

    .line 94
    :pswitch_1
    float-to-double v3, v1

    const-wide v5, 0x400451eb851eb852L

    mul-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v0, v3

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNumberOfPages(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 75
    :try_start_0
    invoke-static {p0}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getNumDirectories(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getTiffImage(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;I)Lcom/itextpdf/text/Image;
    .locals 1
    .parameter "s"
    .parameter "page"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getTiffImage(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;IZ)Lcom/itextpdf/text/Image;

    move-result-object v0

    return-object v0
.end method

.method public static getTiffImage(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;IZ)Lcom/itextpdf/text/Image;
    .locals 55
    .parameter "s"
    .parameter "page"
    .parameter "direct"

    .prologue
    .line 118
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ge v0, v5, :cond_0

    .line 119
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v11, "the.page.number.must.be.gt.eq.1"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    :cond_0
    :try_start_0
    new-instance v31, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;

    add-int/lit8 v5, p1, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;I)V

    .line 122
    .local v31, dir:Lcom/itextpdf/text/pdf/codec/TIFFDirectory;
    const/16 v5, 0x142

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v11, "tiles.are.not.supported"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v31           #dir:Lcom/itextpdf/text/pdf/codec/TIFFDirectory;
    :catch_0
    move-exception v34

    .line 280
    .local v34, e:Ljava/lang/Exception;
    new-instance v5, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v34

    invoke-direct {v5, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 124
    .end local v34           #e:Ljava/lang/Exception;
    .restart local v31       #dir:Lcom/itextpdf/text/pdf/codec/TIFFDirectory;
    :cond_1
    const/16 v5, 0x103

    :try_start_1
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v0, v11

    move/from16 v30, v0

    .line 125
    .local v30, compression:I
    sparse-switch v30, :sswitch_data_0

    .line 132
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getTiffImageColor(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)Lcom/itextpdf/text/Image;

    move-result-object v41

    .line 277
    :cond_2
    :goto_0
    return-object v41

    .line 134
    :sswitch_0
    const/16 v49, 0x0

    .line 135
    .local v49, rotation:F
    const/16 v5, 0x112

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 136
    const/16 v5, 0x112

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v0, v11

    move/from16 v48, v0

    .line 137
    .local v48, rot:I
    const/4 v5, 0x3

    move/from16 v0, v48

    if-eq v0, v5, :cond_3

    const/4 v5, 0x4

    move/from16 v0, v48

    if-ne v0, v5, :cond_11

    .line 138
    :cond_3
    const v49, 0x40490fdb

    .line 145
    .end local v48           #rot:I
    :cond_4
    :goto_1
    const/16 v41, 0x0

    .line 146
    .local v41, img:Lcom/itextpdf/text/Image;
    const-wide/16 v14, 0x0

    .line 147
    .local v14, tiffT4Options:J
    const-wide/16 v21, 0x0

    .line 148
    .local v21, tiffT6Options:J
    const/16 v37, 0x1

    .line 149
    .local v37, fillOrder:I
    const/16 v5, 0x101

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v4, v11

    .line 150
    .local v4, h:I
    const/16 v5, 0x100

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v3, v11

    .line 151
    .local v3, w:I
    const/16 v32, 0x0

    .line 152
    .local v32, dpiX:I
    const/16 v33, 0x0

    .line 153
    .local v33, dpiY:I
    const/16 v29, 0x0

    .line 154
    .local v29, XYRatio:F
    const/16 v46, 0x2

    .line 155
    .local v46, resolutionUnit:I
    const/16 v5, 0x128

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 156
    const/16 v5, 0x128

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v0, v11

    move/from16 v46, v0

    .line 157
    :cond_5
    const/16 v5, 0x11a

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v5

    move/from16 v0, v46

    invoke-static {v5, v0}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getDpi(Lcom/itextpdf/text/pdf/codec/TIFFField;I)I

    move-result v32

    .line 158
    const/16 v5, 0x11b

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v5

    move/from16 v0, v46

    invoke-static {v5, v0}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getDpi(Lcom/itextpdf/text/pdf/codec/TIFFField;I)I

    move-result v33

    .line 159
    const/4 v5, 0x1

    move/from16 v0, v46

    if-ne v0, v5, :cond_7

    .line 160
    if-eqz v33, :cond_6

    .line 161
    move/from16 v0, v32

    int-to-float v5, v0

    move/from16 v0, v33

    int-to-float v11, v0

    div-float v29, v5, v11

    .line 162
    :cond_6
    const/16 v32, 0x0

    .line 163
    const/16 v33, 0x0

    .line 165
    :cond_7
    move/from16 v51, v4

    .line 166
    .local v51, rowsStrip:I
    const/16 v5, 0x116

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 167
    const/16 v5, 0x116

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v0, v11

    move/from16 v51, v0

    .line 168
    :cond_8
    if-lez v51, :cond_9

    move/from16 v0, v51

    if-le v0, v4, :cond_a

    .line 169
    :cond_9
    move/from16 v51, v4

    .line 170
    :cond_a
    const/16 v5, 0x111

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getArrayLongShort(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;I)[J

    move-result-object v43

    .line 171
    .local v43, offset:[J
    const/16 v5, 0x117

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getArrayLongShort(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;I)[J

    move-result-object v52

    .line 172
    .local v52, size:[J
    if-eqz v52, :cond_b

    move-object/from16 v0, v52

    array-length v5, v0

    const/4 v11, 0x1

    if-ne v5, v11, :cond_c

    const/4 v5, 0x0

    aget-wide v11, v52, v5

    const-wide/16 v16, 0x0

    cmp-long v5, v11, v16

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    aget-wide v11, v52, v5

    const/4 v5, 0x0

    aget-wide v16, v43, v5

    add-long v11, v11, v16

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v16

    cmp-long v5, v11, v16

    if-lez v5, :cond_c

    :cond_b
    move/from16 v0, v51

    if-ne v4, v0, :cond_c

    .line 173
    const/4 v5, 0x1

    new-array v0, v5, [J

    move-object/from16 v52, v0

    .end local v52           #size:[J
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v11

    const/16 v16, 0x0

    aget-wide v16, v43, v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v11, v11, v16

    aput-wide v11, v52, v5

    .line 175
    .restart local v52       #size:[J
    :cond_c
    const/16 v47, 0x0

    .line 176
    .local v47, reverse:Z
    const/16 v5, 0x10a

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v38

    .line 177
    .local v38, fillOrderField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    if-eqz v38, :cond_d

    .line 178
    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsInt(I)I

    move-result v37

    .line 179
    :cond_d
    const/4 v5, 0x2

    move/from16 v0, v37

    if-ne v0, v5, :cond_15

    const/16 v47, 0x1

    .line 180
    :goto_2
    const/4 v7, 0x0

    .line 181
    .local v7, params:I
    const/16 v5, 0x106

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 182
    const/16 v5, 0x106

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v44

    .line 183
    .local v44, photo:J
    const-wide/16 v11, 0x1

    cmp-long v5, v44, v11

    if-nez v5, :cond_e

    .line 184
    or-int/lit8 v7, v7, 0x1

    .line 186
    .end local v44           #photo:J
    :cond_e
    const/4 v6, 0x0

    .line 187
    .local v6, imagecomp:I
    sparse-switch v30, :sswitch_data_1

    .line 212
    :cond_f
    :goto_3
    if-eqz p2, :cond_17

    move/from16 v0, v51

    if-ne v0, v4, :cond_17

    .line 213
    const/4 v5, 0x0

    aget-wide v11, v52, v5

    long-to-int v5, v11

    new-array v8, v5, [B

    .line 214
    .local v8, im:[B
    const/4 v5, 0x0

    aget-wide v11, v43, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 216
    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/itextpdf/text/Image;->getInstance(IIZII[B)Lcom/itextpdf/text/Image;

    move-result-object v41

    .line 217
    const/4 v5, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/Image;->setInverted(Z)V

    .line 261
    .end local v8           #im:[B
    :goto_4
    move-object/from16 v0, v41

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/Image;->setDpi(II)V

    .line 262
    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->setXYRatio(F)V

    .line 263
    const v5, 0x8773

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_10

    .line 265
    const v5, 0x8773

    :try_start_2
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v36

    .line 266
    .local v36, fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/ICC_Profile;->getInstance([B)Lcom/itextpdf/text/pdf/ICC_Profile;

    move-result-object v40

    .line 267
    .local v40, icc_prof:Lcom/itextpdf/text/pdf/ICC_Profile;
    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/pdf/ICC_Profile;->getNumComponents()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_10

    .line 268
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->tagICC(Lcom/itextpdf/text/pdf/ICC_Profile;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 274
    .end local v36           #fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .end local v40           #icc_prof:Lcom/itextpdf/text/pdf/ICC_Profile;
    :cond_10
    :goto_5
    const/4 v5, 0x5

    :try_start_3
    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/Image;->setOriginalType(I)V

    .line 275
    const/4 v5, 0x0

    cmpl-float v5, v49, v5

    if-eqz v5, :cond_2

    .line 276
    move-object/from16 v0, v41

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->setInitialRotation(F)V

    goto/16 :goto_0

    .line 139
    .end local v3           #w:I
    .end local v4           #h:I
    .end local v6           #imagecomp:I
    .end local v7           #params:I
    .end local v14           #tiffT4Options:J
    .end local v21           #tiffT6Options:J
    .end local v29           #XYRatio:F
    .end local v32           #dpiX:I
    .end local v33           #dpiY:I
    .end local v37           #fillOrder:I
    .end local v38           #fillOrderField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .end local v41           #img:Lcom/itextpdf/text/Image;
    .end local v43           #offset:[J
    .end local v46           #resolutionUnit:I
    .end local v47           #reverse:Z
    .end local v51           #rowsStrip:I
    .end local v52           #size:[J
    .restart local v48       #rot:I
    :cond_11
    const/4 v5, 0x5

    move/from16 v0, v48

    if-eq v0, v5, :cond_12

    const/16 v5, 0x8

    move/from16 v0, v48

    if-ne v0, v5, :cond_13

    .line 140
    :cond_12
    const v49, 0x3fc90fdb

    goto/16 :goto_1

    .line 141
    :cond_13
    const/4 v5, 0x6

    move/from16 v0, v48

    if-eq v0, v5, :cond_14

    const/4 v5, 0x7

    move/from16 v0, v48

    if-ne v0, v5, :cond_4

    .line 142
    :cond_14
    const v49, -0x4036f025

    goto/16 :goto_1

    .line 179
    .end local v48           #rot:I
    .restart local v3       #w:I
    .restart local v4       #h:I
    .restart local v14       #tiffT4Options:J
    .restart local v21       #tiffT6Options:J
    .restart local v29       #XYRatio:F
    .restart local v32       #dpiX:I
    .restart local v33       #dpiY:I
    .restart local v37       #fillOrder:I
    .restart local v38       #fillOrderField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .restart local v41       #img:Lcom/itextpdf/text/Image;
    .restart local v43       #offset:[J
    .restart local v46       #resolutionUnit:I
    .restart local v47       #reverse:Z
    .restart local v51       #rowsStrip:I
    .restart local v52       #size:[J
    :cond_15
    const/16 v47, 0x0

    goto/16 :goto_2

    .line 190
    .restart local v6       #imagecomp:I
    .restart local v7       #params:I
    :sswitch_1
    const/16 v6, 0x101

    .line 191
    or-int/lit8 v7, v7, 0xa

    .line 192
    goto/16 :goto_3

    .line 194
    :sswitch_2
    const/16 v6, 0x101

    .line 195
    or-int/lit8 v7, v7, 0xc

    .line 196
    const/16 v5, 0x124

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v53

    .line 197
    .local v53, t4OptionsField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    if-eqz v53, :cond_f

    .line 198
    const/4 v5, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsLong(I)J

    move-result-wide v14

    .line 199
    const-wide/16 v11, 0x1

    and-long/2addr v11, v14

    const-wide/16 v16, 0x0

    cmp-long v5, v11, v16

    if-eqz v5, :cond_16

    .line 200
    const/16 v6, 0x102

    .line 201
    :cond_16
    const-wide/16 v11, 0x4

    and-long/2addr v11, v14

    const-wide/16 v16, 0x0

    cmp-long v5, v11, v16

    if-eqz v5, :cond_f

    .line 202
    or-int/lit8 v7, v7, 0x2

    goto/16 :goto_3

    .line 206
    .end local v53           #t4OptionsField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    :sswitch_3
    const/16 v6, 0x100

    .line 207
    const/16 v5, 0x125

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v54

    .line 208
    .local v54, t6OptionsField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    if-eqz v54, :cond_f

    .line 209
    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsLong(I)J

    move-result-wide v21

    goto/16 :goto_3

    .line 220
    .end local v54           #t6OptionsField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    :cond_17
    move/from16 v50, v4

    .line 221
    .local v50, rowsLeft:I
    new-instance v39, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;-><init>(I)V

    .line 222
    .local v39, g4:Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;
    const/16 v42, 0x0

    .local v42, k:I
    :goto_6
    move-object/from16 v0, v43

    array-length v5, v0

    move/from16 v0, v42

    if-ge v0, v5, :cond_18

    .line 223
    aget-wide v11, v52, v42

    long-to-int v5, v11

    new-array v8, v5, [B

    .line 224
    .restart local v8       #im:[B
    aget-wide v11, v43, v42

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 225
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 226
    move/from16 v0, v51

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 227
    .local v13, height:I
    new-instance v9, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;

    move/from16 v0, v37

    invoke-direct {v9, v0, v3, v13}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;-><init>(III)V

    .line 228
    .local v9, decoder:Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;
    add-int/lit8 v5, v3, 0x7

    div-int/lit8 v5, v5, 0x8

    mul-int/2addr v5, v13

    new-array v10, v5, [B

    .line 229
    .local v10, outBuf:[B
    sparse-switch v30, :sswitch_data_2

    .line 256
    :goto_7
    sub-int v50, v50, v51

    .line 222
    add-int/lit8 v42, v42, 0x1

    goto :goto_6

    .line 232
    :sswitch_4
    const/4 v5, 0x0

    invoke-virtual {v9, v10, v8, v5, v13}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decode1D([B[BII)V

    .line 233
    move-object/from16 v0, v39

    invoke-virtual {v0, v10, v13}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->fax4Encode([BI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    .line 237
    :sswitch_5
    const/4 v12, 0x0

    move-object v11, v8

    :try_start_4
    invoke-virtual/range {v9 .. v15}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decode2D([B[BIIJ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 249
    :goto_8
    :try_start_5
    move-object/from16 v0, v39

    invoke-virtual {v0, v10, v13}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->fax4Encode([BI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_7

    .line 239
    :catch_1
    move-exception v34

    .line 241
    .local v34, e:Ljava/lang/RuntimeException;
    const-wide/16 v11, 0x4

    xor-long/2addr v14, v11

    .line 243
    const/4 v12, 0x0

    move-object v11, v8

    :try_start_6
    invoke-virtual/range {v9 .. v15}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decode2D([B[BIIJ)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_8

    .line 245
    :catch_2
    move-exception v35

    .line 246
    .local v35, e2:Ljava/lang/RuntimeException;
    :try_start_7
    throw v34

    .line 252
    .end local v34           #e:Ljava/lang/RuntimeException;
    .end local v35           #e2:Ljava/lang/RuntimeException;
    :sswitch_6
    const/16 v19, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v8

    move/from16 v20, v13

    invoke-virtual/range {v16 .. v22}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeT6([B[BIIJ)V

    .line 253
    move-object/from16 v0, v39

    invoke-virtual {v0, v10, v13}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->fax4Encode([BI)V

    goto :goto_7

    .line 258
    .end local v8           #im:[B
    .end local v9           #decoder:Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;
    .end local v10           #outBuf:[B
    .end local v13           #height:I
    :cond_18
    invoke-virtual/range {v39 .. v39}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->close()[B

    move-result-object v28

    .line 259
    .local v28, g4pic:[B
    const/16 v25, 0x0

    const/16 v26, 0x100

    and-int/lit8 v27, v7, 0x1

    move/from16 v23, v3

    move/from16 v24, v4

    invoke-static/range {v23 .. v28}, Lcom/itextpdf/text/Image;->getInstance(IIZII[B)Lcom/itextpdf/text/Image;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v41

    goto/16 :goto_4

    .line 270
    .end local v28           #g4pic:[B
    .end local v39           #g4:Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;
    .end local v42           #k:I
    .end local v50           #rowsLeft:I
    :catch_3
    move-exception v5

    goto/16 :goto_5

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8003 -> :sswitch_0
    .end sparse-switch

    .line 187
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8003 -> :sswitch_1
    .end sparse-switch

    .line 229
    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x8003 -> :sswitch_4
    .end sparse-switch
.end method

.method protected static getTiffImageColor(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)Lcom/itextpdf/text/Image;
    .locals 54
    .parameter "dir"
    .parameter "s"

    .prologue
    .line 286
    const/16 v9, 0x103

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v0, v12

    move/from16 v19, v0

    .line 287
    .local v19, compression:I
    const/16 v43, 0x1

    .line 288
    .local v43, predictor:I
    const/16 v36, 0x0

    .line 289
    .local v36, lzwDecoder:Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;
    sparse-switch v19, :sswitch_data_0

    .line 299
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v12, "the.compression.1.is.not.supported"

    move/from16 v0, v19

    invoke-static {v12, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v19           #compression:I
    .end local v36           #lzwDecoder:Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;
    .end local v43           #predictor:I
    :catch_0
    move-exception v22

    .line 532
    .local v22, e:Ljava/lang/Exception;
    new-instance v9, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 301
    .end local v22           #e:Ljava/lang/Exception;
    .restart local v19       #compression:I
    .restart local v36       #lzwDecoder:Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;
    .restart local v43       #predictor:I
    :sswitch_0
    const/16 v9, 0x106

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v0, v12

    move/from16 v41, v0

    .line 302
    .local v41, photometric:I
    packed-switch v41, :pswitch_data_0

    .line 310
    :pswitch_0
    const/4 v9, 0x6

    move/from16 v0, v19

    if-eq v0, v9, :cond_0

    const/4 v9, 0x7

    move/from16 v0, v19

    if-eq v0, v9, :cond_0

    .line 311
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v12, "the.photometric.1.is.not.supported"

    move/from16 v0, v41

    invoke-static {v12, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 313
    :cond_0
    :pswitch_1
    const/16 v49, 0x0

    .line 314
    .local v49, rotation:F
    const/16 v9, 0x112

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 315
    const/16 v9, 0x112

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v0, v12

    move/from16 v48, v0

    .line 316
    .local v48, rot:I
    const/4 v9, 0x3

    move/from16 v0, v48

    if-eq v0, v9, :cond_1

    const/4 v9, 0x4

    move/from16 v0, v48

    if-ne v0, v9, :cond_3

    .line 317
    :cond_1
    const v49, 0x40490fdb

    .line 323
    .end local v48           #rot:I
    :cond_2
    :goto_0
    const/16 v9, 0x11c

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x11c

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    const-wide/16 v14, 0x2

    cmp-long v9, v12, v14

    if-nez v9, :cond_7

    .line 325
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v12, "planar.images.are.not.supported"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 318
    .restart local v48       #rot:I
    :cond_3
    const/4 v9, 0x5

    move/from16 v0, v48

    if-eq v0, v9, :cond_4

    const/16 v9, 0x8

    move/from16 v0, v48

    if-ne v0, v9, :cond_5

    .line 319
    :cond_4
    const v49, 0x3fc90fdb

    goto :goto_0

    .line 320
    :cond_5
    const/4 v9, 0x6

    move/from16 v0, v48

    if-eq v0, v9, :cond_6

    const/4 v9, 0x7

    move/from16 v0, v48

    if-ne v0, v9, :cond_2

    .line 321
    :cond_6
    const v49, -0x4036f025

    goto :goto_0

    .line 326
    .end local v48           #rot:I
    :cond_7
    const/16 v23, 0x0

    .line 327
    .local v23, extraSamples:I
    const/16 v9, 0x152

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 328
    const/16 v23, 0x1

    .line 329
    :cond_8
    const/4 v5, 0x1

    .line 330
    .local v5, samplePerPixel:I
    const/16 v9, 0x115

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 331
    const/16 v9, 0x115

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v5, v12

    .line 332
    :cond_9
    const/4 v6, 0x1

    .line 333
    .local v6, bitsPerSample:I
    const/16 v9, 0x102

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 334
    const/16 v9, 0x102

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v6, v12

    .line 335
    :cond_a
    packed-switch v6, :pswitch_data_1

    .line 342
    :pswitch_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v12, "bits.per.sample.1.is.not.supported"

    invoke-static {v12, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 344
    :pswitch_3
    const/4 v11, 0x0

    .line 346
    .local v11, img:Lcom/itextpdf/text/Image;
    const/16 v9, 0x101

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v10, v12

    .line 347
    .local v10, h:I
    const/16 v9, 0x100

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v7, v12

    .line 348
    .local v7, w:I
    const/16 v20, 0x0

    .line 349
    .local v20, dpiX:I
    const/16 v21, 0x0

    .line 350
    .local v21, dpiY:I
    const/16 v45, 0x2

    .line 351
    .local v45, resolutionUnit:I
    const/16 v9, 0x128

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 352
    const/16 v9, 0x128

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v0, v12

    move/from16 v45, v0

    .line 353
    :cond_b
    const/16 v9, 0x11a

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v9

    move/from16 v0, v45

    invoke-static {v9, v0}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getDpi(Lcom/itextpdf/text/pdf/codec/TIFFField;I)I

    move-result v20

    .line 354
    const/16 v9, 0x11b

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v9

    move/from16 v0, v45

    invoke-static {v9, v0}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getDpi(Lcom/itextpdf/text/pdf/codec/TIFFField;I)I

    move-result v21

    .line 355
    const/16 v25, 0x1

    .line 356
    .local v25, fillOrder:I
    const/16 v46, 0x0

    .line 357
    .local v46, reverse:Z
    const/16 v9, 0x10a

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v26

    .line 358
    .local v26, fillOrderField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    if-eqz v26, :cond_c

    .line 359
    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsInt(I)I

    move-result v25

    .line 360
    :cond_c
    const/4 v9, 0x2

    move/from16 v0, v25

    if-ne v0, v9, :cond_12

    const/16 v46, 0x1

    .line 361
    :goto_1
    move/from16 v51, v10

    .line 362
    .local v51, rowsStrip:I
    const/16 v9, 0x116

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 363
    const/16 v9, 0x116

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v0, v12

    move/from16 v51, v0

    .line 364
    :cond_d
    if-lez v51, :cond_e

    move/from16 v0, v51

    if-le v0, v10, :cond_f

    .line 365
    :cond_e
    move/from16 v51, v10

    .line 366
    :cond_f
    const/16 v9, 0x111

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getArrayLongShort(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;I)[J

    move-result-object v39

    .line 367
    .local v39, offset:[J
    const/16 v9, 0x117

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getArrayLongShort(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;I)[J

    move-result-object v52

    .line 368
    .local v52, size:[J
    if-eqz v52, :cond_10

    move-object/from16 v0, v52

    array-length v9, v0

    const/4 v12, 0x1

    if-ne v9, v12, :cond_11

    const/4 v9, 0x0

    aget-wide v12, v52, v9

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-eqz v9, :cond_10

    const/4 v9, 0x0

    aget-wide v12, v52, v9

    const/4 v9, 0x0

    aget-wide v14, v39, v9

    add-long/2addr v12, v14

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v14

    cmp-long v9, v12, v14

    if-lez v9, :cond_11

    :cond_10
    move/from16 v0, v51

    if-ne v10, v0, :cond_11

    .line 369
    const/4 v9, 0x1

    new-array v0, v9, [J

    move-object/from16 v52, v0

    .end local v52           #size:[J
    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v12

    const/4 v14, 0x0

    aget-wide v14, v39, v14

    long-to-int v14, v14

    int-to-long v14, v14

    sub-long/2addr v12, v14

    aput-wide v12, v52, v9

    .line 371
    .restart local v52       #size:[J
    :cond_11
    const/4 v9, 0x5

    move/from16 v0, v19

    if-ne v0, v9, :cond_15

    .line 372
    const/16 v9, 0x13d

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v44

    .line 373
    .local v44, predictorField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    if-eqz v44, :cond_14

    .line 374
    const/4 v9, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsInt(I)I

    move-result v43

    .line 375
    const/4 v9, 0x1

    move/from16 v0, v43

    if-eq v0, v9, :cond_13

    const/4 v9, 0x2

    move/from16 v0, v43

    if-eq v0, v9, :cond_13

    .line 376
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v12, "illegal.value.for.predictor.in.tiff.file"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 360
    .end local v39           #offset:[J
    .end local v44           #predictorField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .end local v51           #rowsStrip:I
    .end local v52           #size:[J
    :cond_12
    const/16 v46, 0x0

    goto/16 :goto_1

    .line 378
    .restart local v39       #offset:[J
    .restart local v44       #predictorField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .restart local v51       #rowsStrip:I
    .restart local v52       #size:[J
    :cond_13
    const/4 v9, 0x2

    move/from16 v0, v43

    if-ne v0, v9, :cond_14

    const/16 v9, 0x8

    if-eq v6, v9, :cond_14

    .line 379
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v12, "1.bit.samples.are.not.supported.for.horizontal.differencing.predictor"

    invoke-static {v12, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 382
    :cond_14
    new-instance v36, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;

    .end local v36           #lzwDecoder:Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;
    move-object/from16 v0, v36

    move/from16 v1, v43

    invoke-direct {v0, v7, v1, v5}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;-><init>(III)V

    .line 385
    .end local v44           #predictorField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .restart local v36       #lzwDecoder:Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;
    :cond_15
    move/from16 v50, v10

    .line 386
    .local v50, rowsLeft:I
    const/16 v53, 0x0

    .line 387
    .local v53, stream:Ljava/io/ByteArrayOutputStream;
    const/16 v38, 0x0

    .line 388
    .local v38, mstream:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 389
    .local v2, zip:Ljava/util/zip/DeflaterOutputStream;
    const/4 v3, 0x0

    .line 390
    .local v3, mzip:Ljava/util/zip/DeflaterOutputStream;
    if-lez v23, :cond_16

    .line 391
    new-instance v38, Ljava/io/ByteArrayOutputStream;

    .end local v38           #mstream:Ljava/io/ByteArrayOutputStream;
    invoke-direct/range {v38 .. v38}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 392
    .restart local v38       #mstream:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    .end local v3           #mzip:Ljava/util/zip/DeflaterOutputStream;
    move-object/from16 v0, v38

    invoke-direct {v3, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 395
    .restart local v3       #mzip:Ljava/util/zip/DeflaterOutputStream;
    :cond_16
    const/16 v27, 0x0

    .line 396
    .local v27, g4:Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;
    const/4 v9, 0x1

    if-ne v6, v9, :cond_18

    const/4 v9, 0x1

    if-ne v5, v9, :cond_18

    const/4 v9, 0x3

    move/from16 v0, v41

    if-eq v0, v9, :cond_18

    .line 397
    new-instance v27, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;

    .end local v27           #g4:Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;
    move-object/from16 v0, v27

    invoke-direct {v0, v7}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;-><init>(I)V

    .line 404
    .restart local v27       #g4:Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;
    :cond_17
    :goto_2
    const/4 v9, 0x6

    move/from16 v0, v19

    if-ne v0, v9, :cond_1c

    .line 409
    const/16 v9, 0x201

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v9

    if-nez v9, :cond_19

    .line 410
    new-instance v9, Ljava/io/IOException;

    const-string v12, "missing.tag.s.for.ojpeg.compression"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 400
    :cond_18
    new-instance v53, Ljava/io/ByteArrayOutputStream;

    .end local v53           #stream:Ljava/io/ByteArrayOutputStream;
    invoke-direct/range {v53 .. v53}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 401
    .restart local v53       #stream:Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x6

    move/from16 v0, v19

    if-eq v0, v9, :cond_17

    const/4 v9, 0x7

    move/from16 v0, v19

    if-eq v0, v9, :cond_17

    .line 402
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    .end local v2           #zip:Ljava/util/zip/DeflaterOutputStream;
    move-object/from16 v0, v53

    invoke-direct {v2, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v2       #zip:Ljava/util/zip/DeflaterOutputStream;
    goto :goto_2

    .line 412
    :cond_19
    const/16 v9, 0x201

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v0, v12

    move/from16 v34, v0

    .line 413
    .local v34, jpegOffset:I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v12

    long-to-int v9, v12

    sub-int v33, v9, v34

    .line 415
    .local v33, jpegLength:I
    const/16 v9, 0x202

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 416
    const/16 v9, 0x202

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v9, v12

    const/4 v12, 0x0

    aget-wide v12, v52, v12

    long-to-int v12, v12

    add-int v33, v9, v12

    .line 420
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v12

    long-to-int v9, v12

    sub-int v9, v9, v34

    move/from16 v0, v33

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    new-array v0, v9, [B

    move-object/from16 v32, v0

    .line 422
    .local v32, jpeg:[B
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v12

    long-to-int v0, v12

    move/from16 v42, v0

    .line 423
    .local v42, posFilePointer:I
    add-int v42, v42, v34

    .line 424
    move/from16 v0, v42

    int-to-long v12, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 425
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 426
    new-instance v11, Lcom/itextpdf/text/Jpeg;

    .end local v11           #img:Lcom/itextpdf/text/Image;
    move-object/from16 v0, v32

    invoke-direct {v11, v0}, Lcom/itextpdf/text/Jpeg;-><init>([B)V

    .line 483
    .end local v32           #jpeg:[B
    .end local v33           #jpegLength:I
    .end local v34           #jpegOffset:I
    .end local v42           #posFilePointer:I
    .restart local v11       #img:Lcom/itextpdf/text/Image;
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lcom/itextpdf/text/Image;->setDpi(II)V

    .line 484
    const/4 v9, 0x6

    move/from16 v0, v19

    if-eq v0, v9, :cond_28

    const/4 v9, 0x7

    move/from16 v0, v19

    if-eq v0, v9, :cond_28

    .line 485
    const v9, 0x8773

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    if-eqz v9, :cond_1b

    .line 487
    const v9, 0x8773

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v24

    .line 488
    .local v24, fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsBytes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/ICC_Profile;->getInstance([B)Lcom/itextpdf/text/pdf/ICC_Profile;

    move-result-object v29

    .line 489
    .local v29, icc_prof:Lcom/itextpdf/text/pdf/ICC_Profile;
    sub-int v9, v5, v23

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/ICC_Profile;->getNumComponents()I

    move-result v12

    if-ne v9, v12, :cond_1b

    .line 490
    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/Image;->tagICC(Lcom/itextpdf/text/pdf/ICC_Profile;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 496
    .end local v24           #fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .end local v29           #icc_prof:Lcom/itextpdf/text/pdf/ICC_Profile;
    :cond_1b
    :goto_4
    const/16 v9, 0x140

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 497
    const/16 v9, 0x140

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v24

    .line 498
    .restart local v24       #fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsChars()[C

    move-result-object v47

    .line 499
    .local v47, rgb:[C
    move-object/from16 v0, v47

    array-length v9, v0

    new-array v0, v9, [B

    move-object/from16 v40, v0

    .line 500
    .local v40, palette:[B
    move-object/from16 v0, v47

    array-length v9, v0

    div-int/lit8 v28, v9, 0x3

    .line 501
    .local v28, gColor:I
    mul-int/lit8 v18, v28, 0x2

    .line 502
    .local v18, bColor:I
    const/16 v35, 0x0

    .local v35, k:I
    :goto_5
    move/from16 v0, v35

    move/from16 v1, v28

    if-ge v0, v1, :cond_26

    .line 503
    mul-int/lit8 v9, v35, 0x3

    aget-char v12, v47, v35

    ushr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v40, v9

    .line 504
    mul-int/lit8 v9, v35, 0x3

    add-int/lit8 v9, v9, 0x1

    add-int v12, v35, v28

    aget-char v12, v47, v12

    ushr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v40, v9

    .line 505
    mul-int/lit8 v9, v35, 0x3

    add-int/lit8 v9, v9, 0x2

    add-int v12, v35, v18

    aget-char v12, v47, v12

    ushr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v40, v9

    .line 502
    add-int/lit8 v35, v35, 0x1

    goto :goto_5

    .line 428
    .end local v18           #bColor:I
    .end local v24           #fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .end local v28           #gColor:I
    .end local v35           #k:I
    .end local v40           #palette:[B
    .end local v47           #rgb:[C
    :cond_1c
    const/4 v9, 0x7

    move/from16 v0, v19

    if-ne v0, v9, :cond_1e

    .line 429
    move-object/from16 v0, v52

    array-length v9, v0

    const/4 v12, 0x1

    if-le v9, v12, :cond_1d

    .line 430
    new-instance v9, Ljava/io/IOException;

    const-string v12, "compression.jpeg.is.only.supported.with.a.single.strip.this.image.has.1.strips"

    move-object/from16 v0, v52

    array-length v13, v0

    invoke-static {v12, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 431
    :cond_1d
    const/4 v9, 0x0

    aget-wide v12, v52, v9

    long-to-int v9, v12

    new-array v0, v9, [B

    move-object/from16 v32, v0

    .line 432
    .restart local v32       #jpeg:[B
    const/4 v9, 0x0

    aget-wide v12, v39, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 433
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 434
    new-instance v11, Lcom/itextpdf/text/Jpeg;

    .end local v11           #img:Lcom/itextpdf/text/Image;
    move-object/from16 v0, v32

    invoke-direct {v11, v0}, Lcom/itextpdf/text/Jpeg;-><init>([B)V

    .line 435
    .restart local v11       #img:Lcom/itextpdf/text/Image;
    goto/16 :goto_3

    .line 437
    .end local v32           #jpeg:[B
    :cond_1e
    const/16 v35, 0x0

    .restart local v35       #k:I
    :goto_6
    move-object/from16 v0, v39

    array-length v9, v0

    move/from16 v0, v35

    if-ge v0, v9, :cond_23

    .line 438
    aget-wide v12, v52, v35

    long-to-int v9, v12

    new-array v0, v9, [B

    move-object/from16 v30, v0

    .line 439
    .local v30, im:[B
    aget-wide v12, v39, v35

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 440
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 441
    move/from16 v0, v51

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 442
    .local v8, height:I
    const/4 v4, 0x0

    .line 443
    .local v4, outBuf:[B
    const/4 v9, 0x1

    move/from16 v0, v19

    if-eq v0, v9, :cond_1f

    .line 444
    mul-int v9, v7, v6

    mul-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x7

    div-int/lit8 v9, v9, 0x8

    mul-int/2addr v9, v8

    new-array v4, v9, [B

    .line 445
    :cond_1f
    if-eqz v46, :cond_20

    .line 446
    invoke-static/range {v30 .. v30}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->reverseBits([B)V

    .line 447
    :cond_20
    sparse-switch v19, :sswitch_data_1

    .line 462
    :goto_7
    const/4 v9, 0x1

    if-ne v6, v9, :cond_21

    const/4 v9, 0x1

    if-ne v5, v9, :cond_21

    const/4 v9, 0x3

    move/from16 v0, v41

    if-eq v0, v9, :cond_21

    .line 463
    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v8}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->fax4Encode([BI)V

    .line 471
    :goto_8
    sub-int v50, v50, v51

    .line 437
    add-int/lit8 v35, v35, 0x1

    goto :goto_6

    .line 450
    :sswitch_1
    move-object/from16 v0, v30

    invoke-static {v0, v4}, Lcom/itextpdf/text/pdf/codec/TiffImage;->inflate([B[B)V

    goto :goto_7

    .line 453
    :sswitch_2
    move-object/from16 v4, v30

    .line 454
    goto :goto_7

    .line 456
    :sswitch_3
    move-object/from16 v0, v30

    invoke-static {v0, v4}, Lcom/itextpdf/text/pdf/codec/TiffImage;->decodePackbits([B[B)V

    goto :goto_7

    .line 459
    :sswitch_4
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4, v8}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->decode([B[BI)[B

    goto :goto_7

    .line 466
    :cond_21
    if-lez v23, :cond_22

    .line 467
    invoke-static/range {v2 .. v8}, Lcom/itextpdf/text/pdf/codec/TiffImage;->ProcessExtraSamples(Ljava/util/zip/DeflaterOutputStream;Ljava/util/zip/DeflaterOutputStream;[BIIII)Lcom/itextpdf/text/Image;

    goto :goto_8

    .line 469
    :cond_22
    invoke-virtual {v2, v4}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    goto :goto_8

    .line 473
    .end local v4           #outBuf:[B
    .end local v8           #height:I
    .end local v30           #im:[B
    :cond_23
    const/4 v9, 0x1

    if-ne v6, v9, :cond_25

    const/4 v9, 0x1

    if-ne v5, v9, :cond_25

    const/4 v9, 0x3

    move/from16 v0, v41

    if-eq v0, v9, :cond_25

    .line 474
    const/4 v11, 0x0

    const/16 v12, 0x100

    const/4 v9, 0x1

    move/from16 v0, v41

    if-ne v0, v9, :cond_24

    .end local v11           #img:Lcom/itextpdf/text/Image;
    const/4 v13, 0x1

    :goto_9
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->close()[B

    move-result-object v14

    move v9, v7

    invoke-static/range {v9 .. v14}, Lcom/itextpdf/text/Image;->getInstance(IIZII[B)Lcom/itextpdf/text/Image;

    move-result-object v11

    .restart local v11       #img:Lcom/itextpdf/text/Image;
    goto/16 :goto_3

    .end local v11           #img:Lcom/itextpdf/text/Image;
    :cond_24
    const/4 v13, 0x0

    goto :goto_9

    .line 478
    .restart local v11       #img:Lcom/itextpdf/text/Image;
    :cond_25
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 479
    new-instance v11, Lcom/itextpdf/text/ImgRaw;

    .end local v11           #img:Lcom/itextpdf/text/Image;
    sub-int v14, v5, v23

    invoke-virtual/range {v53 .. v53}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    move v12, v7

    move v13, v10

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/itextpdf/text/ImgRaw;-><init>(IIII[B)V

    .line 480
    .restart local v11       #img:Lcom/itextpdf/text/Image;
    const/4 v9, 0x1

    invoke-virtual {v11, v9}, Lcom/itextpdf/text/Image;->setDeflated(Z)V

    goto/16 :goto_3

    .line 507
    .restart local v18       #bColor:I
    .restart local v24       #fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .restart local v28       #gColor:I
    .restart local v40       #palette:[B
    .restart local v47       #rgb:[C
    :cond_26
    new-instance v31, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 508
    .local v31, indexed:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->INDEXED:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 509
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 510
    new-instance v9, Lcom/itextpdf/text/pdf/PdfNumber;

    add-int/lit8 v12, v28, -0x1

    invoke-direct {v9, v12}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 511
    new-instance v9, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v0, v40

    invoke-direct {v9, v0}, Lcom/itextpdf/text/pdf/PdfString;-><init>([B)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 512
    new-instance v17, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 513
    .local v17, additional:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v9, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 514
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/Image;->setAdditional(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 516
    .end local v17           #additional:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v18           #bColor:I
    .end local v24           #fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .end local v28           #gColor:I
    .end local v31           #indexed:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v35           #k:I
    .end local v40           #palette:[B
    .end local v47           #rgb:[C
    :cond_27
    const/4 v9, 0x5

    invoke-virtual {v11, v9}, Lcom/itextpdf/text/Image;->setOriginalType(I)V

    .line 518
    :cond_28
    if-nez v41, :cond_29

    .line 519
    const/4 v9, 0x1

    invoke-virtual {v11, v9}, Lcom/itextpdf/text/Image;->setInverted(Z)V

    .line 520
    :cond_29
    const/4 v9, 0x0

    cmpl-float v9, v49, v9

    if-eqz v9, :cond_2a

    .line 521
    move/from16 v0, v49

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/Image;->setInitialRotation(F)V

    .line 522
    :cond_2a
    if-lez v23, :cond_2b

    .line 523
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 524
    const/4 v9, 0x1

    invoke-virtual/range {v38 .. v38}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v7, v10, v9, v6, v12}, Lcom/itextpdf/text/Image;->getInstance(IIII[B)Lcom/itextpdf/text/Image;

    move-result-object v37

    .line 525
    .local v37, mimg:Lcom/itextpdf/text/Image;
    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/Image;->makeMask()V

    .line 526
    const/4 v9, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/Image;->setDeflated(Z)V

    .line 527
    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/Image;->setImageMask(Lcom/itextpdf/text/Image;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 529
    .end local v37           #mimg:Lcom/itextpdf/text/Image;
    :cond_2b
    return-object v11

    .line 492
    :catch_1
    move-exception v9

    goto/16 :goto_4

    .line 289
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x8005 -> :sswitch_0
        0x80b2 -> :sswitch_0
    .end sparse-switch

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 335
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 447
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_4
        0x8 -> :sswitch_1
        0x8005 -> :sswitch_3
        0x80b2 -> :sswitch_1
    .end sparse-switch
.end method

.method public static inflate([B[B)V
    .locals 3
    .parameter "deflated"
    .parameter "inflated"

    .prologue
    .line 604
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 605
    .local v1, inflater:Ljava/util/zip/Inflater;
    invoke-virtual {v1, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 607
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/zip/Inflater;->inflate([B)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, dfe:Ljava/util/zip/DataFormatException;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
