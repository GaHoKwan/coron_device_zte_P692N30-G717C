.class public Lorg/apache/commons/compress/compressors/b/b;
.super Lorg/apache/commons/compress/compressors/a;


# instance fields
.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/b/b;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Lorg/tukaani/xz/XZInputStream;

    invoke-direct {v0, p1}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/b/b;->in:Ljava/io/InputStream;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/tukaani/xz/SingleXZInputStream;

    invoke-direct {v0, p1}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/b/b;->in:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public static a([BI)Z
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v0, v0

    if-ge p1, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    aget-byte v2, p0, v0

    sget-object v3, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/b/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/b/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/b/b;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/b/b;->z(I)V

    return v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/b/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/b/b;->z(I)V

    return v0
.end method

.method public skip(J)J
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/b/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
