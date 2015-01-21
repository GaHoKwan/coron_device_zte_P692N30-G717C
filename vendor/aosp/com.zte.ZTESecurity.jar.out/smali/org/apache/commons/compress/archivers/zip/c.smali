.class Lorg/apache/commons/compress/archivers/zip/c;
.super Ljava/io/InputStream;


# instance fields
.field private ce:J

.field private cf:J

.field private cg:Z

.field final synthetic ch:Lorg/apache/commons/compress/archivers/zip/k;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/k;JJ)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/c;->ch:Lorg/apache/commons/compress/archivers/zip/k;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/c;->cg:Z

    iput-wide p4, p0, Lorg/apache/commons/compress/archivers/zip/c;->ce:J

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/c;->cf:J

    return-void
.end method


# virtual methods
.method S()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/c;->cg:Z

    return-void
.end method

.method public read()I
    .locals 7

    const-wide/16 v5, 0x1

    const/4 v0, 0x0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/c;->ce:J

    sub-long v3, v1, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/c;->ce:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/c;->cg:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/c;->cg:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/c;->ch:Lorg/apache/commons/compress/archivers/zip/k;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/k;->b(Lorg/apache/commons/compress/archivers/zip/k;)Ljava/io/RandomAccessFile;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/c;->ch:Lorg/apache/commons/compress/archivers/zip/k;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/k;->b(Lorg/apache/commons/compress/archivers/zip/k;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/c;->cf:J

    add-long v4, v2, v5

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/c;->cf:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/c;->ch:Lorg/apache/commons/compress/archivers/zip/k;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/k;->b(Lorg/apache/commons/compress/archivers/zip/k;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read([BII)I
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/c;->ce:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/c;->cg:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/c;->cg:Z

    aput-byte v0, p1, p2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    if-lez p3, :cond_0

    int-to-long v0, p3

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/c;->ce:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/c;->ce:J

    long-to-int p3, v0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/c;->ch:Lorg/apache/commons/compress/archivers/zip/k;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/k;->b(Lorg/apache/commons/compress/archivers/zip/k;)Ljava/io/RandomAccessFile;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/c;->ch:Lorg/apache/commons/compress/archivers/zip/k;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/k;->b(Lorg/apache/commons/compress/archivers/zip/k;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/c;->cf:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/c;->ch:Lorg/apache/commons/compress/archivers/zip/k;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/k;->b(Lorg/apache/commons/compress/archivers/zip/k;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/c;->cf:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/c;->cf:J

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/c;->ce:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/c;->ce:J

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
