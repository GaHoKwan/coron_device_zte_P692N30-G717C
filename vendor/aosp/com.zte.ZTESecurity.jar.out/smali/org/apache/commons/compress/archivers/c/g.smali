.class public Lorg/apache/commons/compress/archivers/c/g;
.super Ljava/lang/Object;


# static fields
.field private static final dT:I = 0xff

.field static final ki:Lorg/apache/commons/compress/archivers/zip/e;

.field static final kj:Lorg/apache/commons/compress/archivers/zip/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/B;->I(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/e;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/c/g;->ki:Lorg/apache/commons/compress/archivers/zip/e;

    new-instance v0, Lorg/apache/commons/compress/archivers/c/b;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/c/b;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/c/g;->kj:Lorg/apache/commons/compress/archivers/zip/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/e;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p4, p0}, Lorg/apache/commons/compress/archivers/zip/e;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-le v2, p3, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/apache/commons/compress/archivers/zip/e;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_1
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    aput-byte v3, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int v0, p2, p3

    return v0
.end method

.method private static a([BIIZ)J
    .locals 11

    const-wide/16 v6, 0x1

    const/16 v0, 0x9

    if-lt p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "At offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " byte binary number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeds maximum signed long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v0, 0x1

    move v8, v0

    move-wide v9, v1

    move-wide v0, v9

    move v2, v8

    :goto_0
    if-ge v2, p2, :cond_1

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v3

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    sub-long/2addr v0, v6

    const-wide/high16 v2, 0x4000

    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v4, v4, 0x8

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    sub-long/2addr v2, v6

    xor-long/2addr v0, v2

    :cond_2
    if-eqz p3, :cond_3

    neg-long v0, v0

    :cond_3
    return-wide v0
.end method

.method private static a([BIIIB)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "\u0000"

    const-string v2, "{NUL}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p3, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BIILorg/apache/commons/compress/archivers/zip/e;)Ljava/lang/String;
    .locals 2

    :goto_0
    if-lez p2, :cond_0

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_1

    :cond_0
    if-lez p2, :cond_2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p3, v0}, Lorg/apache/commons/compress/archivers/zip/e;->b([B)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public static a(J[BII)V
    .locals 9

    const/16 v8, 0x30

    const-wide/16 v6, 0x0

    add-int/lit8 v1, p4, -0x1

    cmp-long v0, p0, v6

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, -0x1

    add-int/2addr v1, p3

    aput-byte v8, p2, v1

    :cond_0
    :goto_0
    if-ltz v0, :cond_3

    add-int v1, p3, v0

    aput-byte v8, p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v1

    move-wide v1, p0

    :goto_1
    if-ltz v0, :cond_2

    cmp-long v3, v1, v6

    if-eqz v3, :cond_2

    add-int v3, p3, v0

    const-wide/16 v4, 0x7

    and-long/2addr v4, v1

    long-to-int v4, v4

    int-to-byte v4, v4

    add-int/lit8 v4, v4, 0x30

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/4 v3, 0x3

    ushr-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    cmp-long v1, v1, v6

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will not fit in octal number buffer of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public static b(J[BII)I
    .locals 3

    add-int/lit8 v0, p4, -0x2

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/c/g;->a(J[BII)V

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, p3

    const/16 v2, 0x20

    aput-byte v2, p2, v0

    add-int v0, p3, v1

    const/4 v1, 0x0

    aput-byte v1, p2, v0

    add-int v0, p3, p4

    return v0
.end method

.method public static b(Ljava/lang/String;[BII)I
    .locals 2

    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/c/g;->ki:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/c/g;->a(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/e;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lorg/apache/commons/compress/archivers/c/g;->kj:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/c/g;->a(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/e;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b([BIIZ)J
    .locals 4

    add-int/lit8 v0, p2, -0x1

    new-array v1, v0, [B

    add-int/lit8 v0, p1, 0x1

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    if-eqz p3, :cond_0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "At offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " byte binary number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeds maximum signed long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    :goto_0
    return-wide v0

    :cond_2
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static b(J[BIIZ)V
    .locals 10

    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v2, v0, 0x8

    const-wide/16 v0, 0x1

    shl-long v3, v0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is too large for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " byte field."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p5, :cond_1

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    xor-long/2addr v0, v3

    const/16 v3, 0xff

    shl-int v2, v3, v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_1
    add-int v2, p3, p4

    add-int/lit8 v2, v2, -0x1

    move v7, v2

    move-wide v8, v0

    move-wide v1, v8

    move v0, v7

    :goto_0
    if-lt v0, p3, :cond_2

    long-to-int v3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    const/16 v3, 0x8

    shr-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static c(J[BII)I
    .locals 2

    add-int/lit8 v0, p4, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/c/g;->a(J[BII)V

    add-int/2addr v0, p3

    const/16 v1, 0x20

    aput-byte v1, p2, v0

    add-int v0, p3, p4

    return v0
.end method

.method private static c(J[BIIZ)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v2, v1

    add-int v3, p3, p4

    sub-int/2addr v3, v2

    invoke-static {v1, v0, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p5, :cond_0

    const/16 v0, 0xff

    :cond_0
    int-to-byte v1, v0

    add-int/lit8 v0, p3, 0x1

    :goto_0
    if-ge v0, v3, :cond_1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d(J[BII)I
    .locals 6

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    const-wide/32 v0, 0x1fffff

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_2

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/c/g;->c(J[BII)I

    move-result v0

    :goto_2
    return v0

    :cond_0
    const-wide v0, 0x1ffffffffL

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x9

    if-ge p4, v0, :cond_3

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/c/g;->b(J[BIIZ)V

    :cond_3
    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/c/g;->c(J[BIIZ)V

    if-eqz v5, :cond_4

    const/16 v0, 0xff

    :goto_3
    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int v0, p3, p4

    goto :goto_2

    :cond_4
    const/16 v0, 0x80

    goto :goto_3
.end method

.method public static d([BI)Z
    .locals 2

    const/4 v0, 0x1

    aget-byte v1, p0, p1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(J[BII)I
    .locals 3

    add-int/lit8 v0, p4, -0x2

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/c/g;->a(J[BII)V

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, p3

    const/4 v2, 0x0

    aput-byte v2, p2, v0

    add-int v0, p3, v1

    const/16 v1, 0x20

    aput-byte v1, p2, v0

    add-int v0, p3, p4

    return v0
.end method

.method public static l([BII)J
    .locals 6

    const-wide/16 v0, 0x0

    const/16 v5, 0x20

    add-int v3, p1, p2

    const/4 v2, 0x2

    if-ge p2, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be at least 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-byte v2, p0, p1

    if-nez v2, :cond_9

    :cond_1
    return-wide v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-byte v4, p0, v2

    if-ne v4, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v3, -0x1

    aget-byte v4, p0, v4

    if-eqz v4, :cond_3

    if-ne v4, v5, :cond_7

    :cond_3
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v3, -0x1

    aget-byte v4, p0, v4

    if-eqz v4, :cond_4

    if-ne v4, v5, :cond_5

    :cond_4
    add-int/lit8 v3, v3, -0x1

    :cond_5
    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v4, p0, v2

    const/16 v5, 0x30

    if-lt v4, v5, :cond_6

    const/16 v5, 0x37

    if-le v4, v5, :cond_8

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v2, v4}, Lorg/apache/commons/compress/archivers/c/g;->a([BIIIB)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v1, v3, -0x1

    invoke-static {p0, p1, p2, v1, v4}, Lorg/apache/commons/compress/archivers/c/g;->a([BIIIB)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v5, 0x3

    shl-long/2addr v0, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_1

    :cond_9
    move v2, p1

    goto :goto_0
.end method

.method public static m([BII)J
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/c/g;->l([BII)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    aget-byte v0, p0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x9

    if-ge p2, v1, :cond_2

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/c/g;->a([BIIZ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/c/g;->b([BIIZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static n([BII)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/c/g;->ki:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/c/g;->a([BIILorg/apache/commons/compress/archivers/zip/e;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lorg/apache/commons/compress/archivers/c/g;->kj:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/c/g;->a([BIILorg/apache/commons/compress/archivers/zip/e;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static p([B)J
    .locals 5

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method
