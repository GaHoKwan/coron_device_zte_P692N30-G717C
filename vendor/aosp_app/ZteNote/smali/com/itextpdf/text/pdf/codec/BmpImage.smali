.class public Lcom/itextpdf/text/pdf/codec/BmpImage;
.super Ljava/lang/Object;
.source "BmpImage.java"


# static fields
.field private static final BI_BITFIELDS:I = 0x3

.field private static final BI_RGB:I = 0x0

.field private static final BI_RLE4:I = 0x2

.field private static final BI_RLE8:I = 0x1

.field private static final LCS_CALIBRATED_RGB:I = 0x0

.field private static final LCS_CMYK:I = 0x2

.field private static final LCS_sRGB:I = 0x1

.field private static final VERSION_2_1_BIT:I = 0x0

.field private static final VERSION_2_24_BIT:I = 0x3

.field private static final VERSION_2_4_BIT:I = 0x1

.field private static final VERSION_2_8_BIT:I = 0x2

.field private static final VERSION_3_1_BIT:I = 0x4

.field private static final VERSION_3_24_BIT:I = 0x7

.field private static final VERSION_3_4_BIT:I = 0x5

.field private static final VERSION_3_8_BIT:I = 0x6

.field private static final VERSION_3_NT_16_BIT:I = 0x8

.field private static final VERSION_3_NT_32_BIT:I = 0x9

.field private static final VERSION_4_16_BIT:I = 0xd

.field private static final VERSION_4_1_BIT:I = 0xa

.field private static final VERSION_4_24_BIT:I = 0xe

.field private static final VERSION_4_32_BIT:I = 0xf

.field private static final VERSION_4_4_BIT:I = 0xb

.field private static final VERSION_4_8_BIT:I = 0xc


# instance fields
.field private alphaMask:I

.field private bitmapFileSize:J

.field private bitmapOffset:J

.field private bitsPerPixel:I

.field private blueMask:I

.field private compression:J

.field private greenMask:I

.field height:I

.field private imageSize:J

.field private imageType:I

.field private inputStream:Ljava/io/InputStream;

.field private isBottomUp:Z

.field private numBands:I

.field private palette:[B

.field public properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private redMask:I

.field width:I

.field private xPelsPerMeter:J

.field private yPelsPerMeter:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;ZI)V
    .locals 2
    .parameter "is"
    .parameter "noHeader"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    .line 168
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapFileSize:J

    .line 169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->process(Ljava/io/InputStream;Z)V

    .line 171
    return-void
.end method

