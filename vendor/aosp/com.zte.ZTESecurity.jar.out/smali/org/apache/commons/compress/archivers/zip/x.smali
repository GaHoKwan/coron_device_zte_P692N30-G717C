.class public abstract Lorg/apache/commons/compress/archivers/zip/x;
.super Ljava/lang/Object;


# static fields
.field private static final kN:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2100

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/x;->kN:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static P(I)J
    .locals 4

    if-gez p0, :cond_0

    const-wide v0, 0x100000000L

    int-to-long v2, p0

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p0

    goto :goto_0
.end method

.method private static a(Lorg/apache/commons/compress/archivers/zip/u;[B)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/u;->ca()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/B;->lS:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/u;->cb()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/compress/archivers/zip/e;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a(Lorg/apache/commons/compress/archivers/zip/E;[B[B)V
    .locals 2

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/g;->ea:Lorg/apache/commons/compress/archivers/zip/O;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;->d(Lorg/apache/commons/compress/archivers/zip/O;)Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/g;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/zip/x;->a(Lorg/apache/commons/compress/archivers/zip/u;[B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;->setName(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/A;->lI:Lorg/apache/commons/compress/archivers/zip/O;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;->d(Lorg/apache/commons/compress/archivers/zip/O;)Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/A;

    invoke-static {v0, p2}, Lorg/apache/commons/compress/archivers/zip/x;->a(Lorg/apache/commons/compress/archivers/zip/u;[B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;->setComment(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static b(Lorg/apache/commons/compress/archivers/zip/l;)Ljava/util/Date;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/l;->getValue()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/x;->t(J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public static d(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/l;
    .locals 3

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/x;->s(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;-><init>([B)V

    return-object v0
.end method

.method static d(Lorg/apache/commons/compress/archivers/zip/E;)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/x;->e(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/x;->f(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Lorg/apache/commons/compress/archivers/zip/E;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cN()Lorg/apache/commons/compress/archivers/zip/v;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/v;->ce()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Lorg/apache/commons/compress/archivers/zip/E;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static g(Lorg/apache/commons/compress/archivers/zip/E;)V
    .locals 2

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/x;->e(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/i;->ek:Lorg/apache/commons/compress/archivers/zip/i;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/i;Lorg/apache/commons/compress/archivers/zip/E;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/x;->f(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/i;->el:Lorg/apache/commons/compress/archivers/zip/i;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/i;Lorg/apache/commons/compress/archivers/zip/E;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static s(J)[B
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x7bc

    if-ge v1, v2, :cond_0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/x;->kN:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/x;->s([B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit16 v1, v1, -0x7bc

    shl-int/lit8 v1, v1, 0x19

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v1, v2

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xb

    or-int/2addr v1, v2

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    goto :goto_0
.end method

.method static s([B)[B
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static t(J)J
    .locals 9

    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x19

    shr-long v1, p0, v1

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v1, v1, 0x7bc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    const/16 v2, 0x15

    shr-long v2, p0, v2

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    shr-long v1, p0, v8

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    shr-long v2, p0, v7

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    shl-long v2, p0, v6

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3e

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method
