.class public Lorg/apache/commons/compress/a/b;
.super Ljava/io/FilterInputStream;


# instance fields
.field private bytesRead:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected final b(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/a/b;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/a/b;->bytesRead:J

    :cond_0
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/a/b;->bytesRead:J

    return-wide v0
.end method

.method public read()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/a/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/a/b;->b(J)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/a/b;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/a/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/a/b;->b(J)V

    :cond_0
    return v0
.end method
