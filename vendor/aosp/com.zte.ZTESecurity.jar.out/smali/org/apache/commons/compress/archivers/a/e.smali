.class Lorg/apache/commons/compress/archivers/a/e;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(JIZ)[B
    .locals 5

    new-array v1, p2, [B

    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v2, 0x8

    shr-long/2addr p0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_3

    aget-byte v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v1, v3

    aput-byte v4, v1, v0

    aput-byte v2, v1, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method static c([BZ)J
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    array-length v0, p0

    new-array v3, v0, [B

    array-length v0, p0

    invoke-static {p0, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_1

    aget-byte v2, v3, v0

    add-int/lit8 v4, v0, 0x1

    aget-byte v5, v3, v4

    aput-byte v5, v3, v0

    aput-byte v2, v3, v4

    add-int/lit8 v0, v4, 0x1

    goto :goto_0

    :cond_1
    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v1, v0

    const/4 v0, 0x1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    const/16 v4, 0x8

    shl-long/2addr v1, v4

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-wide v1
.end method
