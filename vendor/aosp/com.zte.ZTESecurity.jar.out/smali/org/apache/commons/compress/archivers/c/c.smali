.class Lorg/apache/commons/compress/archivers/c/c;
.super Ljava/lang/Object;


# static fields
.field public static final dg:I = 0x200

.field public static final dh:I = 0x2800


# instance fields
.field private final di:I

.field private final dj:[B

.field private dk:I

.field private dl:I

.field private final f:I

.field private inStream:Ljava/io/InputStream;

.field private outStream:Ljava/io/OutputStream;

.field private final recordSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x2800

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/c/c;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/c/c;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/commons/compress/archivers/c/c;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;II)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/c/c;->inStream:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/c/c;->outStream:Ljava/io/OutputStream;

    iput p3, p0, Lorg/apache/commons/compress/archivers/c/c;->f:I

    iput p4, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->f:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/c;->di:I

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->f:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dj:[B

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dk:I

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->di:I

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lorg/apache/commons/compress/archivers/c/c;->dk:I

    iput v2, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x2800

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/c/c;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/c/c;-><init>(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/c/c;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;II)V

    return-void
.end method

.method private ak()Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/c;->inStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/c/c;->f:I

    move v2, v0

    :cond_1
    :goto_0
    if-lez v1, :cond_3

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/c/c;->inStream:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/c/c;->dj:[B

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_4

    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_2
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/c/c;->dj:[B

    add-int/2addr v1, v2

    invoke-static {v3, v2, v1, v0}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_3
    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dk:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    int-to-long v5, v2

    add-long/2addr v5, v3

    long-to-int v2, v5

    int-to-long v5, v1

    sub-long/2addr v5, v3

    long-to-int v1, v5

    iget v5, p0, Lorg/apache/commons/compress/archivers/c/c;->f:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method private an()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->outStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/c;->dj:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/c/c;->f:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iput v3, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dk:I

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dj:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method


# virtual methods
.method public ai()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading (via skip) from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/c/c;->di:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/c;->ak()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    goto :goto_0
.end method

.method public aj()[B
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "input buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/c/c;->di:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/c;->ak()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/c;->dj:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    iget v3, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    goto :goto_0
.end method

.method public al()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dk:I

    return v0
.end method

.method public am()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method ao()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/c;->an()V

    :cond_1
    return-void
.end method

.method public b([BI)V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record has length \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with offset \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' which is less than the record size of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/c/c;->di:I

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/c;->an()V

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dj:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    return-void
.end method

.method public c([B)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/c;->l()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, p1, v1

    if-eqz v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->outStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/c;->ao()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->outStream:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->outStream:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/c/c;->outStream:Ljava/io/OutputStream;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->inStream:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/c/c;->inStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public d([B)V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/c;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record to write has length \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' which is not the record size of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/c/c;->di:I

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/c;->an()V

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/c;->dj:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    iget v3, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    mul-int/2addr v2, v3

    iget v3, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/c;->dl:I

    return-void
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->f:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/c;->recordSize:I

    return v0
.end method
