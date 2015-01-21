.class Lorg/apache/commons/compress/compressors/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final cE:I = 0x3e8

.field private static final cF:I = 0x64

.field private static final cG:I = 0x3e8

.field private static final cS:I = 0xa

.field private static final cU:[I = null

.field private static final cV:I = 0x14

.field private static final cW:I = 0xa

.field private static final cX:I = 0x1e

.field private static final cY:I = 0x200000

.field private static final cZ:I = -0x200001


# instance fields
.field private cH:I

.field private cI:I

.field private cJ:Z

.field private final cK:[I

.field private final cL:[I

.field private final cM:[I

.field private final cN:[I

.field private final cO:[I

.field private final cP:[Z

.field private final cQ:[I

.field private final cR:[C

.field private cT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/a/d;->cU:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x6ct 0x1t 0x0t 0x0t
        0x45t 0x4t 0x0t 0x0t
        0xd0t 0xct 0x0t 0x0t
        0x71t 0x26t 0x0t 0x0t
        0x54t 0x73t 0x0t 0x0t
        0xfdt 0x59t 0x1t 0x0t
        0xf8t 0xdt 0x4t 0x0t
        0xe9t 0x29t 0xct 0x0t
        0xbct 0x7dt 0x24t 0x0t
    .end array-data
.end method

.method constructor <init>(Lorg/apache/commons/compress/compressors/a/i;)V
    .locals 3

    const/16 v2, 0x3e8

    const/16 v1, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cK:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cL:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cM:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cN:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cO:[I

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cP:[Z

    const v0, 0x10001

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cQ:[I

    iget-object v0, p1, Lorg/apache/commons/compress/compressors/a/i;->sk:[C

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cR:[C

    return-void
.end method

.method private U()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cT:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cR:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cT:[I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cT:[I

    goto :goto_0
.end method

.method private static a(BBB)B
    .locals 0

    if-ge p0, p1, :cond_3

    if-ge p1, p2, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-ge p0, p2, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, p0

    goto :goto_0

    :cond_3
    if-gt p1, p2, :cond_0

    if-le p0, p2, :cond_4

    move p1, p2

    goto :goto_0

    :cond_4
    move p1, p0

    goto :goto_0
.end method

.method private a([III)V
    .locals 2

    aget v0, p1, p2

    aget v1, p1, p3

    aput v1, p1, p2

    aput v0, p1, p3

    return-void
.end method

.method private a([IIII)V
    .locals 0

    :goto_0
    if-lez p4, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/a/d;->a([III)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([I[III)V
    .locals 6

    if-ne p3, p4, :cond_1

    :cond_0
    return-void

    :cond_1
    sub-int v0, p4, p3

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    add-int/lit8 v0, p4, -0x4

    move v1, v0

    :goto_0
    if-lt v1, p3, :cond_3

    aget v2, p1, v1

    aget v3, p2, v2

    add-int/lit8 v0, v1, 0x4

    :goto_1
    if-gt v0, p4, :cond_2

    aget v4, p1, v0

    aget v4, p2, v4

    if-le v3, v4, :cond_2

    add-int/lit8 v4, v0, -0x4

    aget v5, p1, v0

    aput v5, p1, v4

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x4

    aput v2, p1, v0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p4, -0x1

    move v1, v0

    :goto_2
    if-lt v1, p3, :cond_0

    aget v2, p1, v1

    aget v3, p2, v2

    add-int/lit8 v0, v1, 0x1

    :goto_3
    if-gt v0, p4, :cond_4

    aget v4, p1, v0

    aget v4, p2, v4

    if-le v3, v4, :cond_4

    add-int/lit8 v4, v0, -0x1

    aget v5, p1, v0

    aput v5, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    aput v2, p1, v0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2
.end method

.method private a(Lorg/apache/commons/compress/compressors/a/i;IIII)Z
    .locals 24

    sub-int v1, p3, p2

    add-int/lit8 v2, v1, 0x1

    const/4 v1, 0x2

    if-ge v2, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/commons/compress/compressors/a/d;->cJ:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/compress/compressors/a/d;->cH:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/compress/compressors/a/d;->cI:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lorg/apache/commons/compress/compressors/a/d;->cU:[I

    aget v3, v3, v1

    if-ge v3, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/apache/commons/compress/compressors/a/i;->sj:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/a/d;->cR:[C

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/apache/commons/compress/compressors/a/i;->si:[B

    add-int/lit8 v15, p5, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/compressors/a/d;->cJ:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/a/d;->cI:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/compress/compressors/a/d;->cH:I

    move/from16 v23, v2

    move v2, v1

    move/from16 v1, v23

    :goto_2
    add-int/lit8 v11, v2, -0x1

    if-ltz v11, :cond_15

    sget-object v2, Lorg/apache/commons/compress/compressors/a/d;->cU:[I

    aget v18, v2, v11

    add-int v2, p2, v18

    add-int/lit8 v19, v2, -0x1

    add-int v9, p2, v18

    move v2, v1

    :goto_3
    move/from16 v0, p3

    if-gt v9, v0, :cond_16

    const/4 v1, 0x3

    move/from16 v23, v1

    move v1, v2

    move/from16 v2, v23

    :goto_4
    move/from16 v0, p3

    if-gt v9, v0, :cond_14

    add-int/lit8 v10, v2, -0x1

    if-ltz v10, :cond_14

    aget v20, v12, v9

    add-int v21, v20, p4

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v2

    move v2, v9

    move/from16 v23, v3

    move v3, v1

    move/from16 v1, v23

    :goto_5
    if-eqz v1, :cond_3

    aput v4, v12, v2

    sub-int v2, v2, v18

    move/from16 v0, v19

    if-gt v2, v0, :cond_4

    move v1, v3

    :goto_6
    aput v20, v12, v2

    add-int/lit8 v9, v9, 0x1

    move v2, v10

    goto :goto_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    sub-int v4, v2, v18

    aget v8, v12, v4

    add-int v4, v8, p4

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v14, v5

    add-int/lit8 v6, v21, 0x1

    aget-byte v6, v14, v6

    if-ne v5, v6, :cond_13

    add-int/lit8 v5, v4, 0x2

    aget-byte v5, v14, v5

    add-int/lit8 v6, v21, 0x2

    aget-byte v6, v14, v6

    if-ne v5, v6, :cond_12

    add-int/lit8 v5, v4, 0x3

    aget-byte v5, v14, v5

    add-int/lit8 v6, v21, 0x3

    aget-byte v6, v14, v6

    if-ne v5, v6, :cond_11

    add-int/lit8 v5, v4, 0x4

    aget-byte v5, v14, v5

    add-int/lit8 v6, v21, 0x4

    aget-byte v6, v14, v6

    if-ne v5, v6, :cond_10

    add-int/lit8 v5, v4, 0x5

    aget-byte v5, v14, v5

    add-int/lit8 v6, v21, 0x5

    aget-byte v6, v14, v6

    if-ne v5, v6, :cond_f

    add-int/lit8 v5, v4, 0x6

    aget-byte v6, v14, v5

    add-int/lit8 v4, v21, 0x6

    aget-byte v7, v14, v4

    if-ne v6, v7, :cond_e

    move v7, v4

    move v4, v3

    move/from16 v3, p5

    :goto_7
    if-lez v3, :cond_1a

    add-int/lit8 v6, v3, -0x4

    add-int/lit8 v3, v5, 0x1

    aget-byte v3, v14, v3

    add-int/lit8 v22, v7, 0x1

    aget-byte v22, v14, v22

    move/from16 v0, v22

    if-ne v3, v0, :cond_d

    aget-char v3, v13, v5

    aget-char v22, v13, v7

    move/from16 v0, v22

    if-ne v3, v0, :cond_c

    add-int/lit8 v3, v5, 0x2

    aget-byte v3, v14, v3

    add-int/lit8 v22, v7, 0x2

    aget-byte v22, v14, v22

    move/from16 v0, v22

    if-ne v3, v0, :cond_b

    add-int/lit8 v3, v5, 0x1

    aget-char v3, v13, v3

    add-int/lit8 v22, v7, 0x1

    aget-char v22, v13, v22

    move/from16 v0, v22

    if-ne v3, v0, :cond_a

    add-int/lit8 v3, v5, 0x3

    aget-byte v3, v14, v3

    add-int/lit8 v22, v7, 0x3

    aget-byte v22, v14, v22

    move/from16 v0, v22

    if-ne v3, v0, :cond_9

    add-int/lit8 v3, v5, 0x2

    aget-char v3, v13, v3

    add-int/lit8 v22, v7, 0x2

    aget-char v22, v13, v22

    move/from16 v0, v22

    if-ne v3, v0, :cond_8

    add-int/lit8 v3, v5, 0x4

    aget-byte v3, v14, v3

    add-int/lit8 v22, v7, 0x4

    aget-byte v22, v14, v22

    move/from16 v0, v22

    if-ne v3, v0, :cond_7

    add-int/lit8 v3, v5, 0x3

    aget-char v3, v13, v3

    add-int/lit8 v22, v7, 0x3

    aget-char v22, v13, v22

    move/from16 v0, v22

    if-ne v3, v0, :cond_6

    add-int/lit8 v3, v5, 0x4

    if-lt v3, v15, :cond_1b

    sub-int/2addr v3, v15

    move v5, v3

    :goto_8
    add-int/lit8 v3, v7, 0x4

    if-lt v3, v15, :cond_5

    sub-int/2addr v3, v15

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v7, v3

    move v3, v6

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v5, 0x3

    aget-char v3, v13, v3

    add-int/lit8 v5, v7, 0x3

    aget-char v5, v13, v5

    if-le v3, v5, :cond_1a

    move v3, v4

    move v4, v8

    goto/16 :goto_5

    :cond_7
    add-int/lit8 v3, v5, 0x4

    aget-byte v3, v14, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v7, 0x4

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-le v3, v5, :cond_1a

    move v3, v4

    move v4, v8

    goto/16 :goto_5

    :cond_8
    add-int/lit8 v3, v5, 0x2

    aget-char v3, v13, v3

    add-int/lit8 v5, v7, 0x2

    aget-char v5, v13, v5

    if-le v3, v5, :cond_1a

    move v3, v4

    move v4, v8

    goto/16 :goto_5

    :cond_9
    add-int/lit8 v3, v5, 0x3

    aget-byte v3, v14, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v7, 0x3

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-le v3, v5, :cond_1a

    move v3, v4

    move v4, v8

    goto/16 :goto_5

    :cond_a
    add-int/lit8 v3, v5, 0x1

    aget-char v3, v13, v3

    add-int/lit8 v5, v7, 0x1

    aget-char v5, v13, v5

    if-le v3, v5, :cond_1a

    move v3, v4

    move v4, v8

    goto/16 :goto_5

    :cond_b
    add-int/lit8 v3, v5, 0x2

    aget-byte v3, v14, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v7, 0x2

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-le v3, v5, :cond_1a

    move v3, v4

    move v4, v8

    goto/16 :goto_5

    :cond_c
    aget-char v3, v13, v5

    aget-char v5, v13, v7

    if-le v3, v5, :cond_1a

    move v3, v4

    move v4, v8

    goto/16 :goto_5

    :cond_d
    add-int/lit8 v3, v5, 0x1

    aget-byte v3, v14, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v7, 0x1

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-le v3, v5, :cond_1a

    move v3, v4

    move v4, v8

    goto/16 :goto_5

    :cond_e
    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    if-le v5, v4, :cond_19

    move v4, v8

    goto/16 :goto_5

    :cond_f
    add-int/lit8 v4, v4, 0x5

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v21, 0x5

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-le v4, v5, :cond_19

    move v4, v8

    goto/16 :goto_5

    :cond_10
    add-int/lit8 v4, v4, 0x4

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v21, 0x4

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-le v4, v5, :cond_19

    move v4, v8

    goto/16 :goto_5

    :cond_11
    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v21, 0x3

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-le v4, v5, :cond_19

    move v4, v8

    goto/16 :goto_5

    :cond_12
    add-int/lit8 v4, v4, 0x2

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v21, 0x2

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-le v4, v5, :cond_19

    move v4, v8

    goto/16 :goto_5

    :cond_13
    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v21, 0x1

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-le v4, v5, :cond_19

    move v4, v8

    goto/16 :goto_5

    :cond_14
    if-eqz v16, :cond_18

    move/from16 v0, p3

    if-gt v9, v0, :cond_18

    move/from16 v0, v17

    if-le v1, v0, :cond_18

    :cond_15
    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/commons/compress/compressors/a/d;->cH:I

    if-eqz v16, :cond_17

    move/from16 v0, v17

    if-le v1, v0, :cond_17

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_16
    move v1, v2

    move v2, v11

    goto/16 :goto_2

    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_18
    move v2, v1

    goto/16 :goto_3

    :cond_19
    move v1, v3

    goto/16 :goto_6

    :cond_1a
    move v1, v4

    goto/16 :goto_6

    :cond_1b
    move v5, v3

    goto/16 :goto_8
.end method

.method private b(Lorg/apache/commons/compress/compressors/a/i;IIII)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/compress/compressors/a/d;->cK:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/compress/compressors/a/d;->cL:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/a/d;->cM:[I

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/apache/commons/compress/compressors/a/i;->sj:[I

    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/apache/commons/compress/compressors/a/i;->si:[B

    const/4 v1, 0x0

    aput p2, v11, v1

    const/4 v1, 0x0

    aput p3, v12, v1

    const/4 v1, 0x0

    aput p4, v13, v1

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v8, v1, -0x1

    if-ltz v8, :cond_1

    aget v3, v11, v8

    aget v4, v12, v8

    aget v5, v13, v8

    sub-int v1, v4, v3

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    const/16 v1, 0xa

    if-le v5, v1, :cond_2

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/compressors/a/d;->a(Lorg/apache/commons/compress/compressors/a/i;IIII)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v16, v5, 0x1

    aget v1, v14, v3

    add-int v1, v1, v16

    aget-byte v1, v15, v1

    aget v2, v14, v4

    add-int v2, v2, v16

    aget-byte v2, v15, v2

    add-int v6, v3, v4

    ushr-int/lit8 v6, v6, 0x1

    aget v6, v14, v6

    add-int v6, v6, v16

    aget-byte v6, v15, v6

    invoke-static {v1, v2, v6}, Lorg/apache/commons/compress/compressors/a/d;->a(BBB)B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    move/from16 v17, v0

    move v7, v4

    move v2, v3

    move v9, v4

    move v10, v3

    :goto_1
    if-gt v10, v9, :cond_a

    aget v1, v14, v10

    add-int v1, v1, v16

    aget-byte v1, v15, v1

    and-int/lit16 v1, v1, 0xff

    sub-int v1, v1, v17

    if-nez v1, :cond_3

    aget v18, v14, v10

    add-int/lit8 v6, v10, 0x1

    aget v1, v14, v2

    aput v1, v14, v10

    add-int/lit8 v1, v2, 0x1

    aput v18, v14, v2

    move v2, v6

    :goto_2
    move v10, v2

    move v2, v1

    goto :goto_1

    :cond_3
    if-gez v1, :cond_a

    add-int/lit8 v1, v10, 0x1

    move/from16 v19, v2

    move v2, v1

    move/from16 v1, v19

    goto :goto_2

    :goto_3
    if-gt v10, v9, :cond_5

    aget v1, v14, v9

    add-int v1, v1, v16

    aget-byte v1, v15, v1

    and-int/lit16 v1, v1, 0xff

    sub-int v1, v1, v17

    if-nez v1, :cond_4

    aget v18, v14, v9

    add-int/lit8 v7, v9, -0x1

    aget v1, v14, v6

    aput v1, v14, v9

    add-int/lit8 v1, v6, -0x1

    aput v18, v14, v6

    move v6, v7

    :goto_4
    move v9, v6

    move v6, v1

    goto :goto_3

    :cond_4
    if-lez v1, :cond_5

    add-int/lit8 v1, v9, -0x1

    move/from16 v19, v6

    move v6, v1

    move/from16 v1, v19

    goto :goto_4

    :cond_5
    if-gt v10, v9, :cond_6

    aget v18, v14, v10

    add-int/lit8 v7, v10, 0x1

    aget v1, v14, v9

    aput v1, v14, v10

    add-int/lit8 v1, v9, -0x1

    aput v18, v14, v9

    move v9, v1

    move v10, v7

    move v7, v6

    goto :goto_1

    :cond_6
    if-ge v6, v2, :cond_7

    aput v3, v11, v8

    aput v4, v12, v8

    aput v16, v13, v8

    add-int/lit8 v1, v8, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int v1, v2, v3

    sub-int v7, v10, v2

    if-ge v1, v7, :cond_8

    sub-int v1, v2, v3

    :goto_5
    sub-int v7, v10, v1

    invoke-static {v14, v3, v7, v1}, Lorg/apache/commons/compress/compressors/a/d;->b([IIII)V

    sub-int v1, v4, v6

    sub-int v7, v6, v9

    if-ge v1, v7, :cond_9

    sub-int v1, v4, v6

    :goto_6
    sub-int v7, v4, v1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v14, v10, v7, v1}, Lorg/apache/commons/compress/compressors/a/d;->b([IIII)V

    add-int v1, v3, v10

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    sub-int v2, v6, v9

    sub-int v2, v4, v2

    add-int/lit8 v2, v2, 0x1

    aput v3, v11, v8

    aput v1, v12, v8

    aput v5, v13, v8

    add-int/lit8 v3, v8, 0x1

    add-int/lit8 v1, v1, 0x1

    aput v1, v11, v3

    add-int/lit8 v1, v2, -0x1

    aput v1, v12, v3

    aput v16, v13, v3

    add-int/lit8 v1, v3, 0x1

    aput v2, v11, v1

    aput v4, v12, v1

    aput v5, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    sub-int v1, v10, v2

    goto :goto_5

    :cond_9
    sub-int v1, v6, v9

    goto :goto_6

    :cond_a
    move v6, v7

    goto/16 :goto_3

    :cond_b
    move v1, v8

    goto/16 :goto_0
.end method

.method private static b([IIII)V
    .locals 4

    add-int v2, p3, p1

    :goto_0
    if-ge p1, v2, :cond_0

    aget v3, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v0, p0, p2

    aput v0, p0, p1

    add-int/lit8 v0, p2, 0x1

    aput v3, p0, p2

    move p2, v0

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b([I[III)V
    .locals 15

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v5, v0, v1}, Lorg/apache/commons/compress/compressors/a/d;->c(III)V

    :goto_0
    if-lez v2, :cond_c

    add-int/lit8 v10, v2, -0x1

    invoke-direct {p0, v10}, Lorg/apache/commons/compress/compressors/a/d;->q(I)[I

    move-result-object v2

    const/4 v5, 0x0

    aget v8, v2, v5

    const/4 v5, 0x1

    aget v6, v2, v5

    sub-int v2, v6, v8

    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v8, v6}, Lorg/apache/commons/compress/compressors/a/d;->a([I[III)V

    move v2, v10

    goto :goto_0

    :cond_0
    const-wide/16 v11, 0x1dc5

    mul-long v2, v3, v11

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/32 v4, 0x8000

    rem-long v11, v2, v4

    const-wide/16 v2, 0x3

    rem-long v2, v11, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    aget v2, p1, v8

    aget v2, p2, v2

    int-to-long v2, v2

    :goto_1
    move v4, v6

    move v5, v6

    move v7, v8

    move v9, v8

    :goto_2
    if-le v9, v5, :cond_5

    :cond_1
    :goto_3
    if-le v9, v5, :cond_7

    :cond_2
    if-le v9, v5, :cond_9

    if-ge v4, v7, :cond_a

    move v2, v10

    move-wide v3, v11

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    add-int v2, v8, v6

    ushr-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    aget v2, p2, v2

    int-to-long v2, v2

    goto :goto_1

    :cond_4
    aget v2, p1, v6

    aget v2, p2, v2

    int-to-long v2, v2

    goto :goto_1

    :cond_5
    aget v13, p1, v9

    aget v13, p2, v13

    long-to-int v14, v2

    sub-int/2addr v13, v14

    if-nez v13, :cond_6

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v7}, Lorg/apache/commons/compress/compressors/a/d;->a([III)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    if-gtz v13, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    aget v13, p1, v5

    aget v13, p2, v13

    long-to-int v14, v2

    sub-int/2addr v13, v14

    if-nez v13, :cond_8

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v5, v4}, Lorg/apache/commons/compress/compressors/a/d;->a([III)V

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_8
    if-ltz v13, :cond_2

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v5}, Lorg/apache/commons/compress/compressors/a/d;->a([III)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_a
    sub-int v2, v7, v8

    sub-int v3, v9, v7

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/compressors/a/d;->k(II)I

    move-result v2

    sub-int v3, v9, v2

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8, v3, v2}, Lorg/apache/commons/compress/compressors/a/d;->a([IIII)V

    sub-int v2, v6, v4

    sub-int v3, v4, v5

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/compressors/a/d;->k(II)I

    move-result v2

    add-int/lit8 v3, v5, 0x1

    sub-int v13, v6, v2

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3, v13, v2}, Lorg/apache/commons/compress/compressors/a/d;->a([IIII)V

    add-int v2, v8, v9

    sub-int/2addr v2, v7

    add-int/lit8 v3, v2, -0x1

    sub-int v2, v4, v5

    sub-int v2, v6, v2

    add-int/lit8 v4, v2, 0x1

    sub-int v2, v3, v8

    sub-int v5, v6, v4

    if-le v2, v5, :cond_b

    add-int/lit8 v5, v10, 0x1

    invoke-direct {p0, v10, v8, v3}, Lorg/apache/commons/compress/compressors/a/d;->c(III)V

    add-int/lit8 v2, v5, 0x1

    invoke-direct {p0, v5, v4, v6}, Lorg/apache/commons/compress/compressors/a/d;->c(III)V

    :goto_4
    move-wide v3, v11

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v5, v10, 0x1

    invoke-direct {p0, v10, v4, v6}, Lorg/apache/commons/compress/compressors/a/d;->c(III)V

    add-int/lit8 v2, v5, 0x1

    invoke-direct {p0, v5, v8, v3}, Lorg/apache/commons/compress/compressors/a/d;->c(III)V

    goto :goto_4

    :cond_c
    return-void
.end method

.method private c(III)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cK:[I

    aput p2, v0, p1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cL:[I

    aput p3, v0, p1

    return-void
.end method

.method private k(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private q(I)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/a/d;->cK:[I

    aget v2, v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/a/d;->cL:[I

    aget v2, v2, p1

    aput v2, v0, v1

    return-object v0
.end method


# virtual methods
.method a(Lorg/apache/commons/compress/compressors/a/i;I)V
    .locals 3

    const/4 v0, 0x0

    mul-int/lit8 v1, p2, 0x1e

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/d;->cI:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/d;->cH:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/compressors/a/d;->cJ:Z

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/a/d;->b(Lorg/apache/commons/compress/compressors/a/i;I)V

    :cond_0
    :goto_0
    iget-object v1, p1, Lorg/apache/commons/compress/compressors/a/i;->sj:[I

    const/4 v2, -0x1

    iput v2, p1, Lorg/apache/commons/compress/compressors/a/i;->nT:I

    :goto_1
    if-gt v0, p2, :cond_1

    aget v2, v1, v0

    if-nez v2, :cond_3

    iput v0, p1, Lorg/apache/commons/compress/compressors/a/i;->nT:I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/a/d;->c(Lorg/apache/commons/compress/compressors/a/i;I)V

    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/a/d;->cJ:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/d;->cH:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/a/d;->cI:I

    if-le v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/a/d;->b(Lorg/apache/commons/compress/compressors/a/i;I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method final a([I[BI)V
    .locals 10

    const/16 v7, 0x101

    const/4 v0, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    new-array v2, v7, [I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/d;->U()[I

    move-result-object v8

    move v1, v4

    :goto_0
    if-ge v1, p3, :cond_0

    aput v4, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_1
    if-ge v1, p3, :cond_1

    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    aget v6, v2, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, v7, :cond_2

    aget v3, v2, v1

    add-int/lit8 v6, v1, -0x1

    aget v6, v2, v6

    add-int/2addr v3, v6

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_3
    if-ge v1, p3, :cond_3

    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    aget v6, v2, v3

    add-int/lit8 v6, v6, -0x1

    aput v6, v2, v3

    aput v1, p1, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, p3, 0x40

    new-instance v9, Ljava/util/BitSet;

    invoke-direct {v9, v1}, Ljava/util/BitSet;-><init>(I)V

    move v1, v4

    :goto_4
    const/16 v3, 0x100

    if-ge v1, v3, :cond_4

    aget v3, v2, v1

    invoke-virtual {v9, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v4

    :goto_5
    const/16 v2, 0x20

    if-ge v1, v2, :cond_5

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p3

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->set(I)V

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->clear(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    move v1, v4

    move v2, v4

    :goto_6
    if-ge v2, p3, :cond_8

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    :cond_6
    aget v3, p1, v2

    sub-int/2addr v3, v0

    if-gez v3, :cond_7

    add-int/2addr v3, p3

    :cond_7
    aput v1, v8, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    move v1, v4

    move v2, v5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    if-lt v3, p3, :cond_c

    :cond_a
    mul-int/lit8 v0, v0, 0x2

    if-gt v0, p3, :cond_b

    if-nez v1, :cond_5

    :cond_b
    return-void

    :cond_c
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v2, p3, :cond_a

    if-le v2, v3, :cond_9

    sub-int v6, v2, v3

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    invoke-direct {p0, p1, v8, v3, v2}, Lorg/apache/commons/compress/compressors/a/d;->b([I[III)V

    move v6, v5

    move v7, v3

    :goto_7
    if-gt v7, v2, :cond_9

    aget v3, p1, v7

    aget v3, v8, v3

    if-eq v6, v3, :cond_d

    invoke-virtual {v9, v7}, Ljava/util/BitSet;->set(I)V

    :goto_8
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v3

    goto :goto_7

    :cond_d
    move v3, v6

    goto :goto_8
.end method

.method final b(Lorg/apache/commons/compress/compressors/a/i;I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p1, Lorg/apache/commons/compress/compressors/a/i;->si:[B

    iget-object v2, p1, Lorg/apache/commons/compress/compressors/a/i;->si:[B

    add-int/lit8 v3, p2, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    iget-object v1, p1, Lorg/apache/commons/compress/compressors/a/i;->sj:[I

    iget-object v2, p1, Lorg/apache/commons/compress/compressors/a/i;->si:[B

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/compress/compressors/a/d;->a([I[BI)V

    move v1, v0

    :goto_0
    add-int/lit8 v2, p2, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Lorg/apache/commons/compress/compressors/a/i;->sj:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p1, Lorg/apache/commons/compress/compressors/a/i;->sj:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lorg/apache/commons/compress/compressors/a/i;->sj:[I

    aput p2, v1, v0

    :cond_2
    return-void
.end method

.method final c(Lorg/apache/commons/compress/compressors/a/i;I)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/compress/compressors/a/d;->cN:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/compress/compressors/a/d;->cO:[I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/compress/compressors/a/d;->cP:[Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/compress/compressors/a/d;->cQ:[I

    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/a/i;->si:[B

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/apache/commons/compress/compressors/a/i;->sj:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/compress/compressors/a/d;->cR:[C

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/a/d;->cI:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/compressors/a/d;->cJ:Z

    move/from16 v17, v0

    const v1, 0x10001

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    aput v2, v12, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    add-int v2, p2, v1

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p2, 0x1

    rem-int v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v13, v3

    aput-byte v3, v13, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p2, 0x14

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    const/4 v2, 0x0

    aput-char v2, v15, v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, v13, v2

    aput-byte v2, v13, v1

    const/4 v1, 0x0

    aget-byte v1, v13, v1

    and-int/lit16 v2, v1, 0xff

    const/4 v1, 0x0

    :goto_3
    move/from16 v0, p2

    if-gt v1, v0, :cond_3

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v13, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    aget v4, v12, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v12, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_4
    const/high16 v2, 0x1

    if-gt v1, v2, :cond_4

    aget v2, v12, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, v12, v3

    add-int/2addr v2, v3

    aput v2, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    aget-byte v1, v13, v1

    and-int/lit16 v2, v1, 0xff

    const/4 v1, 0x0

    :goto_5
    move/from16 v0, p2

    if-ge v1, v0, :cond_5

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v13, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    aget v4, v12, v2

    add-int/lit8 v4, v4, -0x1

    aput v4, v12, v2

    aput v1, v14, v4

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_5

    :cond_5
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, v13, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    aget v2, v12, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v12, v1

    aput p2, v14, v2

    const/16 v1, 0x100

    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    const/4 v2, 0x0

    aput-boolean v2, v11, v1

    aput v1, v9, v1

    goto :goto_6

    :cond_6
    const/16 v4, 0x16c

    :cond_7
    const/4 v1, 0x1

    if-eq v4, v1, :cond_a

    div-int/lit8 v4, v4, 0x3

    move v3, v4

    :goto_7
    const/16 v1, 0xff

    if-gt v3, v1, :cond_7

    aget v5, v9, v3

    add-int/lit8 v1, v5, 0x1

    shl-int/lit8 v1, v1, 0x8

    aget v1, v12, v1

    shl-int/lit8 v2, v5, 0x8

    aget v2, v12, v2

    sub-int v6, v1, v2

    add-int/lit8 v7, v4, -0x1

    sub-int v1, v3, v4

    aget v1, v9, v1

    move v2, v3

    :goto_8
    add-int/lit8 v8, v1, 0x1

    shl-int/lit8 v8, v8, 0x8

    aget v8, v12, v8

    shl-int/lit8 v18, v1, 0x8

    aget v18, v12, v18

    sub-int v8, v8, v18

    if-le v8, v6, :cond_8

    aput v1, v9, v2

    sub-int/2addr v2, v4

    if-gt v2, v7, :cond_9

    :cond_8
    aput v5, v9, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    sub-int v1, v2, v4

    aget v1, v9, v1

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    move v8, v1

    :goto_9
    const/16 v1, 0xff

    if-gt v8, v1, :cond_b

    aget v18, v9, v8

    const/4 v1, 0x0

    move v7, v1

    :goto_a
    const/16 v1, 0xff

    if-gt v7, v1, :cond_e

    shl-int/lit8 v1, v18, 0x8

    add-int v19, v1, v7

    aget v20, v12, v19

    const/high16 v1, 0x20

    and-int v1, v1, v20

    const/high16 v2, 0x20

    if-eq v1, v2, :cond_d

    const v1, -0x200001

    and-int v3, v20, v1

    add-int/lit8 v1, v19, 0x1

    aget v1, v12, v1

    const v2, -0x200001

    and-int/2addr v1, v2

    add-int/lit8 v4, v1, -0x1

    if-le v4, v3, :cond_c

    const/4 v5, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/compressors/a/d;->b(Lorg/apache/commons/compress/compressors/a/i;IIII)V

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/compress/compressors/a/d;->cH:I

    move/from16 v0, v16

    if-le v1, v0, :cond_c

    :cond_b
    return-void

    :cond_c
    const/high16 v1, 0x20

    or-int v1, v1, v20

    aput v1, v12, v19

    :cond_d
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    :goto_b
    const/16 v2, 0xff

    if-gt v1, v2, :cond_f

    shl-int/lit8 v2, v1, 0x8

    add-int v2, v2, v18

    aget v2, v12, v2

    const v3, -0x200001

    and-int/2addr v2, v3

    aput v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_f
    shl-int/lit8 v1, v18, 0x8

    aget v1, v12, v1

    const v2, -0x200001

    and-int/2addr v1, v2

    add-int/lit8 v2, v18, 0x1

    shl-int/lit8 v2, v2, 0x8

    aget v2, v12, v2

    const v3, -0x200001

    and-int/2addr v3, v2

    move v2, v1

    :goto_c
    if-ge v2, v3, :cond_12

    aget v1, v14, v2

    aget-byte v4, v13, v1

    and-int/lit16 v4, v4, 0xff

    aget-boolean v5, v11, v4

    if-nez v5, :cond_10

    aget v5, v10, v4

    if-nez v1, :cond_11

    move/from16 v1, p2

    :goto_d
    aput v1, v14, v5

    aget v1, v10, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v10, v4

    :cond_10
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c

    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_12
    const/16 v1, 0x100

    :goto_e
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_13

    shl-int/lit8 v2, v1, 0x8

    add-int v2, v2, v18

    aget v3, v12, v2

    const/high16 v4, 0x20

    or-int/2addr v3, v4

    aput v3, v12, v2

    goto :goto_e

    :cond_13
    const/4 v1, 0x1

    aput-boolean v1, v11, v18

    const/16 v1, 0xff

    if-ge v8, v1, :cond_16

    shl-int/lit8 v1, v18, 0x8

    aget v1, v12, v1

    const v2, -0x200001

    and-int v3, v1, v2

    add-int/lit8 v1, v18, 0x1

    shl-int/lit8 v1, v1, 0x8

    aget v1, v12, v1

    const v2, -0x200001

    and-int/2addr v1, v2

    sub-int v4, v1, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    shr-int v1, v4, v2

    const v5, 0xfffe

    if-le v1, v5, :cond_14

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_f

    :cond_14
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v4, :cond_16

    add-int v5, v3, v1

    aget v5, v14, v5

    shr-int v6, v1, v2

    int-to-char v6, v6

    aput-char v6, v15, v5

    const/16 v7, 0x14

    if-ge v5, v7, :cond_15

    add-int v5, v5, p2

    add-int/lit8 v5, v5, 0x1

    aput-char v6, v15, v5

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_16
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_9
.end method
