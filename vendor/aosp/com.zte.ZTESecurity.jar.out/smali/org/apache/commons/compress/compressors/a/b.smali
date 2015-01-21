.class public Lorg/apache/commons/compress/compressors/a/b;
.super Lorg/apache/commons/compress/compressors/b;

# interfaces
.implements Lorg/apache/commons/compress/compressors/a/a;


# static fields
.field public static final an:I = 0x1

.field public static final ao:I = 0x9

.field private static final ap:I = 0xf

.field private static final aq:I


# instance fields
.field private aA:I

.field private aB:I

.field private final aC:I

.field private aD:Lorg/apache/commons/compress/compressors/a/i;

.field private aE:Lorg/apache/commons/compress/compressors/a/d;

.field private ar:I

.field private final as:I

.field private at:I

.field private au:I

.field private final av:Lorg/apache/commons/compress/compressors/a/e;

.field private aw:I

.field private ax:I

.field private ay:I

.field private az:I

.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/a/b;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/b;-><init>()V

    new-instance v0, Lorg/apache/commons/compress/compressors/a/e;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/a/e;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->av:Lorg/apache/commons/compress/compressors/a/e;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->ay:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->az:I

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") < 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x9

    if-le p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > 9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p2, p0, Lorg/apache/commons/compress/compressors/a/b;->as:I

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->as:I

    const v1, 0x186a0

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aC:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->init()V

    return-void
.end method