.method private decodeRLE(Z[B)[B
    .locals 13
    .parameter "is8"
    .parameter "values"

    .prologue
    const/4 v12, 0x1

    .line 1170
    iget v10, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    iget v11, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int/2addr v10, v11

    new-array v7, v10, [B

    .line 1172
    .local v7, val:[B
    const/4 v3, 0x0

    .line 1173
    .local v3, ptr:I
    const/4 v8, 0x0

    .line 1174
    .local v8, x:I
    const/4 v5, 0x0

    .line 1175
    .local v5, q:I
    const/4 v9, 0x0

    .local v9, y:I
    move v4, v3

    .end local v3           #ptr:I
    .local v4, ptr:I
    :goto_0
    :try_start_0
    iget v10, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    if-ge v9, v10, :cond_e

    array-length v10, p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v4, v10, :cond_e

    .line 1176
    add-int/lit8 v3, v4, 0x1

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    :try_start_1
    aget-byte v10, p2, v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit16 v1, v10, 0xff

    .line 1177
    .local v1, count:I
    if-eqz v1, :cond_4

    .line 1179
    add-int/lit8 v4, v3, 0x1

    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    :try_start_2
    aget-byte v10, p2, v3

    and-int/lit16 v0, v10, 0xff

    .line 1180
    .local v0, bt:I
    if-eqz p1, :cond_2

    .line 1181
    move v2, v1

    .local v2, i:I
    move v6, v5

    .end local v5           #q:I
    .local v6, q:I
    :goto_1
    if-eqz v2, :cond_0

    .line 1182
    add-int/lit8 v5, v6, 0x1

    .end local v6           #q:I
    .restart local v5       #q:I
    int-to-byte v10, v0

    aput-byte v10, v7, v6

    .line 1181
    add-int/lit8 v2, v2, -0x1

    move v6, v5

    .end local v5           #q:I
    .restart local v6       #q:I
    goto :goto_1

    :cond_0
    move v5, v6

    .line 1190
    .end local v6           #q:I
    .restart local v5       #q:I
    :goto_2
    add-int/2addr v8, v1

    move v3, v4

    .end local v0           #bt:I
    .end local v2           #i:I
    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    :cond_1
    :goto_3
    move v4, v3

    .line 1236
    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    goto :goto_0

    .line 1186
    .restart local v0       #bt:I
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #i:I
    move v6, v5

    .end local v5           #q:I
    .restart local v6       #q:I
    :goto_4
    if-ge v2, v1, :cond_d

    .line 1187
    add-int/lit8 v5, v6, 0x1

    .end local v6           #q:I
    .restart local v5       #q:I
    and-int/lit8 v10, v2, 0x1

    if-ne v10, v12, :cond_3

    and-int/lit8 v10, v0, 0xf

    :goto_5
    int-to-byte v10, v10

    aput-byte v10, v7, v6

    .line 1186
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5           #q:I
    .restart local v6       #q:I
    goto :goto_4

    .line 1187
    .end local v6           #q:I
    .restart local v5       #q:I
    :cond_3
    ushr-int/lit8 v10, v0, 0x4

    and-int/lit8 v10, v10, 0xf

    goto :goto_5

    .line 1194
    .end local v0           #bt:I
    .end local v2           #i:I
    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    :cond_4
    add-int/lit8 v4, v3, 0x1

    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    aget-byte v10, p2, v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    and-int/lit16 v1, v10, 0xff

    .line 1195
    if-ne v1, v12, :cond_5

    move v3, v4

    .line 1242
    .end local v1           #count:I
    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    :goto_6
    return-object v7

    .line 1197
    .end local v3           #ptr:I
    .restart local v1       #count:I
    .restart local v4       #ptr:I
    :cond_5
    packed-switch v1, :pswitch_data_0

    .line 1211
    :pswitch_0
    if-eqz p1, :cond_7

    .line 1212
    move v2, v1

    .restart local v2       #i:I
    move v6, v5

    .end local v5           #q:I
    .restart local v6       #q:I
    :goto_7
    if-eqz v2, :cond_6

    .line 1213
    add-int/lit8 v5, v6, 0x1

    .end local v6           #q:I
    .restart local v5       #q:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    :try_start_3
    aget-byte v10, p2, v4

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v6
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1212
    add-int/lit8 v2, v2, -0x1

    move v6, v5

    .end local v5           #q:I
    .restart local v6       #q:I
    move v4, v3

    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    goto :goto_7

    .line 1199
    .end local v2           #i:I
    .end local v6           #q:I
    .restart local v5       #q:I
    :pswitch_1
    const/4 v8, 0x0

    .line 1200
    add-int/lit8 v9, v9, 0x1

    .line 1201
    :try_start_4
    iget v10, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    mul-int v5, v9, v10

    move v3, v4

    .line 1202
    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    goto :goto_3

    .line 1205
    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    :pswitch_2
    add-int/lit8 v3, v4, 0x1

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    :try_start_5
    aget-byte v10, p2, v4
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v8, v10

    .line 1206
    add-int/lit8 v4, v3, 0x1

    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    :try_start_6
    aget-byte v10, p2, v3

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    .line 1207
    iget v10, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    mul-int/2addr v10, v9

    add-int v5, v10, v8

    move v3, v4

    .line 1208
    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    goto :goto_3

    .end local v3           #ptr:I
    .end local v5           #q:I
    .restart local v2       #i:I
    .restart local v4       #ptr:I
    .restart local v6       #q:I
    :cond_6
    move v5, v6

    .end local v6           #q:I
    .restart local v5       #q:I
    move v3, v4

    .line 1223
    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    :goto_8
    add-int/2addr v8, v1

    .line 1225
    if-eqz p1, :cond_9

    .line 1226
    and-int/lit8 v10, v1, 0x1

    if-ne v10, v12, :cond_1

    .line 1227
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1216
    .end local v2           #i:I
    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    :cond_7
    const/4 v0, 0x0

    .line 1217
    .restart local v0       #bt:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    move v6, v5

    .end local v5           #q:I
    .restart local v6       #q:I
    :goto_9
    if-ge v2, v1, :cond_c

    .line 1218
    and-int/lit8 v10, v2, 0x1

    if-nez v10, :cond_b

    .line 1219
    add-int/lit8 v3, v4, 0x1

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    :try_start_7
    aget-byte v10, p2, v4
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    and-int/lit16 v0, v10, 0xff

    .line 1220
    :goto_a
    add-int/lit8 v5, v6, 0x1

    .end local v6           #q:I
    .restart local v5       #q:I
    and-int/lit8 v10, v2, 0x1

    if-ne v10, v12, :cond_8

    and-int/lit8 v10, v0, 0xf

    :goto_b
    int-to-byte v10, v10

    :try_start_8
    aput-byte v10, v7, v6
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1217
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5           #q:I
    .restart local v6       #q:I
    move v4, v3

    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    goto :goto_9

    .line 1220
    .end local v4           #ptr:I
    .end local v6           #q:I
    .restart local v3       #ptr:I
    .restart local v5       #q:I
    :cond_8
    ushr-int/lit8 v10, v0, 0x4

    and-int/lit8 v10, v10, 0xf

    goto :goto_b

    .line 1230
    .end local v0           #bt:I
    :cond_9
    and-int/lit8 v10, v1, 0x3

    if-eq v10, v12, :cond_a

    and-int/lit8 v10, v1, 0x3

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 1231
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 1238
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    :catch_0
    move-exception v10

    move v3, v4

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    goto :goto_6

    :catch_1
    move-exception v10

    goto :goto_6

    .end local v5           #q:I
    .restart local v0       #bt:I
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v6       #q:I
    :catch_2
    move-exception v10

    move v5, v6

    .end local v6           #q:I
    .restart local v5       #q:I
    goto :goto_6

    .end local v3           #ptr:I
    .end local v5           #q:I
    .restart local v4       #ptr:I
    .restart local v6       #q:I
    :cond_b
    move v3, v4

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    goto :goto_a

    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    :cond_c
    move v5, v6

    .end local v6           #q:I
    .restart local v5       #q:I
    move v3, v4

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    goto :goto_8

    .end local v3           #ptr:I
    .end local v5           #q:I
    .restart local v4       #ptr:I
    .restart local v6       #q:I
    :cond_d
    move v5, v6

    .end local v6           #q:I
    .restart local v5       #q:I
    goto/16 :goto_2

    .end local v0           #bt:I
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_e
    move v3, v4

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    goto/16 :goto_6

    .line 1197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private findMask(I)I
    .locals 3
    .parameter "mask"

    .prologue
    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, k:I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 996
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1000
    :cond_0
    return p1

    .line 998
    :cond_1
    ushr-int/lit8 p1, p1, 0x1

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findShift(I)I
    .locals 3
    .parameter "mask"

    .prologue
    .line 1004
    const/4 v0, 0x0

    .line 1005
    .local v0, k:I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 1006
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1010
    :cond_0
    return v0

    .line 1008
    :cond_1
    ushr-int/lit8 p1, p1, 0x1

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getImage()Lcom/itextpdf/text/Image;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x3

    .line 649
    const/4 v5, 0x0

    .line 659
    .local v5, bdata:[B
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    packed-switch v0, :pswitch_data_0

    .line 763
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 663
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read1Bit(I)Lcom/itextpdf/text/Image;

    move-result-object v0

    goto :goto_0

    .line 667
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read4Bit(I)Lcom/itextpdf/text/Image;

    move-result-object v0

    goto :goto_0

    .line 671
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read8Bit(I)Lcom/itextpdf/text/Image;

    move-result-object v0

    goto :goto_0

    .line 675
    :pswitch_3
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v5, v0, [B

    .line 676
    invoke-direct {p0, v5}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read24Bit([B)V

    .line 677
    new-instance v0, Lcom/itextpdf/text/ImgRaw;

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/ImgRaw;-><init>(IIII[B)V

    goto :goto_0

    .line 681
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read1Bit(I)Lcom/itextpdf/text/Image;

    move-result-object v0

    goto :goto_0

    .line 684
    :pswitch_5
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->compression:J

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_1

    .line 692
    :pswitch_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid compression specified for BMP file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :pswitch_7
    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read4Bit(I)Lcom/itextpdf/text/Image;

    move-result-object v0

    goto :goto_0

    .line 689
    :pswitch_8
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readRLE4()Lcom/itextpdf/text/Image;

    move-result-object v0

    goto :goto_0

    .line 697
    :pswitch_9
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->compression:J

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_2

    .line 705
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid compression specified for BMP file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :pswitch_a
    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read8Bit(I)Lcom/itextpdf/text/Image;

    move-result-object v0

    goto :goto_0

    .line 702
    :pswitch_b
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readRLE8()Lcom/itextpdf/text/Image;

    move-result-object v0

    goto :goto_0

    .line 711
    :pswitch_c
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v5, v0, [B

    .line 712
    invoke-direct {p0, v5}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read24Bit([B)V

    .line 713
    new-instance v0, Lcom/itextpdf/text/ImgRaw;

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/ImgRaw;-><init>(IIII[B)V

    goto :goto_0

    .line 716
    :pswitch_d
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read1632Bit(Z)Lcom/itextpdf/text/Image;

    move-result-object v0

    goto :goto_0

    .line 719
    :pswitch_e
    invoke-direct {p0, v6}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read1632Bit(Z)Lcom/itextpdf/text/Image;

    move-result-object v0

    goto :goto_0

    .line 722
    :pswitch_f
    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read1Bit(I)Lcom/itextpdf/text/Image;

    move-result-object v0

    goto :goto_0

    .line 725
    :pswitch_10
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->compression:J

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_3

    .line 734
    :pswitch_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid compression specified for BMP file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :pswitch_12
    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read4Bit(I)Lcom/itextpdf/text/Image;

    move-result-object v0

    goto/16 :goto_0

    .line 731
    :pswitch_13
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readRLE4()Lcom/itextpdf/text/Image;

    move-result-object v0

    goto/16 :goto_0

    .line 739
    :pswitch_14
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->compression:J

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_4

    .line 748
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid compression specified for BMP file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :pswitch_15
    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read8Bit(I)Lcom/itextpdf/text/Image;

    move-result-object v0

    goto/16 :goto_0

    .line 745
    :pswitch_16
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readRLE8()Lcom/itextpdf/text/Image;

    move-result-object v0

    goto/16 :goto_0

    .line 753
    :pswitch_17
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read1632Bit(Z)Lcom/itextpdf/text/Image;

    move-result-object v0

    goto/16 :goto_0

    .line 756
    :pswitch_18
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v5, v0, [B

    .line 757
    invoke-direct {p0, v5}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read24Bit([B)V

    .line 758
    new-instance v0, Lcom/itextpdf/text/ImgRaw;

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/ImgRaw;-><init>(IIII[B)V

    goto/16 :goto_0

    .line 761
    :pswitch_19
    invoke-direct {p0, v6}, Lcom/itextpdf/text/pdf/codec/BmpImage;->read1632Bit(Z)Lcom/itextpdf/text/Image;

    move-result-object v0

    goto/16 :goto_0

    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_14
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 684
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 697
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 725
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_13
    .end packed-switch

    .line 739
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public static getImage(Ljava/io/InputStream;)Lcom/itextpdf/text/Image;
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-static {p0, v0, v0}, Lcom/itextpdf/text/pdf/codec/BmpImage;->getImage(Ljava/io/InputStream;ZI)Lcom/itextpdf/text/Image;

    move-result-object v0

    return-object v0
.end method

.method public static getImage(Ljava/io/InputStream;ZI)Lcom/itextpdf/text/Image;
    .locals 10
    .parameter "is"
    .parameter "noHeader"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/high16 v8, 0x3fe0

    const-wide v6, 0x3f9a027525460aa6L

    .line 211
    new-instance v1, Lcom/itextpdf/text/pdf/codec/BmpImage;

    invoke-direct {v1, p0, p1, p2}, Lcom/itextpdf/text/pdf/codec/BmpImage;-><init>(Ljava/io/InputStream;ZI)V

    .line 213
    .local v1, bmp:Lcom/itextpdf/text/pdf/codec/BmpImage;
    :try_start_0
    invoke-direct {v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v2

    .line 214
    .local v2, img:Lcom/itextpdf/text/Image;
    iget-wide v3, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->xPelsPerMeter:J

    long-to-double v3, v3

    mul-double/2addr v3, v6

    add-double/2addr v3, v8

    double-to-int v3, v3

    iget-wide v4, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->yPelsPerMeter:J

    long-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/Image;->setDpi(II)V

    .line 215
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/Image;->setOriginalType(I)V
    :try_end_0
    .catch Lcom/itextpdf/text/BadElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    return-object v2

    .line 218
    .end local v2           #img:Lcom/itextpdf/text/Image;
    :catch_0
    move-exception v0

    .line 219
    .local v0, be:Lcom/itextpdf/text/BadElementException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public static getImage(Ljava/lang/String;)Lcom/itextpdf/text/Image;
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {p0}, Lcom/itextpdf/text/Utilities;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/codec/BmpImage;->getImage(Ljava/net/URL;)Lcom/itextpdf/text/Image;

    move-result-object v0

    return-object v0
.end method

.method public static getImage(Ljava/net/URL;)Lcom/itextpdf/text/Image;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 182
    invoke-static {v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->getImage(Ljava/io/InputStream;)Lcom/itextpdf/text/Image;

    move-result-object v0

    .line 183
    .local v0, img:Lcom/itextpdf/text/Image;
    invoke-virtual {v0, p0}, Lcom/itextpdf/text/Image;->setUrl(Ljava/net/URL;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    .line 187
    .end local v0           #img:Lcom/itextpdf/text/Image;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v2
.end method

.method public static getImage([B)Lcom/itextpdf/text/Image;
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 239
    .local v1, is:Ljava/io/ByteArrayInputStream;
    invoke-static {v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->getImage(Ljava/io/InputStream;)Lcom/itextpdf/text/Image;

    move-result-object v0

    .line 240
    .local v0, img:Lcom/itextpdf/text/Image;
    invoke-virtual {v0, p0}, Lcom/itextpdf/text/Image;->setOriginalData([B)V

    .line 241
    return-object v0
.end method

.method private getPalette(I)[B
    .locals 8
    .parameter "group"

    .prologue
    .line 634
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    if-nez v6, :cond_1

    .line 635
    const/4 v3, 0x0

    .line 645
    :cond_0
    return-object v3

    .line 636
    :cond_1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    array-length v6, v6

    div-int/2addr v6, p1

    mul-int/lit8 v6, v6, 0x3

    new-array v3, v6, [B

    .line 637
    .local v3, np:[B
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    array-length v6, v6

    div-int v1, v6, p1

    .line 638
    .local v1, e:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 639
    mul-int v4, v2, p1

    .line 640
    .local v4, src:I
    mul-int/lit8 v0, v2, 0x3

    .line 641
    .local v0, dest:I
    add-int/lit8 v6, v0, 0x2

    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #src:I
    .local v5, src:I
    aget-byte v7, v7, v4

    aput-byte v7, v3, v6

    .line 642
    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #src:I
    .restart local v4       #src:I
    aget-byte v7, v7, v5

    aput-byte v7, v3, v6

    .line 643
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    aget-byte v6, v6, v4

    aput-byte v6, v3, v0

    .line 638
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private indexedModel([BII)Lcom/itextpdf/text/Image;
    .locals 10
    .parameter "bdata"
    .parameter "bpc"
    .parameter "paletteEntries"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 767
    new-instance v0, Lcom/itextpdf/text/ImgRaw;

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    const/4 v3, 0x1

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/ImgRaw;-><init>(IIII[B)V

    .line 768
    .local v0, img:Lcom/itextpdf/text/Image;
    new-instance v7, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v7}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 769
    .local v7, colorspace:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->INDEXED:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 770
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 771
    invoke-direct {p0, p3}, Lcom/itextpdf/text/pdf/codec/BmpImage;->getPalette(I)[B

    move-result-object v9

    .line 772
    .local v9, np:[B
    array-length v8, v9

    .line 773
    .local v8, len:I
    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    div-int/lit8 v2, v8, 0x3

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v7, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 774
    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v1, v9}, Lcom/itextpdf/text/pdf/PdfString;-><init>([B)V

    invoke-virtual {v7, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 775
    new-instance v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 776
    .local v6, ad:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v1, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 777
    invoke-virtual {v0, v6}, Lcom/itextpdf/text/Image;->setAdditional(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 778
    return-object v0
.end method

.method private read1632Bit(Z)Lcom/itextpdf/text/Image;
    .locals 26
    .parameter "is32"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 1015
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->redMask:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->findMask(I)I

    move-result v23

    .line 1016
    .local v23, red_mask:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->redMask:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->findShift(I)I

    move-result v24

    .line 1017
    .local v24, red_shift:I
    add-int/lit8 v22, v23, 0x1

    .line 1018
    .local v22, red_factor:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->greenMask:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->findMask(I)I

    move-result v13

    .line 1019
    .local v13, green_mask:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->greenMask:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->findShift(I)I

    move-result v14

    .line 1020
    .local v14, green_shift:I
    add-int/lit8 v12, v13, 0x1

    .line 1021
    .local v12, green_factor:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->blueMask:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->findMask(I)I

    move-result v10

    .line 1022
    .local v10, blue_mask:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->blueMask:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->findShift(I)I

    move-result v11

    .line 1023
    .local v11, blue_shift:I
    add-int/lit8 v9, v10, 0x1

    .line 1024
    .local v9, blue_factor:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    new-array v7, v2, [B

    .line 1026
    .local v7, bdata:[B
    const/16 v21, 0x0

    .line 1028
    .local v21, padding:I
    if-nez p1, :cond_0

    .line 1030
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    mul-int/lit8 v8, v2, 0x10

    .line 1031
    .local v8, bitsPerScanline:I
    rem-int/lit8 v2, v8, 0x20

    if-eqz v2, :cond_0

    .line 1032
    div-int/lit8 v2, v8, 0x20

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x20

    sub-int v21, v2, v8

    .line 1033
    move/from16 v0, v21

    int-to-double v2, v0

    const-wide/high16 v4, 0x4020

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v21, v0

    .line 1037
    .end local v8           #bitsPerScanline:I
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageSize:J

    long-to-int v0, v2

    move/from16 v16, v0

    .line 1038
    .local v16, imSize:I
    if-nez v16, :cond_1

    .line 1039
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapFileSize:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    move/from16 v16, v0

    .line 1042
    :cond_1
    const/16 v18, 0x0

    .line 1044
    .local v18, l:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->isBottomUp:Z

    if-eqz v2, :cond_5

    .line 1045
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    add-int/lit8 v15, v2, -0x1

    .local v15, i:I
    :goto_0
    if-ltz v15, :cond_9

    .line 1046
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    mul-int/lit8 v2, v2, 0x3

    mul-int v18, v2, v15

    .line 1047
    const/16 v17, 0x0

    .local v17, j:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    .line 1048
    if-eqz p1, :cond_2

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v25, v0

    .line 1052
    .local v25, v:I
    :goto_2
    add-int/lit8 v19, v18, 0x1

    .end local v18           #l:I
    .local v19, l:I
    ushr-int v2, v25, v24

    and-int v2, v2, v23

    mul-int/lit16 v2, v2, 0x100

    div-int v2, v2, v22

    int-to-byte v2, v2

    aput-byte v2, v7, v18

    .line 1053
    add-int/lit8 v18, v19, 0x1

    .end local v19           #l:I
    .restart local v18       #l:I
    ushr-int v2, v25, v14

    and-int/2addr v2, v13

    mul-int/lit16 v2, v2, 0x100

    div-int/2addr v2, v12

    int-to-byte v2, v2

    aput-byte v2, v7, v19

    .line 1054
    add-int/lit8 v19, v18, 0x1

    .end local v18           #l:I
    .restart local v19       #l:I
    ushr-int v2, v25, v11

    and-int/2addr v2, v10

    mul-int/lit16 v2, v2, 0x100

    div-int/2addr v2, v9

    int-to-byte v2, v2

    aput-byte v2, v7, v18

    .line 1047
    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v19

    .end local v19           #l:I
    .restart local v18       #l:I
    goto :goto_1

    .line 1051
    .end local v25           #v:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readWord(Ljava/io/InputStream;)I

    move-result v25

    .restart local v25       #v:I
    goto :goto_2

    .line 1056
    .end local v25           #v:I
    :cond_3
    const/16 v20, 0x0

    .local v20, m:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 1056
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 1045
    :cond_4
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 1061
    .end local v15           #i:I
    .end local v17           #j:I
    .end local v20           #m:I
    :cond_5
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    if-ge v15, v2, :cond_9

    .line 1062
    const/16 v17, 0x0

    .restart local v17       #j:I
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_7

    .line 1063
    if-eqz p1, :cond_6

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v25, v0

    .line 1067
    .restart local v25       #v:I
    :goto_6
    add-int/lit8 v19, v18, 0x1

    .end local v18           #l:I
    .restart local v19       #l:I
    ushr-int v2, v25, v24

    and-int v2, v2, v23

    mul-int/lit16 v2, v2, 0x100

    div-int v2, v2, v22

    int-to-byte v2, v2

    aput-byte v2, v7, v18

    .line 1068
    add-int/lit8 v18, v19, 0x1

    .end local v19           #l:I
    .restart local v18       #l:I
    ushr-int v2, v25, v14

    and-int/2addr v2, v13

    mul-int/lit16 v2, v2, 0x100

    div-int/2addr v2, v12

    int-to-byte v2, v2

    aput-byte v2, v7, v19

    .line 1069
    add-int/lit8 v19, v18, 0x1

    .end local v18           #l:I
    .restart local v19       #l:I
    ushr-int v2, v25, v11

    and-int/2addr v2, v10

    mul-int/lit16 v2, v2, 0x100

    div-int/2addr v2, v9

    int-to-byte v2, v2

    aput-byte v2, v7, v18

    .line 1062
    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v19

    .end local v19           #l:I
    .restart local v18       #l:I
    goto :goto_5

    .line 1066
    .end local v25           #v:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readWord(Ljava/io/InputStream;)I

    move-result v25

    .restart local v25       #v:I
    goto :goto_6

    .line 1071
    .end local v25           #v:I
    :cond_7
    const/16 v20, 0x0

    .restart local v20       #m:I
    :goto_7
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 1071
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 1061
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1076
    .end local v17           #j:I
    .end local v20           #m:I
    :cond_9
    new-instance v2, Lcom/itextpdf/text/ImgRaw;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    const/4 v5, 0x3

    const/16 v6, 0x8

    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/text/ImgRaw;-><init>(IIII[B)V

    return-object v2
.end method

.method private read1Bit(I)Lcom/itextpdf/text/Image;
    .locals 12
    .parameter "paletteEntries"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 800
    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x8

    iget v9, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int/2addr v8, v9

    new-array v0, v8, [B

    .line 801
    .local v0, bdata:[B
    const/4 v5, 0x0

    .line 802
    .local v5, padding:I
    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x4020

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 804
    .local v1, bytesPerScanline:I
    rem-int/lit8 v6, v1, 0x4

    .line 805
    .local v6, remainder:I
    if-eqz v6, :cond_0

    .line 806
    rsub-int/lit8 v5, v6, 0x4

    .line 809
    :cond_0
    add-int v8, v1, v5

    iget v9, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int v4, v8, v9

    .line 812
    .local v4, imSize:I
    new-array v7, v4, [B

    .line 813
    .local v7, values:[B
    const/4 v2, 0x0

    .line 814
    .local v2, bytesRead:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 815
    iget-object v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    sub-int v9, v4, v2

    invoke-virtual {v8, v7, v2, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    add-int/2addr v2, v8

    goto :goto_0

    .line 819
    :cond_1
    iget-boolean v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->isBottomUp:Z

    if-eqz v8, :cond_2

    .line 824
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    if-ge v3, v8, :cond_3

    .line 825
    add-int/lit8 v8, v3, 0x1

    add-int v9, v1, v5

    mul-int/2addr v8, v9

    sub-int v8, v4, v8

    mul-int v9, v3, v1

    invoke-static {v7, v8, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 832
    .end local v3           #i:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    if-ge v3, v8, :cond_3

    .line 833
    add-int v8, v1, v5

    mul-int/2addr v8, v3

    mul-int v9, v3, v1

    invoke-static {v7, v8, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 840
    :cond_3
    const/4 v8, 0x1

    invoke-direct {p0, v0, v8, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->indexedModel([BII)Lcom/itextpdf/text/Image;

    move-result-object v8

    return-object v8
.end method

.method private read24Bit([B)V
    .locals 18
    .parameter "bdata"

    .prologue
    .line 937
    const/4 v11, 0x0

    .line 940
    .local v11, padding:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    mul-int/lit8 v1, v14, 0x18

    .line 941
    .local v1, bitsPerScanline:I
    rem-int/lit8 v14, v1, 0x20

    if-eqz v14, :cond_0

    .line 942
    div-int/lit8 v14, v1, 0x20

    add-int/lit8 v14, v14, 0x1

    mul-int/lit8 v14, v14, 0x20

    sub-int v11, v14, v1

    .line 943
    int-to-double v14, v11

    const-wide/high16 v16, 0x4020

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v11, v14

    .line 947
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    mul-int/lit8 v14, v14, 0x3

    add-int/lit8 v14, v14, 0x3

    div-int/lit8 v14, v14, 0x4

    mul-int/lit8 v14, v14, 0x4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int v6, v14, v15

    .line 949
    .local v6, imSize:I
    new-array v13, v6, [B

    .line 951
    .local v13, values:[B
    const/4 v2, 0x0

    .line 952
    .local v2, bytesRead:I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 953
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    sub-int v15, v6, v2

    invoke-virtual {v14, v13, v2, v15}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 955
    .local v12, r:I
    if-gez v12, :cond_2

    .line 963
    .end local v12           #r:I
    :cond_1
    const/4 v9, 0x0

    .line 965
    .local v9, l:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->isBottomUp:Z

    if-eqz v14, :cond_4

    .line 966
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x3

    add-int/lit8 v10, v14, -0x1

    .line 968
    .local v10, max:I
    neg-int v3, v11

    .line 969
    .local v3, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    if-ge v5, v14, :cond_6

    .line 970
    add-int/lit8 v14, v5, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    mul-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x3

    sub-int v14, v10, v14

    add-int/lit8 v9, v14, 0x1

    .line 971
    add-int/2addr v3, v11

    .line 972
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    if-ge v8, v14, :cond_3

    .line 973
    add-int/lit8 v14, v9, 0x2

    add-int/lit8 v4, v3, 0x1

    .end local v3           #count:I
    .local v4, count:I
    aget-byte v15, v13, v3

    aput-byte v15, p1, v14

    .line 974
    add-int/lit8 v14, v9, 0x1

    add-int/lit8 v3, v4, 0x1

    .end local v4           #count:I
    .restart local v3       #count:I
    aget-byte v15, v13, v4

    aput-byte v15, p1, v14

    .line 975
    add-int/lit8 v4, v3, 0x1

    .end local v3           #count:I
    .restart local v4       #count:I
    aget-byte v14, v13, v3

    aput-byte v14, p1, v9

    .line 976
    add-int/lit8 v9, v9, 0x3

    .line 972
    add-int/lit8 v8, v8, 0x1

    move v3, v4

    .end local v4           #count:I
    .restart local v3       #count:I
    goto :goto_2

    .line 957
    .end local v3           #count:I
    .end local v5           #i:I
    .end local v8           #j:I
    .end local v9           #l:I
    .end local v10           #max:I
    .restart local v12       #r:I
    :cond_2
    add-int/2addr v2, v12

    .line 958
    goto :goto_0

    .line 959
    .end local v12           #r:I
    :catch_0
    move-exception v7

    .line 960
    .local v7, ioe:Ljava/io/IOException;
    new-instance v14, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v14, v7}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v14

    .line 969
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v3       #count:I
    .restart local v5       #i:I
    .restart local v8       #j:I
    .restart local v9       #l:I
    .restart local v10       #max:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 980
    .end local v3           #count:I
    .end local v5           #i:I
    .end local v8           #j:I
    .end local v10           #max:I
    :cond_4
    neg-int v3, v11

    .line 981
    .restart local v3       #count:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    if-ge v5, v14, :cond_6

    .line 982
    add-int/2addr v3, v11

    .line 983
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    if-ge v8, v14, :cond_5

    .line 984
    add-int/lit8 v14, v9, 0x2

    add-int/lit8 v4, v3, 0x1

    .end local v3           #count:I
    .restart local v4       #count:I
    aget-byte v15, v13, v3

    aput-byte v15, p1, v14

    .line 985
    add-int/lit8 v14, v9, 0x1

    add-int/lit8 v3, v4, 0x1

    .end local v4           #count:I
    .restart local v3       #count:I
    aget-byte v15, v13, v4

    aput-byte v15, p1, v14

    .line 986
    add-int/lit8 v4, v3, 0x1

    .end local v3           #count:I
    .restart local v4       #count:I
    aget-byte v14, v13, v3

    aput-byte v14, p1, v9

    .line 987
    add-int/lit8 v9, v9, 0x3

    .line 983
    add-int/lit8 v8, v8, 0x1

    move v3, v4

    .end local v4           #count:I
    .restart local v3       #count:I
    goto :goto_4

    .line 981
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 991
    .end local v8           #j:I
    :cond_6
    return-void
.end method

.method private read4Bit(I)Lcom/itextpdf/text/Image;
    .locals 12
    .parameter "paletteEntries"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 845
    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    add-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int/2addr v8, v9

    new-array v0, v8, [B

    .line 848
    .local v0, bdata:[B
    const/4 v5, 0x0

    .line 850
    .local v5, padding:I
    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 851
    .local v1, bytesPerScanline:I
    rem-int/lit8 v6, v1, 0x4

    .line 852
    .local v6, remainder:I
    if-eqz v6, :cond_0

    .line 853
    rsub-int/lit8 v5, v6, 0x4

    .line 856
    :cond_0
    add-int v8, v1, v5

    iget v9, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int v4, v8, v9

    .line 859
    .local v4, imSize:I
    new-array v7, v4, [B

    .line 860
    .local v7, values:[B
    const/4 v2, 0x0

    .line 861
    .local v2, bytesRead:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 862
    iget-object v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    sub-int v9, v4, v2

    invoke-virtual {v8, v7, v2, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    add-int/2addr v2, v8

    goto :goto_0

    .line 866
    :cond_1
    iget-boolean v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->isBottomUp:Z

    if-eqz v8, :cond_2

    .line 870
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    if-ge v3, v8, :cond_3

    .line 871
    add-int/lit8 v8, v3, 0x1

    add-int v9, v1, v5

    mul-int/2addr v8, v9

    sub-int v8, v4, v8

    mul-int v9, v3, v1

    invoke-static {v7, v8, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 870
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 878
    .end local v3           #i:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    if-ge v3, v8, :cond_3

    .line 879
    add-int v8, v1, v5

    mul-int/2addr v8, v3

    mul-int v9, v3, v1

    invoke-static {v7, v8, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 886
    :cond_3
    const/4 v8, 0x4

    invoke-direct {p0, v0, v8, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->indexedModel([BII)Lcom/itextpdf/text/Image;

    move-result-object v8

    return-object v8
.end method

.method private read8Bit(I)Lcom/itextpdf/text/Image;
    .locals 11
    .parameter "paletteEntries"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 891
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int/2addr v7, v8

    new-array v0, v7, [B

    .line 893
    .local v0, bdata:[B
    const/4 v5, 0x0

    .line 896
    .local v5, padding:I
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    mul-int/lit8 v1, v7, 0x8

    .line 897
    .local v1, bitsPerScanline:I
    rem-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_0

    .line 898
    div-int/lit8 v7, v1, 0x20

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x20

    sub-int v5, v7, v1

    .line 899
    int-to-double v7, v5

    const-wide/high16 v9, 0x4020

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    .line 902
    :cond_0
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    add-int/2addr v7, v5

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int v4, v7, v8

    .line 905
    .local v4, imSize:I
    new-array v6, v4, [B

    .line 906
    .local v6, values:[B
    const/4 v2, 0x0

    .line 907
    .local v2, bytesRead:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 908
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    sub-int v8, v4, v2

    invoke-virtual {v7, v6, v2, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_0

    .line 911
    :cond_1
    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->isBottomUp:Z

    if-eqz v7, :cond_2

    .line 915
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    if-ge v3, v7, :cond_3

    .line 916
    add-int/lit8 v7, v3, 0x1

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    add-int/2addr v8, v5

    mul-int/2addr v7, v8

    sub-int v7, v4, v7

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    mul-int/2addr v8, v3

    iget v9, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    invoke-static {v6, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 923
    .end local v3           #i:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    if-ge v3, v7, :cond_3

    .line 924
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    add-int/2addr v7, v5

    mul-int/2addr v7, v3

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    mul-int/2addr v8, v3

    iget v9, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    invoke-static {v6, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 923
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 931
    :cond_3
    const/16 v7, 0x8

    invoke-direct {p0, v0, v7, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->indexedModel([BII)Lcom/itextpdf/text/Image;

    move-result-object v7

    return-object v7
.end method

.method private readDWord(Ljava/io/InputStream;)J
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1292
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedInt(Ljava/io/InputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1283
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v0

    .line 1284
    .local v0, b1:I
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v1

    .line 1285
    .local v1, b2:I
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v2

    .line 1286
    .local v2, b3:I
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v3

    .line 1287
    .local v3, b4:I
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v0

    return v4
.end method

.method private readLong(Ljava/io/InputStream;)I
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1297
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readInt(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private readPalette(I)V
    .locals 5
    .parameter "sizeOfPalette"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    if-nez p1, :cond_0

    .line 796
    :goto_0
    return-void

    .line 786
    :cond_0
    new-array v2, p1, [B

    iput-object v2, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    .line 787
    const/4 v0, 0x0

    .line 788
    .local v0, bytesRead:I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 789
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    sub-int v4, p1, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 790
    .local v1, r:I
    if-gez v1, :cond_1

    .line 791
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "incomplete.palette"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 793
    :cond_1
    add-int/2addr v0, v1

    .line 794
    goto :goto_1

    .line 795
    .end local v1           #r:I
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    const-string v3, "palette"

    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private readRLE4()Lcom/itextpdf/text/Image;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 1122
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageSize:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-int v7, v0

    .line 1123
    .local v7, imSize:I
    if-nez v7, :cond_0

    .line 1124
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapFileSize:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v7, v0

    .line 1128
    :cond_0
    new-array v0, v7, [B

    move-object/from16 v19, v0

    .line 1129
    .local v19, values:[B
    const/4 v4, 0x0

    .line 1130
    .local v4, bytesRead:I
    :goto_0
    if-ge v4, v7, :cond_1

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v21, v0

    sub-int v22, v7, v4

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v21

    add-int v4, v4, v21

    goto :goto_0

    .line 1136
    :cond_1
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->decodeRLE(Z[B)[B

    move-result-object v18

    .line 1139
    .local v18, val:[B
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->isBottomUp:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 1141
    move-object/from16 v10, v18

    .line 1142
    .local v10, inverted:[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 1143
    const/4 v11, 0x0

    .line 1145
    .local v11, l:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    move/from16 v21, v0

    add-int/lit8 v6, v21, -0x1

    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_3

    .line 1146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    move/from16 v21, v0

    mul-int v8, v6, v21

    .line 1147
    .local v8, index:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    move/from16 v21, v0

    add-int v13, v11, v21

    .local v13, lineEnd:I
    move v9, v8

    .end local v8           #index:I
    .local v9, index:I
    move v12, v11

    .line 1148
    .end local v11           #l:I
    .local v12, l:I
    :goto_2
    if-eq v12, v13, :cond_2

    .line 1149
    add-int/lit8 v11, v12, 0x1

    .end local v12           #l:I
    .restart local v11       #l:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #index:I
    .restart local v8       #index:I
    aget-byte v21, v10, v9

    aput-byte v21, v18, v12

    move v9, v8

    .end local v8           #index:I
    .restart local v9       #index:I
    move v12, v11

    .end local v11           #l:I
    .restart local v12       #l:I
    goto :goto_2

    .line 1145
    :cond_2
    add-int/lit8 v6, v6, -0x1

    move v11, v12

    .end local v12           #l:I
    .restart local v11       #l:I
    goto :goto_1

    .line 1153
    .end local v6           #i:I
    .end local v9           #index:I
    .end local v10           #inverted:[B
    .end local v11           #l:I
    .end local v13           #lineEnd:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    div-int/lit8 v17, v21, 0x2

    .line 1154
    .local v17, stride:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    move/from16 v21, v0

    mul-int v21, v21, v17

    move/from16 v0, v21

    new-array v3, v0, [B

    .line 1155
    .local v3, bdata:[B
    const/4 v14, 0x0

    .line 1156
    .local v14, ptr:I
    const/16 v16, 0x0

    .line 1157
    .local v16, sh:I
    const/4 v5, 0x0

    .local v5, h:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_6

    .line 1158
    const/16 v20, 0x0

    .local v20, w:I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 1159
    and-int/lit8 v21, v20, 0x1

    if-nez v21, :cond_4

    .line 1160
    div-int/lit8 v21, v20, 0x2

    add-int v21, v21, v16

    add-int/lit8 v15, v14, 0x1

    .end local v14           #ptr:I
    .local v15, ptr:I
    aget-byte v22, v18, v14

    shl-int/lit8 v22, v22, 0x4

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v21

    move v14, v15

    .line 1158
    .end local v15           #ptr:I
    .restart local v14       #ptr:I
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 1162
    :cond_4
    div-int/lit8 v21, v20, 0x2

    add-int v21, v21, v16

    aget-byte v22, v3, v21

    add-int/lit8 v15, v14, 0x1

    .end local v14           #ptr:I
    .restart local v15       #ptr:I
    aget-byte v23, v18, v14

    and-int/lit8 v23, v23, 0xf

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v21

    move v14, v15

    .end local v15           #ptr:I
    .restart local v14       #ptr:I
    goto :goto_5

    .line 1164
    :cond_5
    add-int v16, v16, v17

    .line 1157
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1166
    .end local v20           #w:I
    :cond_6
    const/16 v21, 0x4

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/text/pdf/codec/BmpImage;->indexedModel([BII)Lcom/itextpdf/text/Image;

    move-result-object v21

    return-object v21
.end method

.method private readRLE8()Lcom/itextpdf/text/Image;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 1082
    iget-wide v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageSize:J

    long-to-int v3, v7

    .line 1083
    .local v3, imSize:I
    if-nez v3, :cond_0

    .line 1084
    iget-wide v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapFileSize:J

    iget-wide v9, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    sub-long/2addr v7, v9

    long-to-int v3, v7

    .line 1088
    :cond_0
    new-array v6, v3, [B

    .line 1089
    .local v6, values:[B
    const/4 v1, 0x0

    .line 1090
    .local v1, bytesRead:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1091
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    sub-int v8, v3, v1

    invoke-virtual {v7, v6, v1, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    add-int/2addr v1, v7

    goto :goto_0

    .line 1096
    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, v7, v6}, Lcom/itextpdf/text/pdf/codec/BmpImage;->decodeRLE(Z[B)[B

    move-result-object v5

    .line 1099
    .local v5, val:[B
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    mul-int v3, v7, v8

    .line 1101
    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->isBottomUp:Z

    if-eqz v7, :cond_3

    .line 1106
    array-length v7, v5

    new-array v4, v7, [B

    .line 1107
    .local v4, temp:[B
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    .line 1108
    .local v0, bytesPerScanline:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    if-ge v2, v7, :cond_2

    .line 1109
    add-int/lit8 v7, v2, 0x1

    mul-int/2addr v7, v0

    sub-int v7, v3, v7

    mul-int v8, v2, v0

    invoke-static {v5, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1108
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1114
    :cond_2
    move-object v5, v4

    .line 1116
    .end local v0           #bytesPerScanline:I
    .end local v2           #i:I
    .end local v4           #temp:[B
    :cond_3
    const/16 v7, 0x8

    const/4 v8, 0x4

    invoke-direct {p0, v5, v7, v8}, Lcom/itextpdf/text/pdf/codec/BmpImage;->indexedModel([BII)Lcom/itextpdf/text/Image;

    move-result-object v7

    return-object v7
.end method

.method private readShort(Ljava/io/InputStream;)I
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1261
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v0

    .line 1262
    .local v0, b1:I
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v1

    .line 1263
    .local v1, b2:I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    return v2
.end method

.method private readUnsignedByte(Ljava/io/InputStream;)I
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1249
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readUnsignedInt(Ljava/io/InputStream;)J
    .locals 8
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1273
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v0

    .line 1274
    .local v0, b1:I
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v1

    .line 1275
    .local v1, b2:I
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v2

    .line 1276
    .local v2, b3:I
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v3

    .line 1277
    .local v3, b4:I
    shl-int/lit8 v6, v3, 0x18

    shl-int/lit8 v7, v2, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, v1, 0x8

    or-int/2addr v6, v7

    or-int/2addr v6, v0

    int-to-long v4, v6

    .line 1278
    .local v4, l:J
    const-wide/16 v6, -0x1

    and-long/2addr v6, v4

    return-wide v6
.end method

.method private readUnsignedShort(Ljava/io/InputStream;)I
    .locals 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1254
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v0

    .line 1255
    .local v0, b1:I
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v1

    .line 1256
    .local v1, b2:I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    const v3, 0xffff

    and-int/2addr v2, v3

    return v2
.end method

.method private readWord(Ljava/io/InputStream;)I
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1268
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedShort(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected process(Ljava/io/InputStream;Z)V
    .locals 39
    .parameter "stream"
    .parameter "noHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    if-nez p2, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/io/BufferedInputStream;

    move/from16 v35, v0

    if-eqz v35, :cond_2

    .line 247
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    .line 251
    :goto_0
    if-nez p2, :cond_4

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v35

    const/16 v36, 0x42

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v35

    const/16 v36, 0x4d

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_3

    .line 255
    :cond_1
    new-instance v35, Ljava/lang/RuntimeException;

    const-string v36, "invalid.magic.value.for.bmp.file"

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 249
    :cond_2
    new-instance v35, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 259
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v35

    move-wide/from16 v0, v35

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapFileSize:J

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readWord(Ljava/io/InputStream;)I

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readWord(Ljava/io/InputStream;)I

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v35

    move-wide/from16 v0, v35

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    .line 271
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v31

    .line 273
    .local v31, size:J
    const-wide/16 v35, 0xc

    cmp-long v35, v31, v35

    if-nez v35, :cond_b

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readWord(Ljava/io/InputStream;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readWord(Ljava/io/InputStream;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    .line 281
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readWord(Ljava/io/InputStream;)I

    move-result v26

    .line 282
    .local v26, planes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readWord(Ljava/io/InputStream;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "color_planes"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "bits_per_pixel"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const/16 v35, 0x3

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->numBands:I

    .line 290
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    move-wide/from16 v35, v0

    const-wide/16 v37, 0x0

    cmp-long v35, v35, v37

    if-nez v35, :cond_5

    .line 291
    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    .line 292
    :cond_5
    const-wide/16 v35, 0xc

    cmp-long v35, v31, v35

    if-nez v35, :cond_f

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "bmp_version"

    const-string v37, "BMP v. 2.x"

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    .line 298
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    .line 308
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    move-wide/from16 v35, v0

    const-wide/16 v37, 0xe

    sub-long v35, v35, v37

    sub-long v35, v35, v31

    const-wide/16 v37, 0x3

    div-long v35, v35, v37

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v24, v0

    .line 309
    .local v24, numberOfEntries:I
    mul-int/lit8 v33, v24, 0x3

    .line 310
    .local v33, sizeOfPalette:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    move-wide/from16 v35, v0

    cmp-long v35, v35, v31

    if-nez v35, :cond_7

    .line 311
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_0

    .line 325
    :goto_3
    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v35, v0

    add-long v35, v35, v31

    move-wide/from16 v0, v35

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    .line 327
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readPalette(I)V

    .line 565
    .end local v24           #numberOfEntries:I
    .end local v33           #sizeOfPalette:I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    move/from16 v35, v0

    if-lez v35, :cond_29

    .line 567
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->isBottomUp:Z

    .line 574
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2c

    .line 576
    :cond_8
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->numBands:I

    .line 582
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    move/from16 v35, v0

    if-eqz v35, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2a

    .line 586
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    div-int/lit8 v34, v35, 0x3

    .line 588
    .local v34, sizep:I
    const/16 v35, 0x100

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_a

    .line 589
    const/16 v34, 0x100

    .line 593
    :cond_a
    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 594
    .local v27, r:[B
    move/from16 v0, v34

    new-array v13, v0, [B

    .line 595
    .local v13, g:[B
    move/from16 v0, v34

    new-array v3, v0, [B

    .line 596
    .local v3, b:[B
    const/16 v23, 0x0

    .local v23, i:I
    :goto_6
    move/from16 v0, v23

    move/from16 v1, v34

    if-ge v0, v1, :cond_2d

    .line 597
    mul-int/lit8 v25, v23, 0x3

    .line 598
    .local v25, off:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    move-object/from16 v35, v0

    aget-byte v35, v35, v25

    aput-byte v35, v3, v23

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    move-object/from16 v35, v0

    add-int/lit8 v36, v25, 0x1

    aget-byte v35, v35, v36

    aput-byte v35, v13, v23

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    move-object/from16 v35, v0

    add-int/lit8 v36, v25, 0x2

    aget-byte v35, v35, v36

    aput-byte v35, v27, v23

    .line 596
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 277
    .end local v3           #b:[B
    .end local v13           #g:[B
    .end local v23           #i:I
    .end local v25           #off:I
    .end local v26           #planes:I
    .end local v27           #r:[B
    .end local v34           #sizep:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readLong(Ljava/io/InputStream;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->width:I

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readLong(Ljava/io/InputStream;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    goto/16 :goto_1

    .line 299
    .restart local v26       #planes:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_d

    .line 300
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    goto/16 :goto_2

    .line 301
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_e

    .line 302
    const/16 v35, 0x2

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    goto/16 :goto_2

    .line 303
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x18

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    .line 304
    const/16 v35, 0x3

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    goto/16 :goto_2

    .line 313
    .restart local v24       #numberOfEntries:I
    .restart local v33       #sizeOfPalette:I
    :pswitch_0
    const/16 v33, 0x6

    .line 314
    goto/16 :goto_3

    .line 316
    :pswitch_1
    const/16 v33, 0x30

    .line 317
    goto/16 :goto_3

    .line 319
    :pswitch_2
    const/16 v33, 0x300

    .line 320
    goto/16 :goto_3

    .line 322
    :pswitch_3
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 330
    .end local v24           #numberOfEntries:I
    .end local v33           #sizeOfPalette:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v35

    move-wide/from16 v0, v35

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/itextpdf/text/pdf/codec/BmpImage;->compression:J

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v35

    move-wide/from16 v0, v35

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageSize:J

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readLong(Ljava/io/InputStream;)I

    move-result v35

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-wide/from16 v0, v35

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/itextpdf/text/pdf/codec/BmpImage;->xPelsPerMeter:J

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readLong(Ljava/io/InputStream;)I

    move-result v35

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-wide/from16 v0, v35

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/itextpdf/text/pdf/codec/BmpImage;->yPelsPerMeter:J

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v9

    .line 335
    .local v9, colorsUsed:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v7

    .line 337
    .local v7, colorsImportant:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->compression:J

    move-wide/from16 v35, v0

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_1

    .line 355
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "x_pixels_per_meter"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->xPelsPerMeter:J

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "y_pixels_per_meter"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->yPelsPerMeter:J

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "colors_used"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "colors_important"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-wide/16 v35, 0x28

    cmp-long v35, v31, v35

    if-nez v35, :cond_1d

    .line 362
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->compression:J

    move-wide/from16 v35, v0

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_2

    .line 446
    new-instance v35, Ljava/lang/RuntimeException;

    const-string v36, "Invalid compression specified in BMP file."

    invoke-direct/range {v35 .. v36}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 339
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "compression"

    const-string v37, "BI_RGB"

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 343
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "compression"

    const-string v37, "BI_RLE8"

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 347
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "compression"

    const-string v37, "BI_RLE4"

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 351
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "compression"

    const-string v37, "BI_BITFIELDS"

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 368
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_12

    .line 369
    const/16 v35, 0x4

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    .line 395
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    move-wide/from16 v35, v0

    const-wide/16 v37, 0xe

    sub-long v35, v35, v37

    sub-long v35, v35, v31

    const-wide/16 v37, 0x4

    div-long v35, v35, v37

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v24, v0

    .line 396
    .restart local v24       #numberOfEntries:I
    mul-int/lit8 v33, v24, 0x4

    .line 397
    .restart local v33       #sizeOfPalette:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    move-wide/from16 v35, v0

    cmp-long v35, v35, v31

    if-nez v35, :cond_11

    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_3

    .line 409
    const/16 v33, 0x0

    .line 412
    .end local v9           #colorsUsed:J
    :goto_9
    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v35, v0

    add-long v35, v35, v31

    move-wide/from16 v0, v35

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    .line 414
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readPalette(I)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "bmp_version"

    const-string v37, "BMP v. 3.x"

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 370
    .end local v24           #numberOfEntries:I
    .end local v33           #sizeOfPalette:I
    .restart local v9       #colorsUsed:J
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    .line 371
    const/16 v35, 0x5

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    goto :goto_8

    .line 372
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_14

    .line 373
    const/16 v35, 0x6

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    goto :goto_8

    .line 374
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x18

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_15

    .line 375
    const/16 v35, 0x7

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    goto/16 :goto_8

    .line 376
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x10

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_16

    .line 377
    const/16 v35, 0x8

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    .line 378
    const/16 v35, 0x7c00

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->redMask:I

    .line 379
    const/16 v35, 0x3e0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->greenMask:I

    .line 380
    const/16 v35, 0x1f

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->blueMask:I

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "red_mask"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->redMask:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "green_mask"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->greenMask:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "blue_mask"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->blueMask:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 384
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x20

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    .line 385
    const/16 v35, 0x9

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    .line 386
    const/high16 v35, 0xff

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->redMask:I

    .line 387
    const v35, 0xff00

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->greenMask:I

    .line 388
    const/16 v35, 0xff

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->blueMask:I

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "red_mask"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->redMask:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "green_mask"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->greenMask:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "blue_mask"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->blueMask:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 400
    .restart local v24       #numberOfEntries:I
    .restart local v33       #sizeOfPalette:I
    :pswitch_9
    const-wide/16 v35, 0x0

    cmp-long v35, v9, v35

    if-nez v35, :cond_17

    const-wide/16 v9, 0x2

    .end local v9           #colorsUsed:J
    :cond_17
    long-to-int v0, v9

    move/from16 v35, v0

    mul-int/lit8 v33, v35, 0x4

    .line 401
    goto/16 :goto_9

    .line 403
    .restart local v9       #colorsUsed:J
    :pswitch_a
    const-wide/16 v35, 0x0

    cmp-long v35, v9, v35

    if-nez v35, :cond_18

    const-wide/16 v9, 0x10

    .end local v9           #colorsUsed:J
    :cond_18
    long-to-int v0, v9

    move/from16 v35, v0

    mul-int/lit8 v33, v35, 0x4

    .line 404
    goto/16 :goto_9

    .line 406
    .restart local v9       #colorsUsed:J
    :pswitch_b
    const-wide/16 v35, 0x0

    cmp-long v35, v9, v35

    if-nez v35, :cond_19

    const-wide/16 v9, 0x100

    .end local v9           #colorsUsed:J
    :cond_19
    long-to-int v0, v9

    move/from16 v35, v0

    mul-int/lit8 v33, v35, 0x4

    .line 407
    goto/16 :goto_9

    .line 421
    .end local v24           #numberOfEntries:I
    .end local v33           #sizeOfPalette:I
    .restart local v9       #colorsUsed:J
    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x10

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1c

    .line 422
    const/16 v35, 0x8

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    .line 428
    :cond_1a
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v35

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->redMask:I

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v35

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->greenMask:I

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v35

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->blueMask:I

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "red_mask"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->redMask:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "green_mask"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->greenMask:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "blue_mask"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->blueMask:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-wide/16 v35, 0x0

    cmp-long v35, v9, v35

    if-eqz v35, :cond_1b

    .line 438
    long-to-int v0, v9

    move/from16 v35, v0

    mul-int/lit8 v33, v35, 0x4

    .line 439
    .restart local v33       #sizeOfPalette:I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readPalette(I)V

    .line 442
    .end local v33           #sizeOfPalette:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "bmp_version"

    const-string v37, "BMP v. 3.x NT"

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 423
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x20

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    .line 424
    const/16 v35, 0x9

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    goto/16 :goto_a

    .line 449
    :cond_1d
    const-wide/16 v35, 0x6c

    cmp-long v35, v31, v35

    if-nez v35, :cond_28

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "bmp_version"

    const-string v37, "BMP v. 4.x"

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v35

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->redMask:I

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v35

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->greenMask:I

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v35

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->blueMask:I

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v35

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->alphaMask:I

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 461
    .local v11, csType:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readLong(Ljava/io/InputStream;)I

    move-result v28

    .line 462
    .local v28, redX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readLong(Ljava/io/InputStream;)I

    move-result v29

    .line 463
    .local v29, redY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readLong(Ljava/io/InputStream;)I

    move-result v30

    .line 464
    .local v30, redZ:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readLong(Ljava/io/InputStream;)I

    move-result v20

    .line 465
    .local v20, greenX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readLong(Ljava/io/InputStream;)I

    move-result v21

    .line 466
    .local v21, greenY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readLong(Ljava/io/InputStream;)I

    move-result v22

    .line 467
    .local v22, greenZ:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readLong(Ljava/io/InputStream;)I

    move-result v4

    .line 468
    .local v4, blueX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readLong(Ljava/io/InputStream;)I

    move-result v5

    .line 469
    .local v5, blueY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readLong(Ljava/io/InputStream;)I

    move-result v6

    .line 470
    .local v6, blueZ:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v18

    .line 471
    .local v18, gammaRed:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v16

    .line 472
    .local v16, gammaGreen:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v14

    .line 474
    .local v14, gammaBlue:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_20

    .line 475
    const/16 v35, 0xa

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    .line 498
    :cond_1e
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "red_mask"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->redMask:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "green_mask"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->greenMask:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "blue_mask"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->blueMask:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "alpha_mask"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->alphaMask:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    move-wide/from16 v35, v0

    const-wide/16 v37, 0xe

    sub-long v35, v35, v37

    sub-long v35, v35, v31

    const-wide/16 v37, 0x4

    div-long v35, v35, v37

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v24, v0

    .line 505
    .restart local v24       #numberOfEntries:I
    mul-int/lit8 v33, v24, 0x4

    .line 506
    .restart local v33       #sizeOfPalette:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    move-wide/from16 v35, v0

    cmp-long v35, v35, v31

    if-nez v35, :cond_1f

    .line 507
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_4

    .line 518
    const/16 v33, 0x0

    .line 521
    .end local v9           #colorsUsed:J
    :goto_c
    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v35, v0

    add-long v35, v35, v31

    move-wide/from16 v0, v35

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitmapOffset:J

    .line 523
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/BmpImage;->readPalette(I)V

    .line 525
    long-to-int v0, v11

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_5

    goto/16 :goto_4

    .line 528
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "color_space"

    const-string v37, "LCS_CALIBRATED_RGB"

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "redX"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "redY"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "redZ"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "greenX"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "greenY"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "greenZ"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "blueX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "blueY"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "blueZ"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "gamma_red"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "gamma_green"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "gamma_blue"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    new-instance v35, Ljava/lang/RuntimeException;

    const-string v36, "Not implemented yet."

    invoke-direct/range {v35 .. v36}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 476
    .end local v24           #numberOfEntries:I
    .end local v33           #sizeOfPalette:I
    .restart local v9       #colorsUsed:J
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_21

    .line 477
    const/16 v35, 0xb

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    goto/16 :goto_b

    .line 478
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_22

    .line 479
    const/16 v35, 0xc

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    goto/16 :goto_b

    .line 480
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x10

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_23

    .line 481
    const/16 v35, 0xd

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    .line 482
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->compression:J

    move-wide/from16 v35, v0

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    if-nez v35, :cond_1e

    .line 483
    const/16 v35, 0x7c00

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->redMask:I

    .line 484
    const/16 v35, 0x3e0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->greenMask:I

    .line 485
    const/16 v35, 0x1f

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->blueMask:I

    goto/16 :goto_b

    .line 487
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x18

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_24

    .line 488
    const/16 v35, 0xe

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    goto/16 :goto_b

    .line 489
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x20

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1e

    .line 490
    const/16 v35, 0xf

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->imageType:I

    .line 491
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->compression:J

    move-wide/from16 v35, v0

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    if-nez v35, :cond_1e

    .line 492
    const/high16 v35, 0xff

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->redMask:I

    .line 493
    const v35, 0xff00

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->greenMask:I

    .line 494
    const/16 v35, 0xff

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->blueMask:I

    goto/16 :goto_b

    .line 509
    .restart local v24       #numberOfEntries:I
    .restart local v33       #sizeOfPalette:I
    :pswitch_e
    const-wide/16 v35, 0x0

    cmp-long v35, v9, v35

    if-nez v35, :cond_25

    const-wide/16 v9, 0x2

    .end local v9           #colorsUsed:J
    :cond_25
    long-to-int v0, v9

    move/from16 v35, v0

    mul-int/lit8 v33, v35, 0x4

    .line 510
    goto/16 :goto_c

    .line 512
    .restart local v9       #colorsUsed:J
    :pswitch_f
    const-wide/16 v35, 0x0

    cmp-long v35, v9, v35

    if-nez v35, :cond_26

    const-wide/16 v9, 0x10

    .end local v9           #colorsUsed:J
    :cond_26
    long-to-int v0, v9

    move/from16 v35, v0

    mul-int/lit8 v33, v35, 0x4

    .line 513
    goto/16 :goto_c

    .line 515
    .restart local v9       #colorsUsed:J
    :pswitch_10
    const-wide/16 v35, 0x0

    cmp-long v35, v9, v35

    if-nez v35, :cond_27

    const-wide/16 v9, 0x100

    .end local v9           #colorsUsed:J
    :cond_27
    long-to-int v0, v9

    move/from16 v35, v0

    mul-int/lit8 v33, v35, 0x4

    .line 516
    goto/16 :goto_c

    .line 548
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "color_space"

    const-string v37, "LCS_sRGB"

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 552
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "color_space"

    const-string v37, "LCS_CMYK"

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    new-instance v35, Ljava/lang/RuntimeException;

    const-string v36, "Not implemented yet."

    invoke-direct/range {v35 .. v36}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 559
    .end local v4           #blueX:I
    .end local v5           #blueY:I
    .end local v6           #blueZ:I
    .end local v11           #csType:J
    .end local v14           #gammaBlue:J
    .end local v16           #gammaGreen:J
    .end local v18           #gammaRed:J
    .end local v20           #greenX:I
    .end local v21           #greenY:I
    .end local v22           #greenZ:I
    .end local v24           #numberOfEntries:I
    .end local v28           #redX:I
    .end local v29           #redY:I
    .end local v30           #redZ:I
    .end local v33           #sizeOfPalette:I
    .restart local v9       #colorsUsed:J
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->properties:Ljava/util/HashMap;

    move-object/from16 v35, v0

    const-string v36, "bmp_version"

    const-string v37, "BMP v. 5.x"

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    new-instance v35, Ljava/lang/RuntimeException;

    const-string v36, "BMP version 5 not implemented yet."

    invoke-direct/range {v35 .. v36}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 570
    .end local v7           #colorsImportant:J
    .end local v9           #colorsUsed:J
    :cond_29
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->isBottomUp:Z

    .line 571
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->height:I

    goto/16 :goto_5

    .line 603
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    div-int/lit8 v34, v35, 0x4

    .line 605
    .restart local v34       #sizep:I
    const/16 v35, 0x100

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_2b

    .line 606
    const/16 v34, 0x100

    .line 610
    :cond_2b
    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 611
    .restart local v27       #r:[B
    move/from16 v0, v34

    new-array v13, v0, [B

    .line 612
    .restart local v13       #g:[B
    move/from16 v0, v34

    new-array v3, v0, [B

    .line 613
    .restart local v3       #b:[B
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_d
    move/from16 v0, v23

    move/from16 v1, v34

    if-ge v0, v1, :cond_2d

    .line 614
    mul-int/lit8 v25, v23, 0x4

    .line 615
    .restart local v25       #off:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    move-object/from16 v35, v0

    aget-byte v35, v35, v25

    aput-byte v35, v3, v23

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    move-object/from16 v35, v0

    add-int/lit8 v36, v25, 0x1

    aget-byte v35, v35, v36

    aput-byte v35, v13, v23

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->palette:[B

    move-object/from16 v35, v0

    add-int/lit8 v36, v25, 0x2

    aget-byte v35, v35, v36

    aput-byte v35, v27, v23

    .line 613
    add-int/lit8 v23, v23, 0x1

    goto :goto_d

    .line 621
    .end local v3           #b:[B
    .end local v13           #g:[B
    .end local v23           #i:I
    .end local v25           #off:I
    .end local v27           #r:[B
    .end local v34           #sizep:I
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x10

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2e

    .line 622
    const/16 v35, 0x3

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->numBands:I

    .line 631
    :cond_2d
    :goto_e
    return-void

    .line 623
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->bitsPerPixel:I

    move/from16 v35, v0

    const/16 v36, 0x20

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_30

    .line 624
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/BmpImage;->alphaMask:I

    move/from16 v35, v0

    if-nez v35, :cond_2f

    const/16 v35, 0x3

    :goto_f
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->numBands:I

    goto :goto_e

    :cond_2f
    const/16 v35, 0x4

    goto :goto_f

    .line 629
    :cond_30
    const/16 v35, 0x3

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/BmpImage;->numBands:I

    goto :goto_e

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 337
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 362
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_c
    .end packed-switch

    .line 398
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 507
    :pswitch_data_4
    .packed-switch 0xa
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 525
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
