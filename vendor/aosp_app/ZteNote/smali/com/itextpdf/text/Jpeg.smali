.class public Lcom/itextpdf/text/Jpeg;
.super Lcom/itextpdf/text/Image;
.source "Jpeg.java"


# static fields
.field public static final JFIF_ID:[B = null

.field public static final M_APP0:I = 0xe0

.field public static final M_APP2:I = 0xe2

.field public static final M_APPD:I = 0xed

.field public static final M_APPE:I = 0xee

.field public static final NOPARAM_MARKER:I = 0x2

.field public static final NOPARAM_MARKERS:[I = null

.field public static final NOT_A_MARKER:I = -0x1

.field public static final PS_8BIM_RESO:[B = null

.field public static final UNSUPPORTED_MARKER:I = 0x1

.field public static final UNSUPPORTED_MARKERS:[I

.field public static final VALID_MARKER:I

.field public static final VALID_MARKERS:[I


# instance fields
.field private icc:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/Jpeg;->VALID_MARKERS:[I

    .line 78
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/text/Jpeg;->UNSUPPORTED_MARKERS:[I

    .line 84
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/text/Jpeg;->NOPARAM_MARKERS:[I

    .line 96
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/text/Jpeg;->JFIF_ID:[B

    .line 99
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/itextpdf/text/Jpeg;->PS_8BIM_RESO:[B

    return-void

    .line 72
    nop

    :array_0
    .array-data 0x4
        0xc0t 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0xc2t 0x0t 0x0t 0x0t
    .end array-data

    .line 78
    :array_1
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
    .end array-data

    .line 84
    :array_2
    .array-data 0x4
        0xd0t 0x0t 0x0t 0x0t
        0xd1t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0xd7t 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 96
    :array_3
    .array-data 0x1
        0x4at
        0x46t
        0x49t
        0x46t
        0x0t
    .end array-data

    .line 99
    nop

    :array_4
    .array-data 0x1
        0x38t
        0x42t
        0x49t
        0x4dt
        0x3t
        0xedt
    .end array-data
.end method

.method constructor <init>(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Lcom/itextpdf/text/Image;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Ljava/net/URL;)V

    .line 117
    invoke-direct {p0}, Lcom/itextpdf/text/Jpeg;->processParameters()V

    .line 118
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "img"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    check-cast v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/Image;-><init>(Ljava/net/URL;)V

    .line 130
    iput-object p1, p0, Lcom/itextpdf/text/Jpeg;->rawData:[B

    .line 131
    iput-object p1, p0, Lcom/itextpdf/text/Jpeg;->originalData:[B

    .line 132
    invoke-direct {p0}, Lcom/itextpdf/text/Jpeg;->processParameters()V

    .line 133
    return-void
.end method

.method public constructor <init>([BFF)V
    .locals 0
    .parameter "img"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Jpeg;-><init>([B)V

    .line 147
    iput p2, p0, Lcom/itextpdf/text/Jpeg;->scaledWidth:F

    .line 148
    iput p3, p0, Lcom/itextpdf/text/Jpeg;->scaledHeight:F

    .line 149
    return-void
.end method

.method private static final getShort(Ljava/io/InputStream;)I
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static final marker(I)I
    .locals 2
    .parameter "marker"

    .prologue
    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/itextpdf/text/Jpeg;->VALID_MARKERS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 172
    sget-object v1, Lcom/itextpdf/text/Jpeg;->VALID_MARKERS:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 173
    const/4 v1, 0x0

    .line 186
    :goto_1
    return v1

    .line 171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/itextpdf/text/Jpeg;->NOPARAM_MARKERS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 177
    sget-object v1, Lcom/itextpdf/text/Jpeg;->NOPARAM_MARKERS:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_2

    .line 178
    const/4 v1, 0x2

    goto :goto_1

    .line 176
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 181
    :cond_3
    const/4 v0, 0x0

    :goto_3
    sget-object v1, Lcom/itextpdf/text/Jpeg;->UNSUPPORTED_MARKERS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 182
    sget-object v1, Lcom/itextpdf/text/Jpeg;->UNSUPPORTED_MARKERS:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_4

    .line 183
    const/4 v1, 0x1

    goto :goto_1

    .line 181
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 186
    :cond_5
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private processParameters()V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    const/16 v34, 0x20

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->type:I

    .line 198
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->originalType:I

    .line 199
    const/16 v18, 0x0

    .line 202
    .local v18, is:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->rawData:[B

    move-object/from16 v34, v0

    if-nez v34, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->url:Ljava/net/URL;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v18

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->url:Ljava/net/URL;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    .line 210
    .local v13, errorID:Ljava/lang/String;
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v34

    const/16 v35, 0xff

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v34

    const/16 v35, 0xd8

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_3

    .line 211
    :cond_0
    new-instance v34, Lcom/itextpdf/text/BadElementException;

    const-string v35, "1.is.not.a.valid.jpeg.file"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v13, v36, v37

    invoke-static/range {v35 .. v36}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    .end local v13           #errorID:Ljava/lang/String;
    :catchall_0
    move-exception v34

    :goto_1
    if-eqz v18, :cond_1

    .line 397
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v34

    .line 207
    :cond_2
    :try_start_1
    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->rawData:[B

    move-object/from16 v34, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    .end local v18           #is:Ljava/io/InputStream;
    .local v19, is:Ljava/io/InputStream;
    :try_start_2
    const-string v13, "Byte array"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local v13       #errorID:Ljava/lang/String;
    move-object/from16 v18, v19

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 213
    :cond_3
    const/4 v15, 0x1

    .line 216
    .local v15, firstPass:Z
    :cond_4
    :goto_2
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v33

    .line 217
    .local v33, v:I
    if-gez v33, :cond_5

    .line 218
    new-instance v34, Ljava/io/IOException;

    const-string v35, "premature.eof.while.reading.jpg"

    const/16 v36, 0x0

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 219
    :cond_5
    const/16 v34, 0xff

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    .line 220
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v23

    .line 221
    .local v23, marker:I
    if-eqz v15, :cond_d

    const/16 v34, 0xe0

    move/from16 v0, v23

    move/from16 v1, v34

    if-ne v0, v1, :cond_d

    .line 222
    const/4 v15, 0x0

    .line 223
    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v22

    .line 224
    .local v22, len:I
    const/16 v34, 0x10

    move/from16 v0, v22

    move/from16 v1, v34

    if-ge v0, v1, :cond_6

    .line 225
    add-int/lit8 v34, v22, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    goto :goto_2

    .line 228
    :cond_6
    sget-object v34, Lcom/itextpdf/text/Jpeg;->JFIF_ID:[B

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    new-array v6, v0, [B

    .line 229
    .local v6, bcomp:[B
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v27

    .line 230
    .local v27, r:I
    array-length v0, v6

    move/from16 v34, v0

    move/from16 v0, v27

    move/from16 v1, v34

    if-eq v0, v1, :cond_7

    .line 231
    new-instance v34, Lcom/itextpdf/text/BadElementException;

    const-string v35, "1.corrupted.jfif.marker"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v13, v36, v37

    invoke-static/range {v35 .. v36}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 232
    :cond_7
    const/16 v16, 0x1

    .line 233
    .local v16, found:Z
    const/16 v21, 0x0

    .local v21, k:I
    :goto_3
    array-length v0, v6

    move/from16 v34, v0

    move/from16 v0, v21

    move/from16 v1, v34

    if-ge v0, v1, :cond_8

    .line 234
    aget-byte v34, v6, v21

    sget-object v35, Lcom/itextpdf/text/Jpeg;->JFIF_ID:[B

    aget-byte v35, v35, v21

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_9

    .line 235
    const/16 v16, 0x0

    .line 239
    :cond_8
    if-nez v16, :cond_a

    .line 240
    add-int/lit8 v34, v22, -0x2

    array-length v0, v6

    move/from16 v35, v0

    sub-int v34, v34, v35

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_2

    .line 233
    :cond_9
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 243
    :cond_a
    const/16 v34, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 244
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v30

    .line 245
    .local v30, units:I
    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v11

    .line 246
    .local v11, dx:I
    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v12

    .line 247
    .local v12, dy:I
    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    .line 248
    move-object/from16 v0, p0

    iput v11, v0, Lcom/itextpdf/text/Jpeg;->dpiX:I

    .line 249
    move-object/from16 v0, p0

    iput v12, v0, Lcom/itextpdf/text/Jpeg;->dpiY:I

    .line 255
    :cond_b
    :goto_4
    add-int/lit8 v34, v22, -0x2

    array-length v0, v6

    move/from16 v35, v0

    sub-int v34, v34, v35

    add-int/lit8 v34, v34, -0x7

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_2

    .line 251
    :cond_c
    const/16 v34, 0x2

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    .line 252
    int-to-float v0, v11

    move/from16 v34, v0

    const v35, 0x40228f5c

    mul-float v34, v34, v35

    const/high16 v35, 0x3f00

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->dpiX:I

    .line 253
    int-to-float v0, v12

    move/from16 v34, v0

    const v35, 0x40228f5c

    mul-float v34, v34, v35

    const/high16 v35, 0x3f00

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->dpiY:I

    goto :goto_4

    .line 258
    .end local v6           #bcomp:[B
    .end local v11           #dx:I
    .end local v12           #dy:I
    .end local v16           #found:Z
    .end local v21           #k:I
    .end local v22           #len:I
    .end local v27           #r:I
    .end local v30           #units:I
    :cond_d
    const/16 v34, 0xee

    move/from16 v0, v23

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 259
    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v34

    add-int/lit8 v22, v34, -0x2

    .line 260
    .restart local v22       #len:I
    move/from16 v0, v22

    new-array v9, v0, [B

    .line 261
    .local v9, byteappe:[B
    const/16 v21, 0x0

    .restart local v21       #k:I
    :goto_5
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 262
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v34

    move/from16 v0, v34

    int-to-byte v0, v0

    move/from16 v34, v0

    aput-byte v34, v9, v21

    .line 261
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 264
    :cond_e
    array-length v0, v9

    move/from16 v34, v0

    const/16 v35, 0xc

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_4

    .line 265
    new-instance v5, Ljava/lang/String;

    const/16 v34, 0x0

    const/16 v35, 0x5

    const-string v36, "ISO-8859-1"

    move/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v5, v9, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 266
    .local v5, appe:Ljava/lang/String;
    const-string v34, "Adobe"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 267
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/Jpeg;->invert:Z

    goto/16 :goto_2

    .line 272
    .end local v5           #appe:Ljava/lang/String;
    .end local v9           #byteappe:[B
    .end local v21           #k:I
    .end local v22           #len:I
    :cond_f
    const/16 v34, 0xe2

    move/from16 v0, v23

    move/from16 v1, v34

    if-ne v0, v1, :cond_14

    .line 273
    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v34

    add-int/lit8 v22, v34, -0x2

    .line 274
    .restart local v22       #len:I
    move/from16 v0, v22

    new-array v7, v0, [B

    .line 275
    .local v7, byteapp2:[B
    const/16 v21, 0x0

    .restart local v21       #k:I
    :goto_6
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    .line 276
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v34

    move/from16 v0, v34

    int-to-byte v0, v0

    move/from16 v34, v0

    aput-byte v34, v7, v21

    .line 275
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 278
    :cond_10
    array-length v0, v7

    move/from16 v34, v0

    const/16 v35, 0xe

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_4

    .line 279
    new-instance v4, Ljava/lang/String;

    const/16 v34, 0x0

    const/16 v35, 0xb

    const-string v36, "ISO-8859-1"

    move/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v4, v7, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 280
    .local v4, app2:Ljava/lang/String;
    const-string v34, "ICC_PROFILE"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 281
    const/16 v34, 0xc

    aget-byte v34, v7, v34

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    .line 282
    .local v26, order:I
    const/16 v34, 0xd

    aget-byte v34, v7, v34

    move/from16 v0, v34

    and-int/lit16 v10, v0, 0xff

    .line 284
    .local v10, count:I
    const/16 v34, 0x1

    move/from16 v0, v26

    move/from16 v1, v34

    if-ge v0, v1, :cond_11

    .line 285
    const/16 v26, 0x1

    .line 286
    :cond_11
    const/16 v34, 0x1

    move/from16 v0, v34

    if-ge v10, v0, :cond_12

    .line 287
    const/4 v10, 0x1

    .line 288
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v34, v0

    if-nez v34, :cond_13

    .line 289
    new-array v0, v10, [[B

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/Jpeg;->icc:[[B

    .line 290
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v34, v0

    add-int/lit8 v35, v26, -0x1

    aput-object v7, v34, v35

    goto/16 :goto_2

    .line 295
    .end local v4           #app2:Ljava/lang/String;
    .end local v7           #byteapp2:[B
    .end local v10           #count:I
    .end local v21           #k:I
    .end local v22           #len:I
    .end local v26           #order:I
    :cond_14
    const/16 v34, 0xed

    move/from16 v0, v23

    move/from16 v1, v34

    if-ne v0, v1, :cond_22

    .line 296
    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v34

    add-int/lit8 v22, v34, -0x2

    .line 297
    .restart local v22       #len:I
    move/from16 v0, v22

    new-array v8, v0, [B

    .line 298
    .local v8, byteappd:[B
    const/16 v21, 0x0

    .restart local v21       #k:I
    :goto_7
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    .line 299
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v34

    move/from16 v0, v34

    int-to-byte v0, v0

    move/from16 v34, v0

    aput-byte v34, v8, v21

    .line 298
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 302
    :cond_15
    const/16 v21, 0x0

    .line 303
    const/16 v21, 0x0

    :goto_8
    sget-object v34, Lcom/itextpdf/text/Jpeg;->PS_8BIM_RESO:[B

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    sub-int v34, v22, v34

    move/from16 v0, v21

    move/from16 v1, v34

    if-ge v0, v1, :cond_17

    .line 304
    const/16 v16, 0x1

    .line 305
    .restart local v16       #found:Z
    const/16 v20, 0x0

    .local v20, j:I
    :goto_9
    sget-object v34, Lcom/itextpdf/text/Jpeg;->PS_8BIM_RESO:[B

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v20

    move/from16 v1, v34

    if-ge v0, v1, :cond_16

    .line 306
    add-int v34, v21, v20

    aget-byte v34, v8, v34

    sget-object v35, Lcom/itextpdf/text/Jpeg;->PS_8BIM_RESO:[B

    aget-byte v35, v35, v20

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1f

    .line 307
    const/16 v16, 0x0

    .line 311
    :cond_16
    if-eqz v16, :cond_20

    .line 315
    .end local v16           #found:Z
    .end local v20           #j:I
    :cond_17
    sget-object v34, Lcom/itextpdf/text/Jpeg;->PS_8BIM_RESO:[B

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    add-int v21, v21, v34

    .line 316
    sget-object v34, Lcom/itextpdf/text/Jpeg;->PS_8BIM_RESO:[B

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    sub-int v34, v22, v34

    move/from16 v0, v21

    move/from16 v1, v34

    if-ge v0, v1, :cond_4

    .line 319
    aget-byte v25, v8, v21

    .line 321
    .local v25, namelength:B
    add-int/lit8 v34, v25, 0x1

    move/from16 v0, v34

    int-to-byte v0, v0

    move/from16 v25, v0

    .line 323
    rem-int/lit8 v34, v25, 0x2

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_18

    .line 324
    add-int/lit8 v34, v25, 0x1

    move/from16 v0, v34

    int-to-byte v0, v0

    move/from16 v25, v0

    .line 326
    :cond_18
    add-int v21, v21, v25

    .line 328
    aget-byte v34, v8, v21

    shl-int/lit8 v34, v34, 0x18

    add-int/lit8 v35, v21, 0x1

    aget-byte v35, v8, v35

    shl-int/lit8 v35, v35, 0x10

    add-int v34, v34, v35

    add-int/lit8 v35, v21, 0x2

    aget-byte v35, v8, v35

    shl-int/lit8 v35, v35, 0x8

    add-int v34, v34, v35

    add-int/lit8 v35, v21, 0x3

    aget-byte v35, v8, v35

    add-int v28, v34, v35

    .line 330
    .local v28, resosize:I
    const/16 v34, 0x10

    move/from16 v0, v28

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    .line 335
    add-int/lit8 v21, v21, 0x4

    .line 336
    aget-byte v34, v8, v21

    shl-int/lit8 v34, v34, 0x8

    add-int/lit8 v35, v21, 0x1

    aget-byte v35, v8, v35

    add-int v11, v34, v35

    .line 337
    .restart local v11       #dx:I
    add-int/lit8 v21, v21, 0x2

    .line 339
    add-int/lit8 v21, v21, 0x2

    .line 340
    aget-byte v34, v8, v21

    shl-int/lit8 v34, v34, 0x8

    add-int/lit8 v35, v21, 0x1

    aget-byte v35, v8, v35

    add-int v31, v34, v35

    .line 341
    .local v31, unitsx:I
    add-int/lit8 v21, v21, 0x2

    .line 343
    add-int/lit8 v21, v21, 0x2

    .line 344
    aget-byte v34, v8, v21

    shl-int/lit8 v34, v34, 0x8

    add-int/lit8 v35, v21, 0x1

    aget-byte v35, v8, v35

    add-int v12, v34, v35

    .line 345
    .restart local v12       #dy:I
    add-int/lit8 v21, v21, 0x2

    .line 347
    add-int/lit8 v21, v21, 0x2

    .line 348
    aget-byte v34, v8, v21

    shl-int/lit8 v34, v34, 0x8

    add-int/lit8 v35, v21, 0x1

    aget-byte v35, v8, v35

    add-int v32, v34, v35

    .line 350
    .local v32, unitsy:I
    const/16 v34, 0x1

    move/from16 v0, v31

    move/from16 v1, v34

    if-eq v0, v1, :cond_19

    const/16 v34, 0x2

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_1b

    .line 351
    :cond_19
    const/16 v34, 0x2

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_1a

    int-to-float v0, v11

    move/from16 v34, v0

    const v35, 0x40228f5c

    mul-float v34, v34, v35

    const/high16 v35, 0x3f00

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v11, v0

    .line 353
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/Jpeg;->dpiX:I

    move/from16 v34, v0

    if-eqz v34, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/Jpeg;->dpiX:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v0, v11, :cond_21

    .line 359
    :cond_1b
    :goto_a
    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_1c

    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    .line 360
    :cond_1c
    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_1d

    int-to-float v0, v12

    move/from16 v34, v0

    const v35, 0x40228f5c

    mul-float v34, v34, v35

    const/high16 v35, 0x3f00

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v12, v0

    .line 362
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/Jpeg;->dpiY:I

    move/from16 v34, v0

    if-eqz v34, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/Jpeg;->dpiY:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ne v0, v12, :cond_4

    .line 366
    :cond_1e
    move-object/from16 v0, p0

    iput v12, v0, Lcom/itextpdf/text/Jpeg;->dpiY:I

    goto/16 :goto_2

    .line 305
    .end local v11           #dx:I
    .end local v12           #dy:I
    .end local v25           #namelength:B
    .end local v28           #resosize:I
    .end local v31           #unitsx:I
    .end local v32           #unitsy:I
    .restart local v16       #found:Z
    .restart local v20       #j:I
    :cond_1f
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_9

    .line 303
    :cond_20
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_8

    .line 357
    .end local v16           #found:Z
    .end local v20           #j:I
    .restart local v11       #dx:I
    .restart local v12       #dy:I
    .restart local v25       #namelength:B
    .restart local v28       #resosize:I
    .restart local v31       #unitsx:I
    .restart local v32       #unitsy:I
    :cond_21
    move-object/from16 v0, p0

    iput v11, v0, Lcom/itextpdf/text/Jpeg;->dpiX:I

    goto :goto_a

    .line 371
    .end local v8           #byteappd:[B
    .end local v11           #dx:I
    .end local v12           #dy:I
    .end local v21           #k:I
    .end local v22           #len:I
    .end local v25           #namelength:B
    .end local v28           #resosize:I
    .end local v31           #unitsx:I
    .end local v32           #unitsy:I
    :cond_22
    const/4 v15, 0x0

    .line 372
    invoke-static/range {v23 .. v23}, Lcom/itextpdf/text/Jpeg;->marker(I)I

    move-result v24

    .line 373
    .local v24, markertype:I
    if-nez v24, :cond_26

    .line 374
    const/16 v34, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 375
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v34

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_23

    .line 376
    new-instance v34, Lcom/itextpdf/text/BadElementException;

    const-string v35, "1.must.have.8.bits.per.component"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v13, v36, v37

    invoke-static/range {v35 .. v36}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 378
    :cond_23
    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->scaledHeight:F

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/Jpeg;->scaledHeight:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Jpeg;->setTop(F)V

    .line 380
    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->scaledWidth:F

    .line 381
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/Jpeg;->scaledWidth:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Jpeg;->setRight(F)V

    .line 382
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->colorspace:I

    .line 383
    const/16 v34, 0x8

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->bpc:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    if-eqz v18, :cond_24

    .line 397
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 400
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/Jpeg;->getWidth()F

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->plainWidth:F

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/Jpeg;->getHeight()F

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->plainHeight:F

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v34, v0

    if-eqz v34, :cond_25

    .line 403
    const/16 v29, 0x0

    .line 404
    .local v29, total:I
    const/16 v21, 0x0

    .restart local v21       #k:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v21

    move/from16 v1, v34

    if-ge v0, v1, :cond_29

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v34, v0

    aget-object v34, v34, v21

    if-nez v34, :cond_28

    .line 406
    const/16 v34, 0x0

    check-cast v34, [[B

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/Jpeg;->icc:[[B

    .line 426
    .end local v21           #k:I
    .end local v29           #total:I
    :cond_25
    :goto_c
    return-void

    .line 386
    :cond_26
    const/16 v34, 0x1

    move/from16 v0, v24

    move/from16 v1, v34

    if-ne v0, v1, :cond_27

    .line 387
    :try_start_4
    new-instance v34, Lcom/itextpdf/text/BadElementException;

    const-string v35, "1.unsupported.jpeg.marker.2"

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v13, v36, v37

    const/16 v37, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 389
    :cond_27
    const/16 v34, 0x2

    move/from16 v0, v24

    move/from16 v1, v34

    if-eq v0, v1, :cond_4

    .line 390
    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v34

    add-int/lit8 v34, v34, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 409
    .restart local v21       #k:I
    .restart local v29       #total:I
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v34, v0

    aget-object v34, v34, v21

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0xe

    add-int v29, v29, v34

    .line 404
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 411
    :cond_29
    move/from16 v0, v29

    new-array v14, v0, [B

    .line 412
    .local v14, ficc:[B
    const/16 v29, 0x0

    .line 413
    const/16 v21, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v21

    move/from16 v1, v34

    if-ge v0, v1, :cond_2a

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v34, v0

    aget-object v34, v34, v21

    const/16 v35, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v36, v0

    aget-object v36, v36, v21

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0xe

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v29

    move/from16 v3, v36

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v34, v0

    aget-object v34, v34, v21

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0xe

    add-int v29, v29, v34

    .line 413
    add-int/lit8 v21, v21, 0x1

    goto :goto_d

    .line 418
    :cond_2a
    :try_start_5
    invoke-static {v14}, Lcom/itextpdf/text/pdf/ICC_Profile;->getInstance([B)Lcom/itextpdf/text/pdf/ICC_Profile;

    move-result-object v17

    .line 419
    .local v17, icc_prof:Lcom/itextpdf/text/pdf/ICC_Profile;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Jpeg;->tagICC(Lcom/itextpdf/text/pdf/ICC_Profile;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .line 424
    .end local v17           #icc_prof:Lcom/itextpdf/text/pdf/ICC_Profile;
    :goto_e
    const/16 v34, 0x0

    check-cast v34, [[B

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/Jpeg;->icc:[[B

    goto/16 :goto_c

    .line 421
    :catch_0
    move-exception v34

    goto :goto_e

    .line 396
    .end local v13           #errorID:Ljava/lang/String;
    .end local v14           #ficc:[B
    .end local v15           #firstPass:Z
    .end local v18           #is:Ljava/io/InputStream;
    .end local v21           #k:I
    .end local v23           #marker:I
    .end local v24           #markertype:I
    .end local v29           #total:I
    .end local v33           #v:I
    .restart local v19       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v34

    move-object/from16 v18, v19

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    goto/16 :goto_1
.end method
