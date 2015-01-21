.class public abstract Lorg/apache/commons/compress/archivers/b;
.super Ljava/io/InputStream;


# static fields
.field private static final dT:I = 0xff


# instance fields
.field private bytesRead:J

.field private jh:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/b;->jh:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/b;->bytesRead:J

    return-void
.end method


# virtual methods
.method protected b(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/b;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/b;->bytesRead:J

    :cond_0
    return-void
.end method

.method public b(Lorg/apache/commons/compress/archivers/c;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBytesRead()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/b;->bytesRead:J

    return-wide v0
.end method

.method public getCount()I
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/b;->bytesRead:J

    long-to-int v0, v0

    return v0
.end method

.method public abstract q()Lorg/apache/commons/compress/archivers/c;
.end method

.method protected q(J)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/b;->bytesRead:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/b;->bytesRead:J

    return-void
.end method

.method public read()I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/b;->jh:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/commons/compress/archivers/b;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/b;->jh:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method protected z(I)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/b;->b(J)V

    return-void
.end method
