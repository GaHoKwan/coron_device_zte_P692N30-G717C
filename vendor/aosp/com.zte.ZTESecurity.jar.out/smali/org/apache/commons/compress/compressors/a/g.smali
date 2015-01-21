.class public Lorg/apache/commons/compress/compressors/a/g;
.super Lorg/apache/commons/compress/compressors/a;

# interfaces
.implements Lorg/apache/commons/compress/compressors/a/a;


# static fields
.field private static final nV:I = 0x0

.field private static final nW:I = 0x1

.field private static final nX:I = 0x2

.field private static final nY:I = 0x3

.field private static final nZ:I = 0x4

.field private static final oa:I = 0x5

.field private static final ob:I = 0x6

.field private static final oc:I = 0x7


# instance fields
.field private ar:I

.field private as:I

.field private at:I

.field private au:I

.field private final av:Lorg/apache/commons/compress/compressors/a/e;

.field private aw:I

.field private ay:I

.field private final eg:Z

.field private in:Ljava/io/InputStream;

.field private nT:I

.field private nU:Z

.field private od:I

.field private oe:I

.field private of:I

.field private og:I

.field private oh:I

.field private oi:I

.field private oj:I

.field private ok:I

.field private ol:I

.field private om:I

.field private on:I

.field private oo:I

.field private op:I

.field private oq:C

.field private or:Lorg/apache/commons/compress/compressors/a/c;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/a/g;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a;-><init>()V

    new-instance v0, Lorg/apache/commons/compress/compressors/a/e;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/a/e;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->av:Lorg/apache/commons/compress/compressors/a/e;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->ay:I

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->od:I

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/a/g;->eg:Z

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/a/g;->c(Z)Z

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->x()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->db()V

    return-void
.end method

