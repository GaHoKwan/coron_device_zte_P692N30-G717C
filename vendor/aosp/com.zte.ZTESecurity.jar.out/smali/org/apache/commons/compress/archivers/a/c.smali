.class public Lorg/apache/commons/compress/archivers/a/c;
.super Lorg/apache/commons/compress/archivers/b;

# interfaces
.implements Lorg/apache/commons/compress/archivers/a/d;


# instance fields
.field private a:Lorg/apache/commons/compress/archivers/a/b;

.field private closed:Z

.field private crc:J

.field private final in:Ljava/io/InputStream;

.field private je:J

.field private jf:Z

.field private final jg:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/b;-><init>()V

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/c;->closed:Z

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/a/c;->je:J

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/c;->jf:Z

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->jg:[B

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/a/c;->crc:J

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/a/c;->in:Ljava/io/InputStream;

    return-void
.end method

.method private I(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-array v0, p1, [B

    array-length v1, v0

    invoke-direct {p0, v0, v3, v1}, Lorg/apache/commons/compress/archivers/a/c;->h([BII)I

    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method public static a([BI)Z
    .locals 7

    const/16 v6, 0x37

    const/16 v5, 0x30

    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x6

    if-ge p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v2, p0, v0

    const/16 v3, 0x71

    if-ne v2, v3, :cond_2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc7

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    aget-byte v2, p0, v1

    const/16 v3, 0x71

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc7

    if-ne v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    aget-byte v2, p0, v0

    if-ne v2, v5, :cond_0

    aget-byte v2, p0, v1

    if-ne v2, v6, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_0

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v6, :cond_0

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_0

    aget-byte v2, p0, v4

    const/16 v3, 0x31

    if-ne v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    aget-byte v2, p0, v4

    const/16 v3, 0x32

    if-ne v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    aget-byte v2, p0, v4

    if-ne v2, v6, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(IZ)J
    .locals 3

    new-array v0, p1, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/a/c;->h([BII)I

    invoke-static {v0, p2}, Lorg/apache/commons/compress/archivers/a/e;->c([BZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/c;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private bU()Lorg/apache/commons/compress/archivers/a/b;
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v7, 0xb

    const/4 v6, 0x6

    const/16 v5, 0x8

    new-instance v0, Lorg/apache/commons/compress/archivers/a/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/a/b;-><init>(S)V

    invoke-direct {p0, v6, v5}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/a/b;->e(J)V

    invoke-direct {p0, v6, v5}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/a/b;->i(J)V

    invoke-direct {p0, v6, v5}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/a/b;->j(J)V

    :cond_0
    invoke-direct {p0, v6, v5}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->o(J)V

    invoke-direct {p0, v6, v5}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->h(J)V

    invoke-direct {p0, v6, v5}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->k(J)V

    invoke-direct {p0, v6, v5}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->l(J)V

    invoke-direct {p0, v7, v5}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->setTime(J)V

    invoke-direct {p0, v6, v5}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-direct {p0, v7, v5}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/a/b;->setSize(J)V

    long-to-int v3, v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/a/c;->I(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/a/b;->setName(Ljava/lang/String;)V

    cmp-long v1, v1, v8

    if-nez v1, :cond_1

    const-string v1, "TRAILER!!!"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode 0 only allowed in the trailer. Found entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Occured at byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/a/c;->getBytesRead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method private closeEntry()V
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/c;->b()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->jg:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/a/c;->jg:[B

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/a/c;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/c;->jf:Z

    return-void
.end method

.method private final h([BII)I
    .locals 4

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/a/c;->in:Ljava/io/InputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/a/c;->z(I)V

    if-gez v1, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private h(Z)Lorg/apache/commons/compress/archivers/a/b;
    .locals 9

    const-wide/16 v7, 0x0

    const/16 v6, 0x10

    const/16 v5, 0x8

    if-eqz p1, :cond_1

    new-instance v0, Lorg/apache/commons/compress/archivers/a/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/a/b;-><init>(S)V

    :goto_0
    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/a/b;->i(J)V

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/a/b;->j(J)V

    :cond_0
    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->o(J)V

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->h(J)V

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->k(J)V

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->setTime(J)V

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->setSize(J)V

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->f(J)V

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->g(J)V

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->m(J)V

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->n(J)V

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v3

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/a/c;->o(II)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/a/b;->d(J)V

    long-to-int v3, v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/a/c;->I(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/a/b;->setName(Ljava/lang/String;)V

    cmp-long v1, v1, v7

    if-nez v1, :cond_2

    const-string v1, "TRAILER!!!"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode 0 only allowed in the trailer. Found entry name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Occured at byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/a/c;->getBytesRead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/a/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/a/b;-><init>(S)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/a/b;->aY()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/a/c;->skip(I)V

    return-object v0
.end method

.method private i(Z)Lorg/apache/commons/compress/archivers/a/b;
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    new-instance v0, Lorg/apache/commons/compress/archivers/a/b;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/a/b;-><init>(S)V

    invoke-direct {p0, v5, p1}, Lorg/apache/commons/compress/archivers/a/c;->b(IZ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/a/b;->e(J)V

    invoke-direct {p0, v5, p1}, Lorg/apache/commons/compress/archivers/a/c;->b(IZ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/a/b;->i(J)V

    invoke-direct {p0, v5, p1}, Lorg/apache/commons/compress/archivers/a/c;->b(IZ)J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/a/b;->j(J)V

    :cond_0
    invoke-direct {p0, v5, p1}, Lorg/apache/commons/compress/archivers/a/c;->b(IZ)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->o(J)V

    invoke-direct {p0, v5, p1}, Lorg/apache/commons/compress/archivers/a/c;->b(IZ)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->h(J)V

    invoke-direct {p0, v5, p1}, Lorg/apache/commons/compress/archivers/a/c;->b(IZ)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->k(J)V

    invoke-direct {p0, v5, p1}, Lorg/apache/commons/compress/archivers/a/c;->b(IZ)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->l(J)V

    invoke-direct {p0, v6, p1}, Lorg/apache/commons/compress/archivers/a/c;->b(IZ)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/a/b;->setTime(J)V

    invoke-direct {p0, v5, p1}, Lorg/apache/commons/compress/archivers/a/c;->b(IZ)J

    move-result-wide v3

    invoke-direct {p0, v6, p1}, Lorg/apache/commons/compress/archivers/a/c;->b(IZ)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/a/b;->setSize(J)V

    long-to-int v3, v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/a/c;->I(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/a/b;->setName(Ljava/lang/String;)V

    cmp-long v1, v1, v7

    if-nez v1, :cond_1

    const-string v1, "TRAILER!!!"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode 0 only allowed in the trailer. Found entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Occured at byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/a/c;->getBytesRead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/a/b;->aY()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/a/c;->skip(I)V

    return-object v0
.end method

.method private o(II)J
    .locals 3

    new-array v0, p1, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/a/c;->h([BII)I

    invoke-static {v0}, Lorg/apache/commons/compress/a/d;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private skip(I)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    if-lez p1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/archivers/a/c;->h([BII)I

    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/c;->b()V

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/c;->jf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bT()Lorg/apache/commons/compress/archivers/a/b;
    .locals 10

    const-wide/16 v8, 0x71c7

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/c;->b()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/c;->closeEntry()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [B

    array-length v1, v0

    invoke-direct {p0, v0, v4, v1}, Lorg/apache/commons/compress/archivers/a/c;->h([BII)I

    invoke-static {v0, v4}, Lorg/apache/commons/compress/archivers/a/e;->c([BZ)J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-nez v1, :cond_1

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/a/c;->i(Z)Lorg/apache/commons/compress/archivers/a/b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    :goto_0
    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/a/c;->je:J

    iput-boolean v4, p0, Lorg/apache/commons/compress/archivers/a/c;->jf:Z

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/a/c;->crc:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/a/b;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRAILER!!!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v5, p0, Lorg/apache/commons/compress/archivers/a/c;->jf:Z

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-static {v0, v5}, Lorg/apache/commons/compress/archivers/a/e;->c([BZ)J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-nez v1, :cond_2

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/a/c;->i(Z)Lorg/apache/commons/compress/archivers/a/b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    new-array v1, v1, [B

    array-length v2, v1

    invoke-direct {p0, v1, v4, v2}, Lorg/apache/commons/compress/archivers/a/c;->h([BII)I

    const/4 v2, 0x6

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lorg/apache/commons/compress/a/d;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "070701"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/a/c;->h(Z)Lorg/apache/commons/compress/archivers/a/b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    goto :goto_0

    :cond_3
    const-string v1, "070702"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/a/c;->h(Z)Lorg/apache/commons/compress/archivers/a/b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    goto :goto_0

    :cond_4
    const-string v1, "070707"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/c;->bU()Lorg/apache/commons/compress/archivers/a/b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown magic ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]. Occured at byte: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/a/c;->getBytesRead()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    goto :goto_1
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/c;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/c;->closed:Z

    :cond_0
    return-void
.end method

.method public q()Lorg/apache/commons/compress/archivers/c;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/a/c;->bT()Lorg/apache/commons/compress/archivers/a/b;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 9

    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/c;->b()V

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v2, p1

    sub-int/2addr v2, p3

    if-le p2, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/a/c;->jf:Z

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/a/c;->je:J

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/a/b;->getSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/a/b;->aZ()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/a/c;->skip(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/c;->jf:Z

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/a/b;->getFormat()S

    move-result v0

    if-ne v0, v8, :cond_5

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/a/c;->crc:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/a/b;->aR()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CRC Error. Occured at byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/a/c;->getBytesRead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    int-to-long v2, p3

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/a/b;->getSize()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/a/c;->je:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    if-gez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1, p2, v2}, Lorg/apache/commons/compress/archivers/a/c;->h([BII)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/a/c;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/a/b;->getFormat()S

    move-result v2

    if-ne v2, v8, :cond_8

    :goto_1
    if-ge v0, v1, :cond_8

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/a/c;->crc:J

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/a/c;->crc:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/a/c;->je:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/a/c;->je:J

    move v0, v1

    goto/16 :goto_0
.end method

.method public skip(J)J
    .locals 5

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative skip length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/c;->b()V

    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v3, v0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    sub-int v0, v3, v1

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/a/c;->jg:[B

    array-length v4, v4

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/c;->jg:[B

    array-length v0, v0

    :cond_1
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/a/c;->jg:[B

    invoke-virtual {p0, v4, v2, v0}, Lorg/apache/commons/compress/archivers/a/c;->read([BII)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/c;->jf:Z

    :cond_2
    int-to-long v0, v1

    return-wide v0

    :cond_3
    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method
