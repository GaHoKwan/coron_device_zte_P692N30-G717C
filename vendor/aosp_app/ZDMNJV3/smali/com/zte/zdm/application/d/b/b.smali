.class public Lcom/zte/zdm/application/d/b/b;
.super Ljava/io/RandomAccessFile;


# static fields
.field private static final a:I = 0xa


# instance fields
.field private b:[B

.field private c:I

.field private d:J

.field private e:Z

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v0, p2, v1}, Lcom/zte/zdm/application/d/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/zte/zdm/application/d/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/zdm/application/d/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zdm/application/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(JJ)J
    .locals 1

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    move-wide p1, p3

    goto :goto_0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/zte/zdm/application/d/b/b;->e:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-super {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    invoke-super {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/d/b/b;->b:[B

    iget v1, p0, Lcom/zte/zdm/application/d/b/b;->f:I

    invoke-super {p0, v0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iput-boolean v4, p0, Lcom/zte/zdm/application/d/b/b;->e:Z

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const-wide/16 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    invoke-super {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->k:J

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->k:J

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    invoke-super {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufbitlen size must >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p3

    iput v0, p0, Lcom/zte/zdm/application/d/b/b;->c:I

    iget v0, p0, Lcom/zte/zdm/application/d/b/b;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zte/zdm/application/d/b/b;->b:[B

    iget v0, p0, Lcom/zte/zdm/application/d/b/b;->c:I

    int-to-long v0, v0

    sub-long/2addr v0, v5

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->d:J

    iput-boolean v4, p0, Lcom/zte/zdm/application/d/b/b;->e:Z

    iput v4, p0, Lcom/zte/zdm/application/d/b/b;->f:I

    iput-wide v2, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    iput-wide v2, p0, Lcom/zte/zdm/application/d/b/b;->h:J

    return-void
.end method

.method private b()I
    .locals 2

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    invoke-super {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/d/b/b;->e:Z

    iget-object v0, p0, Lcom/zte/zdm/application/d/b/b;->b:[B

    invoke-super {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(J)B
    .locals 3

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->h:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/zte/zdm/application/d/b/b;->a()V

    invoke-virtual {p0, p1, p2}, Lcom/zte/zdm/application/d/b/b;->seek(J)V

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->h:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_2
    iput-wide p1, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    iget-object v0, p0, Lcom/zte/zdm/application/d/b/b;->b:[B

    iget-wide v1, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    sub-long v1, p1, v1

    long-to-int v1, v1

    aget-byte v0, v0, v1

    return v0
.end method

.method public a(B)Z
    .locals 2

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/zdm/application/d/b/b;->a(BJ)Z

    move-result v0

    return v0
.end method

.method public a(BJ)Z
    .locals 8

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->h:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/d/b/b;->b:[B

    iget-wide v1, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    sub-long v1, p2, v1

    long-to-int v1, v1

    aput-byte p1, v0, v1

    iput-boolean v3, p0, Lcom/zte/zdm/application/d/b/b;->e:Z

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    add-long/2addr v0, v6

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    iget v0, p0, Lcom/zte/zdm/application/d/b/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/zdm/application/d/b/b;->f:I

    :cond_0
    :goto_0
    iput-wide p2, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    return v3

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/zte/zdm/application/d/b/b;->seek(J)V

    cmp-long v0, p2, v4

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/d/b/b;->b:[B

    iget-wide v1, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    sub-long v1, p2, v1

    long-to-int v1, v1

    aput-byte p1, v0, v1

    :goto_1
    iput-boolean v3, p0, Lcom/zte/zdm/application/d/b/b;->e:Z

    goto :goto_0

    :cond_2
    cmp-long v0, p2, v4

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    :cond_3
    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    add-long/2addr v0, v6

    cmp-long v0, p2, v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/zte/zdm/application/d/b/b;->b:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    iput v3, p0, Lcom/zte/zdm/application/d/b/b;->f:I

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public b(B)Z
    .locals 4

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/zdm/application/d/b/b;->a(BJ)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/d/b/b;->a()V

    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public getFilePointer()J
    .locals 2

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    return-wide v0
.end method

.method public length()J
    .locals 4

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/zte/zdm/application/d/b/b;->k:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zte/zdm/application/d/b/b;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/zdm/application/d/b/b;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 9

    const-wide/16 v7, 0x1

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    sub-long/2addr v0, v7

    iget-wide v2, p0, Lcom/zte/zdm/application/d/b/b;->h:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/zte/zdm/application/d/b/b;->b:[B

    iget-wide v3, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    iget-wide v5, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v2, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    add-long/2addr v0, v7

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/d/b/b;->seek(J)V

    return p3

    :cond_0
    iget-wide v2, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/zte/zdm/application/d/b/b;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    sub-long/2addr v0, v2

    add-long/2addr v0, v7

    long-to-int p3, v0

    :cond_1
    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    invoke-super {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p3

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    sub-long/2addr v0, v7

    goto :goto_0
.end method

.method public seek(J)V
    .locals 6

    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->h:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/zte/zdm/application/d/b/b;->a()V

    cmp-long v0, p1, v2

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->d:J

    and-long/2addr v0, p1

    iput-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    invoke-direct {p0}, Lcom/zte/zdm/application/d/b/b;->b()I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/application/d/b/b;->f:I

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    iget v2, p0, Lcom/zte/zdm/application/d/b/b;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->h:J

    :cond_2
    iput-wide p1, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    return-void

    :cond_3
    cmp-long v0, p1, v2

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    :cond_4
    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    add-long/2addr v0, v4

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :cond_5
    iput-wide p1, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/application/d/b/b;->f:I

    goto :goto_0
.end method

.method public setLength(J)V
    .locals 3

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    :goto_0
    invoke-super {p0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void

    :cond_0
    iput-wide v1, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    goto :goto_0
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/zdm/application/d/b/b;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 9

    const-wide/16 v7, 0x1

    iget-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    sub-long/2addr v0, v7

    iget-wide v2, p0, Lcom/zte/zdm/application/d/b/b;->h:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/zte/zdm/application/d/b/b;->b:[B

    iget-wide v3, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    iget-wide v5, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zte/zdm/application/d/b/b;->e:Z

    iget-wide v2, p0, Lcom/zte/zdm/application/d/b/b;->g:J

    sub-long v2, v0, v2

    add-long/2addr v2, v7

    long-to-int v2, v2

    iput v2, p0, Lcom/zte/zdm/application/d/b/b;->f:I

    :goto_0
    iget-wide v2, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/zte/zdm/application/d/b/b;->i:J

    :cond_0
    add-long/2addr v0, v7

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/d/b/b;->seek(J)V

    return-void

    :cond_1
    iget-wide v2, p0, Lcom/zte/zdm/application/d/b/b;->j:J

    invoke-super {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0
.end method