.method private A()V
    .locals 7

    const/4 v0, 0x6

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v4, v1, Lorg/apache/commons/compress/compressors/a/i;->rY:[[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->aw:I

    add-int/lit8 v2, v1, 0x2

    move v1, v0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ltz v3, :cond_1

    aget-object v5, v4, v3

    move v1, v2

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    const/16 v6, 0xf

    aput-byte v6, v5, v1

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->ax:I

    const/16 v3, 0xc8

    if-ge v1, v3, :cond_3

    const/4 v0, 0x2

    :cond_2
    :goto_2
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/compress/compressors/a/b;->c(II)V

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/compress/compressors/a/b;->d(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/a/b;->e(II)V

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/compress/compressors/a/b;->f(II)V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->B()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/a/b;->g(II)V

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/compress/compressors/a/b;->h(II)V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->C()V

    return-void

    :cond_3
    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->ax:I

    const/16 v3, 0x258

    if-ge v1, v3, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :cond_4
    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->ax:I

    const/16 v3, 0x4b0

    if-ge v1, v3, :cond_5

    const/4 v0, 0x4

    goto :goto_2

    :cond_5
    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->ax:I

    const/16 v3, 0x960

    if-ge v1, v3, :cond_2

    const/4 v0, 0x5

    goto :goto_2
.end method

.method private B()V
    .locals 12

    const/4 v1, 0x1

    const/16 v7, 0x10

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v8, v0, Lorg/apache/commons/compress/compressors/a/i;->aF:[Z

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v9, v0, Lorg/apache/commons/compress/compressors/a/i;->se:[Z

    move v0, v7

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_2

    aput-boolean v2, v9, v3

    mul-int/lit8 v4, v3, 0x10

    move v0, v7

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    add-int v5, v4, v0

    aget-boolean v5, v8, v5

    if-eqz v5, :cond_0

    aput-boolean v1, v9, v3

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_2
    if-ge v3, v7, :cond_4

    aget-boolean v0, v9, v3

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/a/b;->b(II)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    iget-object v10, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    iget v3, p0, Lorg/apache/commons/compress/compressors/a/b;->au:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->at:I

    move v6, v2

    :goto_4
    if-ge v6, v7, :cond_8

    aget-boolean v4, v9, v6

    if-eqz v4, :cond_7

    mul-int/lit8 v11, v6, 0x10

    move v4, v2

    :goto_5
    if-ge v4, v7, :cond_7

    :goto_6
    const/16 v5, 0x8

    if-lt v3, v5, :cond_5

    shr-int/lit8 v5, v0, 0x18

    invoke-virtual {v10, v5}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v3, -0x8

    goto :goto_6

    :cond_5
    add-int v5, v11, v4

    aget-boolean v5, v8, v5

    if-eqz v5, :cond_6

    rsub-int/lit8 v5, v3, 0x20

    add-int/lit8 v5, v5, -0x1

    shl-int v5, v1, v5

    or-int/2addr v0, v5

    :cond_6
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_4

    :cond_8
    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->at:I

    iput v3, p0, Lorg/apache/commons/compress/compressors/a/b;->au:I

    return-void
.end method

.method private C()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v6, v1, Lorg/apache/commons/compress/compressors/a/i;->rY:[[B

    iget-object v7, v1, Lorg/apache/commons/compress/compressors/a/i;->sc:[[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    iget-object v9, v1, Lorg/apache/commons/compress/compressors/a/i;->aH:[B

    iget-object v10, v1, Lorg/apache/commons/compress/compressors/a/i;->sk:[C

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/compress/compressors/a/b;->ax:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/compress/compressors/a/b;->au:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/compress/compressors/a/b;->at:I

    const/4 v1, 0x0

    move v5, v4

    :goto_0
    if-ge v1, v11, :cond_2

    add-int/lit8 v4, v1, 0x32

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v12, v11, -0x1

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    aget-byte v4, v9, v5

    and-int/lit16 v4, v4, 0xff

    aget-object v13, v7, v4

    aget-object v14, v6, v4

    move/from16 v17, v1

    move v1, v2

    move v2, v3

    move/from16 v3, v17

    :goto_1
    if-gt v3, v12, :cond_1

    aget-char v4, v10, v3

    :goto_2
    const/16 v15, 0x8

    if-lt v2, v15, :cond_0

    shr-int/lit8 v15, v1, 0x18

    invoke-virtual {v8, v15}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v2, -0x8

    goto :goto_2

    :cond_0
    aget-byte v15, v14, v4

    and-int/lit16 v15, v15, 0xff

    aget v4, v13, v4

    rsub-int/lit8 v16, v2, 0x20

    sub-int v16, v16, v15

    shl-int v4, v4, v16

    or-int/2addr v4, v1

    add-int/2addr v2, v15

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v12, 0x1

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move/from16 v17, v1

    move v1, v3

    move v3, v2

    move/from16 v2, v17

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/commons/compress/compressors/a/b;->at:I

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/commons/compress/compressors/a/b;->au:I

    return-void
.end method

.method private D()V
    .locals 2

    const/16 v0, 0x18

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget v1, v1, Lorg/apache/commons/compress/compressors/a/i;->nT:I

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/a/b;->b(II)V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->F()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->A()V

    return-void
.end method

.method private E()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aE:Lorg/apache/commons/compress/compressors/a/d;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget v2, p0, Lorg/apache/commons/compress/compressors/a/b;->ar:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/compressors/a/d;->a(Lorg/apache/commons/compress/compressors/a/i;I)V

    return-void
.end method

.method private F()V
    .locals 17

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/compress/compressors/a/b;->ar:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v3, v1, Lorg/apache/commons/compress/compressors/a/i;->aF:[Z

    iget-object v9, v1, Lorg/apache/commons/compress/compressors/a/i;->si:[B

    iget-object v10, v1, Lorg/apache/commons/compress/compressors/a/i;->sj:[I

    iget-object v11, v1, Lorg/apache/commons/compress/compressors/a/i;->sk:[C

    iget-object v12, v1, Lorg/apache/commons/compress/compressors/a/i;->rW:[I

    iget-object v13, v1, Lorg/apache/commons/compress/compressors/a/i;->rV:[B

    iget-object v14, v1, Lorg/apache/commons/compress/compressors/a/i;->rX:[B

    const/4 v2, 0x0

    const/4 v1, 0x0

    move/from16 v16, v1

    move v1, v2

    move/from16 v2, v16

    :goto_0
    const/16 v4, 0x100

    if-ge v2, v4, :cond_1

    aget-boolean v4, v3, v2

    if-eqz v4, :cond_0

    int-to-byte v4, v1

    aput-byte v4, v13, v2

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/commons/compress/compressors/a/b;->aw:I

    add-int/lit8 v7, v1, 0x1

    move v2, v7

    :goto_1
    if-ltz v2, :cond_2

    const/4 v3, 0x0

    aput v3, v12, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    int-to-byte v2, v1

    aput-byte v2, v14, v1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v6, v1

    move v1, v2

    move v2, v3

    :goto_3
    if-gt v6, v8, :cond_9

    aget v3, v10, v6

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v15, v13, v3

    const/4 v3, 0x0

    aget-byte v4, v14, v3

    const/4 v3, 0x0

    :goto_4
    if-eq v15, v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    aget-byte v5, v14, v3

    aput-byte v4, v14, v3

    move v4, v5

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    aput-byte v4, v14, v5

    if-nez v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    :goto_5
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_3

    :cond_5
    if-lez v1, :cond_8

    add-int/lit8 v1, v1, -0x1

    :goto_6
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_6

    const/4 v4, 0x0

    aput-char v4, v11, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    aget v5, v12, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v12, v4

    :goto_7
    const/4 v4, 0x2

    if-lt v1, v4, :cond_7

    add-int/lit8 v1, v1, -0x2

    shr-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x1

    aput-char v4, v11, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    aget v5, v12, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v12, v4

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :cond_8
    add-int/lit8 v4, v3, 0x1

    int-to-char v4, v4

    aput-char v4, v11, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v4, v12, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v12, v3

    goto :goto_5

    :cond_9
    if-lez v1, :cond_b

    add-int/lit8 v1, v1, -0x1

    :goto_8
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_a

    const/4 v3, 0x0

    aput-char v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    aget v4, v12, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v12, v3

    :goto_9
    const/4 v3, 0x2

    if-lt v1, v3, :cond_b

    add-int/lit8 v1, v1, -0x2

    shr-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_a
    const/4 v3, 0x1

    aput-char v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    aget v4, v12, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v12, v3

    goto :goto_9

    :cond_b
    int-to-char v1, v7

    aput-char v1, v11, v2

    aget v1, v12, v7

    add-int/lit8 v1, v1, 0x1

    aput v1, v12, v7

    add-int/lit8 v1, v2, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/commons/compress/compressors/a/b;->ax:I

    return-void
.end method

.method public static a(J)I
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x203a0

    div-long v0, p0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x9

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private static a([B[ILorg/apache/commons/compress/compressors/a/i;II)V
    .locals 14

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/commons/compress/compressors/a/i;->sf:[I

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/apache/commons/compress/compressors/a/i;->sg:[I

    move-object/from16 v0, p2

    iget-object v7, v0, Lorg/apache/commons/compress/compressors/a/i;->sh:[I

    move/from16 v1, p3

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ltz v2, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    shl-int/lit8 v1, v1, 0x8

    aput v1, v6, v3

    move v1, v2

    goto :goto_0

    :cond_0
    aget v1, p1, v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_f

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v5, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v6, v1

    const/4 v1, 0x0

    const/4 v3, -0x2

    aput v3, v7, v1

    const/4 v1, 0x1

    move v3, v1

    :goto_2
    move/from16 v0, p3

    if-gt v3, v0, :cond_11

    const/4 v1, -0x1

    aput v1, v7, v3

    add-int/lit8 v2, v2, 0x1

    aput v3, v5, v2

    aget v8, v5, v2

    move v1, v2

    :goto_3
    aget v9, v6, v8

    shr-int/lit8 v10, v1, 0x1

    aget v10, v5, v10

    aget v10, v6, v10

    if-ge v9, v10, :cond_3

    shr-int/lit8 v9, v1, 0x1

    aget v9, v5, v9

    aput v9, v5, v1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    aput v8, v5, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_4
    aput v8, v5, v1

    :goto_4
    const/4 v1, 0x1

    if-le v2, v1, :cond_c

    const/4 v1, 0x1

    aget v8, v5, v1

    const/4 v1, 0x1

    aget v9, v5, v2

    aput v9, v5, v1

    add-int/lit8 v9, v2, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v10, v5, v2

    move v2, v1

    :goto_5
    shl-int/lit8 v1, v2, 0x1

    if-le v1, v9, :cond_7

    :cond_5
    aput v10, v5, v2

    const/4 v1, 0x1

    aget v10, v5, v1

    const/4 v1, 0x1

    aget v2, v5, v9

    aput v2, v5, v1

    add-int/lit8 v9, v9, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v11, v5, v2

    move v2, v1

    :goto_6
    shl-int/lit8 v1, v2, 0x1

    if-le v1, v9, :cond_9

    :cond_6
    aput v11, v5, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v7, v10

    aput v3, v7, v8

    aget v1, v6, v8

    aget v2, v6, v10

    and-int/lit16 v8, v1, -0x100

    and-int/lit16 v10, v2, -0x100

    add-int/2addr v8, v10

    and-int/lit16 v10, v1, 0xff

    and-int/lit16 v11, v2, 0xff

    if-le v10, v11, :cond_b

    and-int/lit16 v1, v1, 0xff

    :goto_7
    add-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v8

    aput v1, v6, v3

    const/4 v1, -0x1

    aput v1, v7, v3

    add-int/lit8 v2, v9, 0x1

    aput v3, v5, v2

    aget v8, v5, v2

    aget v9, v6, v8

    move v1, v2

    :goto_8
    shr-int/lit8 v10, v1, 0x1

    aget v10, v5, v10

    aget v10, v6, v10

    if-ge v9, v10, :cond_4

    shr-int/lit8 v10, v1, 0x1

    aget v10, v5, v10

    aput v10, v5, v1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_7
    if-ge v1, v9, :cond_8

    add-int/lit8 v11, v1, 0x1

    aget v11, v5, v11

    aget v11, v6, v11

    aget v12, v5, v1

    aget v12, v6, v12

    if-ge v11, v12, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    aget v11, v6, v10

    aget v12, v5, v1

    aget v12, v6, v12

    if-lt v11, v12, :cond_5

    aget v11, v5, v1

    aput v11, v5, v2

    move v2, v1

    goto :goto_5

    :cond_9
    if-ge v1, v9, :cond_a

    add-int/lit8 v12, v1, 0x1

    aget v12, v5, v12

    aget v12, v6, v12

    aget v13, v5, v1

    aget v13, v6, v13

    if-ge v12, v13, :cond_a

    add-int/lit8 v1, v1, 0x1

    :cond_a
    aget v12, v6, v11

    aget v13, v5, v1

    aget v13, v6, v13

    if-lt v12, v13, :cond_6

    aget v12, v5, v1

    aput v12, v5, v2

    move v2, v1

    goto :goto_6

    :cond_b
    and-int/lit16 v1, v2, 0xff

    goto :goto_7

    :cond_c
    const/4 v2, 0x1

    :goto_9
    move/from16 v0, p3

    if-gt v2, v0, :cond_e

    const/4 v1, 0x0

    move v3, v1

    move v1, v2

    :goto_a
    aget v1, v7, v1

    if-ltz v1, :cond_d

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v1, v2, -0x1

    int-to-byte v8, v3

    aput-byte v8, p0, v1

    move/from16 v0, p4

    if-le v3, v0, :cond_10

    const/4 v1, 0x1

    :goto_b
    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_9

    :cond_e
    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :goto_c
    move/from16 v0, p3

    if-ge v1, v0, :cond_2

    aget v2, v6, v1

    shr-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x8

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_f
    return-void

    :cond_10
    move v1, v4

    goto :goto_b

    :cond_11
    move/from16 v3, p3

    goto/16 :goto_4
.end method

.method private static a([I[BIII)V
    .locals 4

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    if-gt p2, p3, :cond_2

    move v1, v2

    :goto_1
    if-ge v1, p4, :cond_1

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    if-ne v3, p2, :cond_0

    aput v0, p0, v1

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(II)V
    .locals 4

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->au:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->at:I

    :goto_0
    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    shr-int/lit8 v3, v0, 0x18

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, v1, 0x20

    sub-int/2addr v2, p1

    shl-int v2, p2, v2

    or-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->at:I

    add-int v0, v1, p1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->au:I

    return-void
.end method

.method private c(II)V
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v7, v0, Lorg/apache/commons/compress/compressors/a/i;->rY:[[B

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v8, v0, Lorg/apache/commons/compress/compressors/a/i;->rW:[I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->ax:I

    move v4, p1

    move v5, v3

    move v6, v0

    :goto_0
    if-lez v4, :cond_3

    div-int v1, v6, v4

    add-int/lit8 v2, v5, -0x1

    add-int/lit8 v9, p2, -0x1

    move v0, v3

    :goto_1
    if-ge v0, v1, :cond_0

    if-ge v2, v9, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget v10, v8, v2

    add-int/2addr v0, v10

    goto :goto_1

    :cond_0
    if-le v2, v5, :cond_4

    if-eq v4, p1, :cond_4

    const/4 v1, 0x1

    if-eq v4, v1, :cond_4

    sub-int v1, p1, v4

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v2, -0x1

    aget v2, v8, v2

    sub-int/2addr v0, v2

    :goto_2
    add-int/lit8 v2, v4, -0x1

    aget-object v9, v7, v2

    move v2, p2

    :goto_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    if-lt v2, v5, :cond_1

    if-gt v2, v1, :cond_1

    aput-byte v3, v9, v2

    goto :goto_3

    :cond_1
    const/16 v10, 0xf

    aput-byte v10, v9, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    sub-int v2, v6, v0

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v5, v1

    move v6, v2

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private d(II)I
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v11, v1, Lorg/apache/commons/compress/compressors/a/i;->rZ:[[I

    iget-object v12, v1, Lorg/apache/commons/compress/compressors/a/i;->sa:[I

    iget-object v13, v1, Lorg/apache/commons/compress/compressors/a/i;->sb:[S

    iget-object v14, v1, Lorg/apache/commons/compress/compressors/a/i;->sk:[C

    iget-object v15, v1, Lorg/apache/commons/compress/compressors/a/i;->aH:[B

    iget-object v0, v1, Lorg/apache/commons/compress/compressors/a/i;->rY:[[B

    move-object/from16 v16, v0

    const/4 v1, 0x0

    aget-object v17, v16, v1

    const/4 v1, 0x1

    aget-object v18, v16, v1

    const/4 v1, 0x2

    aget-object v19, v16, v1

    const/4 v1, 0x3

    aget-object v20, v16, v1

    const/4 v1, 0x4

    aget-object v21, v16, v1

    const/4 v1, 0x5

    aget-object v22, v16, v1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/a/b;->ax:I

    move/from16 v23, v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    const/4 v1, 0x4

    if-ge v10, v1, :cond_b

    move/from16 v1, p1

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-ltz v2, :cond_1

    const/4 v1, 0x0

    aput v1, v12, v2

    aget-object v3, v11, v2

    move/from16 v1, p2

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    const/4 v4, 0x0

    aput v4, v3, v1

    goto :goto_2

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/compress/compressors/a/b;->ax:I

    if-ge v1, v3, :cond_9

    add-int/lit8 v3, v1, 0x32

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v23, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v24

    const/4 v3, 0x6

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v1

    :goto_4
    move/from16 v0, v24

    if-gt v3, v0, :cond_2

    aget-char v25, v14, v3

    aget-byte v26, v17, v25

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v9, v9, v26

    int-to-short v9, v9

    aget-byte v26, v18, v25

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v8, v8, v26

    int-to-short v8, v8

    aget-byte v26, v19, v25

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v7, v7, v26

    int-to-short v7, v7

    aget-byte v26, v20, v25

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v6, v6, v26

    int-to-short v6, v6

    aget-byte v26, v21, v25

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v5, v5, v26

    int-to-short v5, v5

    aget-byte v25, v22, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    add-int v4, v4, v25

    int-to-short v4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_2
    const/4 v3, 0x0

    aput-short v9, v13, v3

    const/4 v3, 0x1

    aput-short v8, v13, v3

    const/4 v3, 0x2

    aput-short v7, v13, v3

    const/4 v3, 0x3

    aput-short v6, v13, v3

    const/4 v3, 0x4

    aput-short v5, v13, v3

    const/4 v3, 0x5

    aput-short v4, v13, v3

    :cond_3
    const/4 v6, -0x1

    const v4, 0x3b9ac9ff

    move/from16 v5, p1

    :goto_5
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_7

    aget-short v3, v13, v5

    if-ge v3, v4, :cond_c

    move v4, v5

    :goto_6
    move v6, v4

    move v4, v3

    goto :goto_5

    :cond_4
    move/from16 v3, p1

    :goto_7
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5

    const/4 v4, 0x0

    aput-short v4, v13, v3

    goto :goto_7

    :cond_5
    move v4, v1

    :goto_8
    move/from16 v0, v24

    if-gt v4, v0, :cond_3

    aget-char v5, v14, v4

    move/from16 v3, p1

    :goto_9
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_6

    aget-short v6, v13, v3

    aget-object v7, v16, v3

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v13, v3

    goto :goto_9

    :cond_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_8

    :cond_7
    aget v3, v12, v6

    add-int/lit8 v3, v3, 0x1

    aput v3, v12, v6

    int-to-byte v3, v6

    aput-byte v3, v15, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v3, v11, v6

    :goto_a
    move/from16 v0, v24

    if-gt v1, v0, :cond_8

    aget-char v4, v14, v1

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_8
    add-int/lit8 v1, v24, 0x1

    goto/16 :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_b
    move/from16 v0, p1

    if-ge v1, v0, :cond_a

    aget-object v3, v16, v1

    aget-object v4, v11, v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    const/16 v6, 0x14

    move/from16 v0, p2

    invoke-static {v3, v4, v5, v0, v6}, Lorg/apache/commons/compress/compressors/a/b;->a([B[ILorg/apache/commons/compress/compressors/a/i;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_0

    :cond_b
    return v2

    :cond_c
    move v3, v4

    move v4, v6

    goto :goto_6
.end method

.method private e(II)V
    .locals 8

    const/4 v1, 0x0

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v6, v5, Lorg/apache/commons/compress/compressors/a/i;->sd:[B

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    int-to-byte v0, p1

    aput-byte v0, v6, p1

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_1
    if-ge v4, p2, :cond_2

    iget-object v0, v5, Lorg/apache/commons/compress/compressors/a/i;->aH:[B

    aget-byte v7, v0, v4

    aget-byte v0, v6, v1

    move v2, v0

    move v0, v1

    :goto_2
    if-eq v7, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-byte v3, v6, v0

    aput-byte v2, v6, v0

    move v2, v3

    goto :goto_2

    :cond_1
    aput-byte v2, v6, v1

    iget-object v2, v5, Lorg/apache/commons/compress/compressors/a/i;->aI:[B

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private endBlock()V
    .locals 3

    const/16 v2, 0x59

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->av:Lorg/apache/commons/compress/compressors/a/e;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/a/e;->af()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aA:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aB:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->aB:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aB:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aB:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->aA:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aB:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->ar:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->E()V

    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    const/16 v0, 0x41

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aA:I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->k(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/a/b;->b(II)V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->D()V

    goto :goto_0
.end method

.method private f(II)V
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v6, v0, Lorg/apache/commons/compress/compressors/a/i;->sc:[[I

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v7, v0, Lorg/apache/commons/compress/compressors/a/i;->rY:[[B

    move v5, v4

    :goto_0
    if-ge v5, p1, :cond_2

    const/16 v1, 0x20

    aget-object v8, v7, v5

    move v0, p2

    move v2, v4

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_1

    aget-byte v0, v8, v3

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    move v2, v0

    :cond_0
    if-ge v0, v1, :cond_3

    :goto_2
    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_1
    aget-object v0, v6, v5

    aget-object v3, v7, v5

    invoke-static {v0, v3, v1, v2, p2}, Lorg/apache/commons/compress/compressors/a/b;->a([I[BIII)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private g(II)V
    .locals 11

    const/16 v10, 0x8

    const/4 v3, 0x0

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/a/b;->b(II)V

    const/16 v0, 0xf

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/compress/compressors/a/b;->b(II)V

    iget-object v6, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v7, v0, Lorg/apache/commons/compress/compressors/a/i;->aI:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->au:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->at:I

    move v5, v3

    :goto_0
    if-ge v5, p2, :cond_3

    aget-byte v2, v7, v5

    and-int/lit16 v8, v2, 0xff

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_1

    :goto_2
    if-lt v1, v10, :cond_0

    shr-int/lit8 v4, v0, 0x18

    invoke-virtual {v6, v4}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, -0x8

    goto :goto_2

    :cond_0
    const/4 v4, 0x1

    rsub-int/lit8 v9, v1, 0x20

    add-int/lit8 v9, v9, -0x1

    shl-int/2addr v4, v9

    or-int/2addr v4, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_1

    :cond_1
    :goto_3
    if-lt v1, v10, :cond_2

    shr-int/lit8 v2, v0, 0x18

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, -0x8

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v2

    goto :goto_0

    :cond_3
    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->at:I

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/b;->au:I

    return-void
.end method

.method private h(II)V
    .locals 12

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v6, v0, Lorg/apache/commons/compress/compressors/a/i;->rY:[[B

    iget-object v7, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    iget v2, p0, Lorg/apache/commons/compress/compressors/a/b;->au:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->at:I

    const/4 v0, 0x0

    move v5, v0

    move v0, v1

    move v1, v2

    :goto_0
    if-ge v5, p1, :cond_6

    aget-object v8, v6, v5

    const/4 v2, 0x0

    aget-byte v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    move v3, v1

    :goto_1
    const/16 v1, 0x8

    if-lt v3, v1, :cond_0

    shr-int/lit8 v1, v0, 0x18

    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v3, -0x8

    move v3, v1

    goto :goto_1

    :cond_0
    rsub-int/lit8 v1, v3, 0x20

    add-int/lit8 v1, v1, -0x5

    shl-int v1, v2, v1

    or-int/2addr v1, v0

    add-int/lit8 v3, v3, 0x5

    const/4 v0, 0x0

    move v4, v0

    move v0, v2

    move v2, v3

    :goto_2
    if-ge v4, p2, :cond_5

    aget-byte v3, v8, v4

    and-int/lit16 v9, v3, 0xff

    :goto_3
    if-ge v0, v9, :cond_7

    :goto_4
    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    shr-int/lit8 v3, v1, 0x18

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v2, -0x8

    goto :goto_4

    :cond_1
    const/4 v3, 0x2

    rsub-int/lit8 v10, v2, 0x20

    add-int/lit8 v10, v10, -0x2

    shl-int/2addr v3, v10

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x3

    rsub-int/lit8 v10, v1, 0x20

    add-int/lit8 v10, v10, -0x2

    shl-int/2addr v3, v10

    or-int/2addr v3, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move v0, v3

    :goto_5
    if-le v2, v9, :cond_3

    :goto_6
    const/16 v3, 0x8

    if-lt v1, v3, :cond_2

    shr-int/lit8 v3, v0, 0x18

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, -0x8

    goto :goto_6

    :cond_3
    :goto_7
    const/16 v3, 0x8

    if-lt v1, v3, :cond_4

    shr-int/lit8 v3, v0, 0x18

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, -0x8

    goto :goto_7

    :cond_4
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    move v0, v2

    move v2, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v1

    move v1, v2

    goto/16 :goto_0

    :cond_6
    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->at:I

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/b;->au:I

    return-void

    :cond_7
    move v11, v0

    move v0, v1

    move v1, v2

    move v2, v11

    goto :goto_5
.end method

.method private i(I)V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->ay:I

    if-eq v0, v2, :cond_2

    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->ay:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->az:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->az:I

    const/16 v1, 0xfe

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->w()V

    iput v2, p0, Lorg/apache/commons/compress/compressors/a/b;->ay:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->az:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->w()V

    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/b;->az:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->ay:I

    goto :goto_0

    :cond_2
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->ay:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->az:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->az:I

    goto :goto_0
.end method

.method private init()V
    .locals 2

    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    new-instance v0, Lorg/apache/commons/compress/compressors/a/i;

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->as:I

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/a/i;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    new-instance v0, Lorg/apache/commons/compress/compressors/a/d;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/a/d;-><init>(Lorg/apache/commons/compress/compressors/a/i;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aE:Lorg/apache/commons/compress/compressors/a/d;

    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->as:I

    add-int/lit8 v0, v0, 0x30

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aB:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->x()V

    return-void
.end method

.method private j(I)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/a/b;->b(II)V

    return-void
.end method

.method private k(I)V
    .locals 2

    const/16 v1, 0x8

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/a/b;->b(II)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/a/b;->b(II)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/a/b;->b(II)V

    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/a/b;->b(II)V

    return-void
.end method

.method private w()V
    .locals 7

    const/4 v6, 0x1

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->ar:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->aC:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/b;->ay:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v3, v2, Lorg/apache/commons/compress/compressors/a/i;->aF:[Z

    aput-boolean v6, v3, v1

    int-to-byte v3, v1

    iget v4, p0, Lorg/apache/commons/compress/compressors/a/b;->az:I

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/a/b;->av:Lorg/apache/commons/compress/compressors/a/e;

    invoke-virtual {v5, v1, v4}, Lorg/apache/commons/compress/compressors/a/e;->l(II)V

    packed-switch v4, :pswitch_data_0

    add-int/lit8 v1, v4, -0x4

    iget-object v4, v2, Lorg/apache/commons/compress/compressors/a/i;->aF:[Z

    aput-boolean v6, v4, v1

    iget-object v2, v2, Lorg/apache/commons/compress/compressors/a/i;->si:[B

    add-int/lit8 v4, v0, 0x2

    aput-byte v3, v2, v4

    add-int/lit8 v4, v0, 0x3

    aput-byte v3, v2, v4

    add-int/lit8 v4, v0, 0x4

    aput-byte v3, v2, v4

    add-int/lit8 v4, v0, 0x5

    aput-byte v3, v2, v4

    add-int/lit8 v3, v0, 0x6

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->ar:I

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, v2, Lorg/apache/commons/compress/compressors/a/i;->si:[B

    add-int/lit8 v2, v0, 0x2

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->ar:I

    goto :goto_0

    :pswitch_1
    iget-object v1, v2, Lorg/apache/commons/compress/compressors/a/i;->si:[B

    add-int/lit8 v4, v0, 0x2

    aput-byte v3, v1, v4

    iget-object v1, v2, Lorg/apache/commons/compress/compressors/a/i;->si:[B

    add-int/lit8 v2, v0, 0x3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->ar:I

    goto :goto_0

    :pswitch_2
    iget-object v1, v2, Lorg/apache/commons/compress/compressors/a/i;->si:[B

    add-int/lit8 v2, v0, 0x2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x4

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->ar:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->endBlock()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->x()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->w()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private x()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->av:Lorg/apache/commons/compress/compressors/a/e;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/a/e;->ae()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->ar:I

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/a/i;->aF:[Z

    const/16 v0, 0x100

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private y()V
    .locals 1

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    const/16 v0, 0x72

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    const/16 v0, 0x90

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->j(I)V

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->aB:I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/b;->k(I)V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->z()V

    return-void
.end method

.method private z()V
    .locals 2

    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->au:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->at:I

    shr-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->at:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->at:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->au:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->au:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/a/b;->finish()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/a/b;->finish()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public finish()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    :try_start_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->az:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->w()V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/b;->ay:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->endBlock()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/b;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/a/b;->aE:Lorg/apache/commons/compress/compressors/a/d;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/a/b;->aD:Lorg/apache/commons/compress/compressors/a/i;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/a/b;->aE:Lorg/apache/commons/compress/compressors/a/d;

    throw v0
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public final getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/b;->as:I

    return v0
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/a/b;->i(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 3

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") < 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p3, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") < 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") + len("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > buf.length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/b;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int v1, p2, p3

    :goto_0
    if-ge p2, v1, :cond_4

    add-int/lit8 v0, p2, 0x1

    aget-byte v2, p1, p2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/a/b;->i(I)V

    move p2, v0

    goto :goto_0

    :cond_4
    return-void
.end method