.method private Z(I)I
    .locals 4

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->au:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->at:I

    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x8

    if-lt v1, p1, :cond_0

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->at:I

    :cond_2
    sub-int v2, v1, p1

    iput v2, p0, Lorg/apache/commons/compress/compressors/a/g;->au:I

    sub-int/2addr v1, p1

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method private static a([I[I[I[CIII)V
    .locals 6

    const/16 v3, 0x17

    const/4 v2, 0x0

    move v1, v2

    move v5, p4

    :goto_0
    if-gt v5, p5, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, p6, :cond_0

    aget-char v0, p3, v4

    if-ne v0, v5, :cond_7

    add-int/lit8 v0, v1, 0x1

    aput v4, p2, v1

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_2

    aput v2, p1, v0

    aput v2, p0, v0

    goto :goto_3

    :cond_2
    move v0, v2

    :goto_4
    if-ge v0, p6, :cond_3

    aget-char v1, p3, v0

    add-int/lit8 v1, v1, 0x1

    aget v4, p1, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x1

    aget v0, p1, v2

    :goto_5
    if-ge v1, v3, :cond_4

    aget v4, p1, v1

    add-int/2addr v0, v4

    aput v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    aget v0, p1, p4

    move v3, p4

    :goto_6
    if-gt v3, p5, :cond_5

    add-int/lit8 v1, v3, 0x1

    aget v1, p1, v1

    sub-int v0, v1, v0

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x1

    aput v2, p0, v3

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_6

    :cond_5
    add-int/lit8 v0, p4, 0x1

    :goto_7
    if-gt v0, p5, :cond_6

    add-int/lit8 v1, v0, -0x1

    aget v1, p0, v1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    aget v2, p1, v0

    sub-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    return-void

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public static a([BI)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v2, p0, v0

    const/16 v3, 0x42

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v1

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private aa(I)I
    .locals 9

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v0, v5, Lorg/apache/commons/compress/compressors/a/c;->aH:[B

    aget-byte v0, v0, p1

    and-int/lit16 v6, v0, 0xff

    iget-object v0, v5, Lorg/apache/commons/compress/compressors/a/c;->aK:[[I

    aget-object v7, v0, v6

    iget-object v0, v5, Lorg/apache/commons/compress/compressors/a/c;->aN:[I

    aget v3, v0, v6

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/a/g;->Z(I)I

    move-result v2

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->au:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->at:I

    :goto_0
    aget v8, v7, v3

    if-le v2, v8, :cond_2

    add-int/lit8 v3, v3, 0x1

    :goto_1
    const/4 v8, 0x1

    if-ge v1, v8, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ltz v8, :cond_0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v8

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v2, 0x1

    shr-int v8, v0, v1

    and-int/lit8 v8, v8, 0x1

    or-int/2addr v2, v8

    goto :goto_0

    :cond_2
    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->au:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->at:I

    iget-object v0, v5, Lorg/apache/commons/compress/compressors/a/c;->aM:[[I

    aget-object v0, v0, v6

    iget-object v1, v5, Lorg/apache/commons/compress/compressors/a/c;->aL:[[I

    aget-object v1, v1, v6

    aget v1, v1, v3

    sub-int v1, v2, v1

    aget v0, v0, v1

    return v0
.end method

.method private c(Z)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    if-nez p1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/16 v4, 0x42

    if-ne v1, v4, :cond_2

    const/16 v1, 0x5a

    if-ne v2, v1, :cond_2

    const/16 v1, 0x68

    if-eq v3, v1, :cond_4

    :cond_2
    new-instance v1, Ljava/io/IOException;

    if-eqz p1, :cond_3

    const-string v0, "Stream is not in the BZip2 format"

    :goto_1
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "Garbage after a valid BZip2 stream"

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0x31

    if-lt v1, v2, :cond_5

    const/16 v2, 0x39

    if-le v1, v2, :cond_6

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 block size is invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v1, v1, -0x30

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->as:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->au:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oh:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cT()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v3, v1, Lorg/apache/commons/compress/compressors/a/c;->aF:[Z

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v4, v1, Lorg/apache/commons/compress/compressors/a/c;->aG:[B

    move v2, v0

    move v1, v0

    :goto_0
    const/16 v0, 0x100

    if-ge v2, v0, :cond_0

    aget-boolean v0, v3, v2

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    int-to-byte v5, v2

    aput-byte v5, v4, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->aw:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private cU()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->ay:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->od:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->de()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->df()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->dg()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->dh()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private cV()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cY()I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->of:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->od:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->of:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/a/g;->oh:I

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 CRC error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/a/g;->eg:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/g;->c(Z)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private cW()Z
    .locals 4

    const/4 v2, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->au:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->at:I

    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x8

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->at:I

    :cond_1
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/a/g;->au:I

    add-int/lit8 v1, v1, -0x1

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cX()C
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/g;->Z(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method private cY()I
    .locals 3

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/a/g;->Z(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/a/g;->Z(I)I

    move-result v1

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/a/g;->Z(I)I

    move-result v1

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/a/g;->Z(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private cZ()V
    .locals 13

    const/16 v12, 0x10

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v6, v5, Lorg/apache/commons/compress/compressors/a/c;->aF:[Z

    iget-object v7, v5, Lorg/apache/commons/compress/compressors/a/c;->aR:[B

    iget-object v8, v5, Lorg/apache/commons/compress/compressors/a/c;->aH:[B

    iget-object v9, v5, Lorg/apache/commons/compress/compressors/a/c;->aI:[B

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v12, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cW()Z

    move-result v4

    if-eqz v4, :cond_0

    shl-int v4, v3, v2

    or-int/2addr v0, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x100

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    aput-boolean v1, v6, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_2
    if-ge v4, v12, :cond_5

    shl-int v2, v3, v4

    and-int/2addr v2, v0

    if-eqz v2, :cond_4

    shl-int/lit8 v10, v4, 0x4

    move v2, v1

    :goto_3
    if-ge v2, v12, :cond_4

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cW()Z

    move-result v11

    if-eqz v11, :cond_3

    add-int v11, v10, v2

    aput-boolean v3, v6, v11

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cT()V

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->aw:I

    add-int/lit8 v10, v0, 0x2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/g;->Z(I)I

    move-result v6

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/g;->Z(I)I

    move-result v4

    move v2, v1

    :goto_4
    if-ge v2, v4, :cond_7

    move v0, v1

    :goto_5
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cW()Z

    move-result v11

    if-eqz v11, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    int-to-byte v0, v0

    aput-byte v0, v9, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_7
    move v0, v6

    :goto_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_8

    int-to-byte v2, v0

    aput-byte v2, v7, v0

    goto :goto_6

    :cond_8
    move v2, v1

    :goto_7
    if-ge v2, v4, :cond_a

    aget-byte v0, v9, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte v11, v7, v0

    :goto_8
    if-lez v0, :cond_9

    add-int/lit8 v12, v0, -0x1

    aget-byte v12, v7, v12

    aput-byte v12, v7, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_9
    aput-byte v11, v7, v1

    aput-byte v11, v8, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_a
    iget-object v7, v5, Lorg/apache/commons/compress/compressors/a/c;->aQ:[[C

    move v5, v1

    :goto_9
    if-ge v5, v6, :cond_e

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/a/g;->Z(I)I

    move-result v0

    aget-object v8, v7, v5

    move v4, v1

    :goto_a
    if-ge v4, v10, :cond_d

    :goto_b
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cW()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cW()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, -0x1

    :goto_c
    add-int/2addr v0, v2

    goto :goto_b

    :cond_b
    move v2, v3

    goto :goto_c

    :cond_c
    int-to-char v2, v0

    aput-char v2, v8, v4

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_a

    :cond_d
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_9

    :cond_e
    invoke-direct {p0, v10, v6}, Lorg/apache/commons/compress/compressors/a/g;->r(II)V

    return-void
.end method

.method private da()V
    .locals 29

    const/16 v2, 0x18

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/compressors/a/g;->Z(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/commons/compress/compressors/a/g;->nT:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/a/g;->cZ()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v0, v2, Lorg/apache/commons/compress/compressors/a/c;->aT:[B

    move-object/from16 v17, v0

    iget-object v0, v2, Lorg/apache/commons/compress/compressors/a/c;->aJ:[I

    move-object/from16 v18, v0

    iget-object v0, v2, Lorg/apache/commons/compress/compressors/a/c;->aH:[B

    move-object/from16 v19, v0

    iget-object v0, v2, Lorg/apache/commons/compress/compressors/a/c;->aG:[B

    move-object/from16 v20, v0

    iget-object v0, v2, Lorg/apache/commons/compress/compressors/a/c;->aP:[C

    move-object/from16 v21, v0

    iget-object v0, v2, Lorg/apache/commons/compress/compressors/a/c;->aN:[I

    move-object/from16 v22, v0

    iget-object v0, v2, Lorg/apache/commons/compress/compressors/a/c;->aK:[[I

    move-object/from16 v23, v0

    iget-object v0, v2, Lorg/apache/commons/compress/compressors/a/c;->aL:[[I

    move-object/from16 v24, v0

    iget-object v0, v2, Lorg/apache/commons/compress/compressors/a/c;->aM:[[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/compress/compressors/a/g;->as:I

    const v3, 0x186a0

    mul-int v26, v2, v3

    const/16 v2, 0x100

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    int-to-char v3, v2

    aput-char v3, v21, v2

    const/4 v3, 0x0

    aput v3, v18, v2

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    const/16 v6, 0x31

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/compress/compressors/a/g;->aw:I

    add-int/lit8 v27, v2, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/compressors/a/g;->aa(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/compress/compressors/a/g;->at:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/commons/compress/compressors/a/g;->au:I

    const/4 v12, -0x1

    aget-byte v2, v19, v7

    and-int/lit16 v2, v2, 0xff

    aget-object v5, v24, v2

    aget-object v4, v23, v2

    aget-object v3, v25, v2

    aget v2, v22, v2

    move v8, v10

    move v10, v11

    move v11, v6

    :goto_1
    move/from16 v0, v27

    if-eq v9, v0, :cond_16

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    if-ne v9, v6, :cond_c

    :cond_1
    const/4 v13, -0x1

    const/4 v6, 0x1

    move v14, v6

    move v15, v11

    move v11, v10

    move v6, v13

    move v13, v9

    move v10, v8

    :goto_2
    if-nez v13, :cond_2

    add-int/2addr v6, v14

    move v13, v6

    :goto_3
    if-nez v15, :cond_3

    const/16 v6, 0x31

    add-int/lit8 v7, v7, 0x1

    aget-byte v2, v19, v7

    and-int/lit16 v2, v2, 0xff

    aget-object v5, v24, v2

    aget-object v4, v23, v2

    aget-object v3, v25, v2

    aget v2, v22, v2

    :goto_4
    move v9, v10

    move v10, v11

    :goto_5
    if-ge v9, v2, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ltz v8, :cond_4

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v8

    add-int/lit8 v8, v9, 0x8

    move v9, v8

    goto :goto_5

    :cond_2
    const/4 v8, 0x1

    if-ne v13, v8, :cond_9

    shl-int/lit8 v8, v14, 0x1

    add-int/2addr v6, v8

    move v13, v6

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v15, -0x1

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    sub-int v8, v9, v2

    shr-int v8, v10, v8

    const/4 v11, 0x1

    shl-int/2addr v11, v2

    add-int/lit8 v11, v11, -0x1

    and-int/2addr v8, v11

    sub-int/2addr v9, v2

    move v11, v10

    move v10, v9

    move v9, v2

    :goto_6
    aget v15, v4, v9

    if-le v8, v15, :cond_8

    add-int/lit8 v9, v9, 0x1

    :goto_7
    const/4 v15, 0x1

    if-ge v10, v15, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v15

    if-ltz v15, :cond_6

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v11, v15

    add-int/lit8 v10, v10, 0x8

    goto :goto_7

    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    add-int/lit8 v10, v10, -0x1

    shl-int/lit8 v8, v8, 0x1

    shr-int v15, v11, v10

    and-int/lit8 v15, v15, 0x1

    or-int/2addr v8, v15

    goto :goto_6

    :cond_8
    aget v9, v5, v9

    sub-int/2addr v8, v9

    aget v9, v3, v8

    shl-int/lit8 v8, v14, 0x1

    move v14, v8

    move v15, v6

    move v6, v13

    move v13, v9

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    aget-char v8, v21, v8

    aget-byte v14, v20, v8

    and-int/lit16 v8, v14, 0xff

    aget v9, v18, v8

    add-int/lit8 v28, v6, 0x1

    add-int v9, v9, v28

    aput v9, v18, v8

    move v9, v12

    :goto_8
    add-int/lit8 v8, v6, -0x1

    if-ltz v6, :cond_a

    add-int/lit8 v6, v9, 0x1

    aput-byte v14, v17, v6

    move v9, v6

    move v6, v8

    goto :goto_8

    :cond_a
    move/from16 v0, v26

    if-lt v9, v0, :cond_b

    new-instance v2, Ljava/io/IOException;

    const-string v3, "block overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    move v12, v9

    move v8, v10

    move v10, v11

    move v9, v13

    move v11, v15

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v26

    if-lt v12, v0, :cond_d

    new-instance v2, Ljava/io/IOException;

    const-string v3, "block overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    add-int/lit8 v6, v9, -0x1

    aget-char v13, v21, v6

    aget-byte v6, v20, v13

    and-int/lit16 v6, v6, 0xff

    aget v14, v18, v6

    add-int/lit8 v14, v14, 0x1

    aput v14, v18, v6

    aget-byte v6, v20, v13

    aput-byte v6, v17, v12

    const/16 v6, 0x10

    if-gt v9, v6, :cond_e

    add-int/lit8 v6, v9, -0x1

    :goto_9
    if-lez v6, :cond_f

    add-int/lit8 v9, v6, -0x1

    aget-char v14, v21, v9

    aput-char v14, v21, v6

    move v6, v9

    goto :goto_9

    :cond_e
    const/4 v6, 0x0

    const/4 v14, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v21

    invoke-static {v0, v6, v1, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    const/4 v6, 0x0

    aput-char v13, v21, v6

    if-nez v11, :cond_10

    const/16 v6, 0x31

    add-int/lit8 v7, v7, 0x1

    aget-byte v2, v19, v7

    and-int/lit16 v2, v2, 0xff

    aget-object v5, v24, v2

    aget-object v4, v23, v2

    aget-object v3, v25, v2

    aget v2, v22, v2

    :goto_a
    move v9, v8

    :goto_b
    if-ge v9, v2, :cond_12

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ltz v8, :cond_11

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v8

    add-int/lit8 v8, v9, 0x8

    move v9, v8

    goto :goto_b

    :cond_10
    add-int/lit8 v6, v11, -0x1

    goto :goto_a

    :cond_11
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    sub-int v8, v9, v2

    shr-int v8, v10, v8

    const/4 v11, 0x1

    shl-int/2addr v11, v2

    add-int/lit8 v11, v11, -0x1

    and-int/2addr v8, v11

    sub-int/2addr v9, v2

    move v11, v10

    move v10, v9

    move v9, v2

    :goto_c
    aget v13, v4, v9

    if-le v8, v13, :cond_15

    add-int/lit8 v9, v9, 0x1

    :goto_d
    const/4 v13, 0x1

    if-ge v10, v13, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v13

    if-ltz v13, :cond_13

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v11, v13

    add-int/lit8 v10, v10, 0x8

    goto :goto_d

    :cond_13
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    add-int/lit8 v10, v10, -0x1

    shl-int/lit8 v8, v8, 0x1

    shr-int v13, v11, v10

    and-int/lit8 v13, v13, 0x1

    or-int/2addr v8, v13

    goto :goto_c

    :cond_15
    aget v9, v5, v9

    sub-int/2addr v8, v9

    aget v9, v3, v8

    move v8, v10

    move v10, v11

    move v11, v6

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/commons/compress/compressors/a/g;->ar:I

    move-object/from16 v0, p0

    iput v8, v0, Lorg/apache/commons/compress/compressors/a/g;->au:I

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/commons/compress/compressors/a/g;->at:I

    return-void
.end method

.method private db()V
    .locals 10

    const/4 v2, 0x1

    const/16 v9, 0x100

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v3, v0, Lorg/apache/commons/compress/compressors/a/c;->aO:[I

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget v4, p0, Lorg/apache/commons/compress/compressors/a/g;->ar:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/compressors/a/c;->l(I)[I

    move-result-object v4

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v5, v0, Lorg/apache/commons/compress/compressors/a/c;->aT:[B

    aput v1, v3, v1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/a/c;->aJ:[I

    invoke-static {v0, v1, v3, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v0, v3, v1

    :goto_1
    if-gt v2, v9, :cond_1

    aget v6, v3, v2

    add-int/2addr v0, v6

    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Lorg/apache/commons/compress/compressors/a/g;->ar:I

    move v0, v1

    :goto_2
    if-gt v0, v2, :cond_2

    aget-byte v6, v5, v0

    and-int/lit16 v6, v6, 0xff

    aget v7, v3, v6

    add-int/lit8 v8, v7, 0x1

    aput v8, v3, v6

    aput v0, v4, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->nT:I

    if-ltz v0, :cond_3

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->nT:I

    array-length v2, v4

    if-lt v0, v2, :cond_4

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream corrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->nT:I

    aget v0, v4, v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->op:I

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->oi:I

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->ol:I

    iput v9, p0, Lorg/apache/commons/compress/compressors/a/g;->oj:I

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/a/g;->nU:Z

    if-eqz v0, :cond_5

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->on:I

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->oo:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->dc()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->dd()V

    goto :goto_0
.end method

.method private dc()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/commons/compress/compressors/a/g;->ol:I

    iget v3, p0, Lorg/apache/commons/compress/compressors/a/g;->ar:I

    if-gt v2, v3, :cond_3

    iget v2, p0, Lorg/apache/commons/compress/compressors/a/g;->oj:I

    iput v2, p0, Lorg/apache/commons/compress/compressors/a/g;->ok:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v2, v2, Lorg/apache/commons/compress/compressors/a/c;->aT:[B

    iget v3, p0, Lorg/apache/commons/compress/compressors/a/g;->op:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v3, v3, Lorg/apache/commons/compress/compressors/a/c;->aS:[I

    iget v4, p0, Lorg/apache/commons/compress/compressors/a/g;->op:I

    aget v3, v3, v4

    iput v3, p0, Lorg/apache/commons/compress/compressors/a/g;->op:I

    iget v3, p0, Lorg/apache/commons/compress/compressors/a/g;->on:I

    if-nez v3, :cond_1

    iget v3, p0, Lorg/apache/commons/compress/compressors/a/g;->oo:I

    invoke-static {v3}, Lorg/apache/commons/compress/compressors/a/f;->v(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/a/g;->on:I

    iget v3, p0, Lorg/apache/commons/compress/compressors/a/g;->oo:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/a/g;->oo:I

    const/16 v4, 0x200

    if-ne v3, v4, :cond_0

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->oo:I

    :cond_0
    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/compressors/a/g;->on:I

    if-ne v3, v0, :cond_2

    :goto_1
    xor-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oj:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->ol:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->ol:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->ay:I

    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->od:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/g;->av:Lorg/apache/commons/compress/compressors/a/e;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/a/e;->u(I)V

    :goto_2
    return-void

    :cond_1
    iget v3, p0, Lorg/apache/commons/compress/compressors/a/g;->on:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/a/g;->on:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->endBlock()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->x()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->db()V

    goto :goto_2
.end method

.method private dd()V
    .locals 3

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->ol:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->ar:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oj:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->ok:I

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/a/c;->aT:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->op:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oj:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/a/c;->aS:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/a/g;->op:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->op:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->ol:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->ol:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->ay:I

    const/4 v1, 0x6

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->od:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/g;->av:Lorg/apache/commons/compress/compressors/a/e;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/a/e;->u(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->od:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->endBlock()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->x()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->db()V

    goto :goto_0
.end method

.method private de()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oj:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->ok:I

    if-eq v0, v1, :cond_0

    iput v4, p0, Lorg/apache/commons/compress/compressors/a/g;->od:I

    iput v3, p0, Lorg/apache/commons/compress/compressors/a/g;->oi:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->dc()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oi:I

    if-lt v0, v5, :cond_4

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/a/c;->aT:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->op:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oq:C

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/a/c;->aS:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->op:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->op:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->on:I

    if-nez v0, :cond_3

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oo:I

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/a/f;->v(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->on:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oo:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1

    iput v2, p0, Lorg/apache/commons/compress/compressors/a/g;->oo:I

    :cond_1
    :goto_1
    iput v2, p0, Lorg/apache/commons/compress/compressors/a/g;->om:I

    iput v5, p0, Lorg/apache/commons/compress/compressors/a/g;->od:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->on:I

    if-ne v0, v3, :cond_2

    iget-char v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oq:C

    xor-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oq:C

    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->df()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->on:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->on:I

    goto :goto_1

    :cond_4
    iput v4, p0, Lorg/apache/commons/compress/compressors/a/g;->od:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->dc()V

    goto :goto_0
.end method

.method private df()V
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->om:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/a/g;->oq:C

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oj:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->ay:I

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->av:Lorg/apache/commons/compress/compressors/a/e;

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->oj:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/a/e;->u(I)V

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->om:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->om:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->od:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->ol:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->ol:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oi:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->dc()V

    goto :goto_0
.end method

.method private dg()V
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oj:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->ok:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oi:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->dd()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oi:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/a/c;->aT:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->op:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oq:C

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/a/c;->aS:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->op:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->op:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->om:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->dh()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->dd()V

    goto :goto_0
.end method

.method private dh()V
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->om:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/a/g;->oq:C

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oj:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->ay:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/a/g;->av:Lorg/apache/commons/compress/compressors/a/e;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/a/e;->u(I)V

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->om:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->om:I

    const/4 v0, 0x7

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->od:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->ol:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->ol:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oi:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->dd()V

    goto :goto_0
.end method

.method private endBlock()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->av:Lorg/apache/commons/compress/compressors/a/e;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/a/e;->af()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->og:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oe:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->og:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->of:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->of:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oh:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oh:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->oe:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oh:I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 CRC error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oh:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->oh:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oh:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oh:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/a/g;->og:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->oh:I

    return-void
.end method

.method private r(II)V
    .locals 13

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iget-object v8, v0, Lorg/apache/commons/compress/compressors/a/c;->aQ:[[C

    iget-object v9, v0, Lorg/apache/commons/compress/compressors/a/c;->aN:[I

    iget-object v10, v0, Lorg/apache/commons/compress/compressors/a/c;->aK:[[I

    iget-object v11, v0, Lorg/apache/commons/compress/compressors/a/c;->aL:[[I

    iget-object v12, v0, Lorg/apache/commons/compress/compressors/a/c;->aM:[[I

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, p2, :cond_3

    const/16 v4, 0x20

    const/4 v5, 0x0

    aget-object v2, v8, v7

    move v0, p1

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_2

    aget-char v0, v2, v1

    if-le v0, v5, :cond_0

    move v5, v0

    :cond_0
    if-ge v0, v4, :cond_1

    move v4, v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    aget-object v0, v10, v7

    aget-object v1, v11, v7

    aget-object v2, v12, v7

    aget-object v3, v8, v7

    move v6, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/compressors/a/g;->a([I[I[I[CIII)V

    aput v4, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private x()V
    .locals 10

    const/16 v9, 0x59

    const/4 v0, 0x0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cX()C

    move-result v2

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cX()C

    move-result v3

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cX()C

    move-result v4

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cX()C

    move-result v5

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cX()C

    move-result v6

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cX()C

    move-result v7

    const/16 v8, 0x17

    if-ne v2, v8, :cond_1

    const/16 v8, 0x72

    if-ne v3, v8, :cond_1

    const/16 v8, 0x45

    if-ne v4, v8, :cond_1

    const/16 v8, 0x38

    if-ne v5, v8, :cond_1

    const/16 v8, 0x50

    if-ne v6, v8, :cond_1

    const/16 v8, 0x90

    if-eq v7, v8, :cond_3

    :cond_1
    const/16 v8, 0x31

    if-ne v2, v8, :cond_2

    const/16 v2, 0x41

    if-ne v3, v2, :cond_2

    if-ne v4, v9, :cond_2

    const/16 v2, 0x26

    if-ne v5, v2, :cond_2

    const/16 v2, 0x53

    if-ne v6, v2, :cond_2

    if-eq v7, v9, :cond_4

    :cond_2
    iput v0, p0, Lorg/apache/commons/compress/compressors/a/g;->od:I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad block header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cV()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cY()I

    move-result v2

    iput v2, p0, Lorg/apache/commons/compress/compressors/a/g;->oe:I

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/a/g;->Z(I)I

    move-result v2

    if-ne v2, v1, :cond_5

    move v0, v1

    :cond_5
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/a/g;->nU:Z

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    if-nez v0, :cond_6

    new-instance v0, Lorg/apache/commons/compress/compressors/a/c;

    iget v2, p0, Lorg/apache/commons/compress/compressors/a/g;->as:I

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/compressors/a/c;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    :cond_6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->da()V

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->av:Lorg/apache/commons/compress/compressors/a/e;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/a/e;->ae()V

    iput v1, p0, Lorg/apache/commons/compress/compressors/a/g;->od:I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iput-object v2, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/apache/commons/compress/compressors/a/g;->or:Lorg/apache/commons/compress/compressors/a/c;

    iput-object v2, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    throw v0
.end method

.method public read()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cU()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/a/g;->z(I)V

    return v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 4

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

    const-string v2, ") > dest.length("

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
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/g;->in:Ljava/io/InputStream;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int v2, p2, p3

    move v0, p2

    :goto_0
    if-ge v0, v2, :cond_4

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a/g;->cU()I

    move-result v3

    if-ltz v3, :cond_4

    add-int/lit8 v1, v0, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    move v0, v1

    goto :goto_0

    :cond_4
    if-ne v0, p2, :cond_5

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/a/g;->z(I)V

    return v0

    :cond_5
    sub-int/2addr v0, p2

    goto :goto_1
.end method
