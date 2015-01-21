.class Ljava/util/zip/ZipFile$RAFStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RAFStream"
.end annotation


# instance fields
.field mLength:J

.field mOffset:J

.field mSharedRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;J)V
    .locals 2
    .parameter "raf"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 416
    iput-object p1, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    .line 417
    iput-wide p2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    .line 418
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    .line 419
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 9
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    monitor-enter v2

    .line 431
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    iget-wide v3, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 432
    int-to-long v3, p3

    iget-wide v5, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v7, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 433
    iget-wide v3, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v5, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long/2addr v3, v5

    long-to-int p3, v3

    .line 435
    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 436
    .local v0, count:I
    if-lez v0, :cond_1

    .line 437
    iget-wide v3, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    .line 438
    monitor-exit v2

    .line 440
    .end local v0           #count:I
    :goto_0
    return v0

    .restart local v0       #count:I
    :cond_1
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_0

    .line 442
    .end local v0           #count:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public skip(J)J
    .locals 4
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 448
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long p1, v0, v2

    .line 450
    :cond_0
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    .line 451
    return-wide p1
.end method
