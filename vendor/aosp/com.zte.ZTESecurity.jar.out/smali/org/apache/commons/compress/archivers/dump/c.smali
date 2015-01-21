.class Lorg/apache/commons/compress/archivers/dump/c;
.super Ljava/io/FilterInputStream;


# instance fields
.field private bytesRead:J

.field private dj:[B

.field private dk:I

.field private ep:I

.field private eq:Z

.field private f:I

.field private recordSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/16 v1, 0x400

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->dj:[B

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->dk:I

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->recordSize:I

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->eq:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->bytesRead:J

    return-void
.end method

.method private d(Z)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->in:Ljava/io/InputStream;

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "input buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->eq:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->dk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->dj:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/dump/c;->f([BII)Z

    move-result v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->bytesRead:J

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->bytesRead:J

    :goto_0
    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->dk:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->dk:I

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    :goto_1
    return v0

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->dj:[B

    const/4 v3, 0x4

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/commons/compress/archivers/dump/c;->f([BII)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->bytesRead:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->bytesRead:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->dj:[B

    invoke-static {v2, v1}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-ne v3, v0, :cond_4

    :goto_2
    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->dj:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/dump/c;->f([BII)Z

    move-result v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->bytesRead:J

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->bytesRead:J

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    shr-int/lit8 v0, v2, 0x1

    and-int/lit8 v3, v0, 0x7

    shr-int/lit8 v0, v2, 0x4

    const v2, 0xfffffff

    and-int/2addr v2, v0

    new-array v4, v2, [B

    invoke-direct {p0, v4, v1, v2}, Lorg/apache/commons/compress/archivers/dump/c;->f([BII)Z

    move-result v0

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/dump/c;->bytesRead:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/dump/c;->bytesRead:J

    if-nez p1, :cond_6

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->dj:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    :cond_6
    sget-object v2, Lorg/apache/commons/compress/archivers/dump/d;->iZ:[I

    and-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->T(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>()V

    throw v0

    :pswitch_0
    :try_start_0
    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2}, Ljava/util/zip/Inflater;-><init>()V

    const/4 v3, 0x0

    array-length v5, v4

    invoke-virtual {v2, v4, v3, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/c;->dj:[B

    invoke-virtual {v2, v3}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    if-eq v3, v4, :cond_7

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;

    const-string v2, "bad data"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string v1, "BZLIB2"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string v1, "LZO"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private f([BII)Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->in:Ljava/io/InputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw v0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 5

    const/4 v4, 0x0

    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/dump/c;->eq:Z

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->recordSize:I

    mul-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->dj:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->dj:[B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->dj:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->recordSize:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->dj:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->recordSize:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/c;->recordSize:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/dump/c;->f([BII)Z

    iput v4, p0, Lorg/apache/commons/compress/archivers/dump/c;->dk:I

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->recordSize:I

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    return-void
.end method

.method public aj()[B
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->recordSize:I

    new-array v0, v0, [B

    const/4 v1, -0x1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/commons/compress/archivers/dump/c;->read([BII)I

    move-result v2

    if-ne v1, v2, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public ar()[B
    .locals 5

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/c;->d(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->recordSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->dj:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public available()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->bytesRead:J

    return-wide v0
.end method

.method public read()I
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "all reads must be multiple of record size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->recordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->recordSize:I

    rem-int v0, p3, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "all reads must be multiple of record size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->recordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/c;->d(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    sub-int v2, p3, v1

    add-int/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    if-gt v0, v2, :cond_2

    sub-int v0, p3, v1

    :goto_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->dj:[B

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    add-int/2addr v1, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    sub-int/2addr v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public skip(J)J
    .locals 6

    const-wide/16 v2, 0x0

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->recordSize:I

    int-to-long v0, v0

    rem-long v0, p1, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "all reads must be multiple of record size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/c;->recordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    int-to-long v0, v0

    sub-long v4, p1, v2

    add-long/2addr v0, v4

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    sub-long v0, p1, v2

    :goto_0
    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    long-to-int v4, v4

    iput v4, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    add-long/2addr v2, v0

    :cond_1
    cmp-long v0, v2, p1

    if-gez v0, :cond_4

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    if-ne v0, v1, :cond_0

    sub-long v0, p1, v2

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/c;->d(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_2
    return-wide v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/c;->f:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/c;->ep:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    :cond_4
    move-wide v0, v2

    goto :goto_2
.end method
