.class public Lorg/apache/commons/compress/archivers/zip/b;
.super Lorg/apache/commons/compress/archivers/b;


# static fields
.field private static final bl:I = 0x1e

.field private static final bm:J = 0x100000000L

.field private static final bn:[B

.field private static final bo:[B

.field private static final bp:[B


# instance fields
.field private final be:Lorg/apache/commons/compress/archivers/zip/e;

.field private final bf:Z

.field private final bg:Lorg/apache/commons/compress/archivers/zip/G;

.field private bh:Lorg/apache/commons/compress/archivers/zip/M;

.field private bi:Z

.field private bj:Ljava/io/ByteArrayInputStream;

.field private bk:Z

.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final in:Ljava/io/InputStream;

.field private final inf:Ljava/util/zip/Inflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/l;->fa:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/b;->bn:[B

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/l;->eZ:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/b;->bo:[B

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/l;->fb:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/b;->bp:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const-string v0, "UTF8"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/b;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/zip/b;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;ZZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/b;-><init>()V

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->inf:Ljava/util/zip/Inflater;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->crc:Ljava/util/zip/CRC32;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/G;

    invoke-direct {v0, v3}, Lorg/apache/commons/compress/archivers/zip/G;-><init>(Lorg/apache/commons/compress/archivers/zip/q;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->closed:Z

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bi:Z

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bj:Ljava/io/ByteArrayInputStream;

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bk:Z

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/B;->I(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->be:Lorg/apache/commons/compress/archivers/zip/e;

    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bf:Z

    new-instance v0, Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->in:Ljava/io/InputStream;

    iput-boolean p4, p0, Lorg/apache/commons/compress/archivers/zip/b;->bk:Z

    return-void
.end method

.method private M()V
    .locals 9

    const-wide/16 v7, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/M;->e(Lorg/apache/commons/compress/archivers/zip/M;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    cmp-long v2, v0, v7

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v5

    array-length v5, v5

    int-to-long v5, v5

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v7

    if-gez v4, :cond_0

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated ZIP entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/zip/b;->b(J)V

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private N()J
    .locals 8

    const-wide v6, 0x100000000L

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/M;->e(Lorg/apache/commons/compress/archivers/zip/M;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    :goto_0
    add-long v2, v0, v6

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/M;->e(Lorg/apache/commons/compress/archivers/zip/M;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    add-long/2addr v0, v6

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private O()V
    .locals 6

    const/4 v5, 0x4

    const/16 v4, 0x8

    new-array v1, v5, [B

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/b;->readFully([B)V

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/l;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;-><init>([B)V

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/l;->fb:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/zip/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/b;->readFully([B)V

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/l;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;-><init>([B)V

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/l;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/E;->setCrc(J)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/b;->readFully([B)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/l;

    invoke-direct {v1, v0, v4}, Lorg/apache/commons/compress/archivers/zip/l;-><init>([BI)V

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/l;->eZ:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/zip/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/l;->fa:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/zip/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0, v0, v4, v4}, Lorg/apache/commons/compress/archivers/zip/b;->e([BII)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/l;->e([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/E;->setCompressedSize(J)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-static {v0, v5}, Lorg/apache/commons/compress/archivers/zip/l;->c([BI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/E;->setSize(J)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/y;->t([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/E;->setCompressedSize(J)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-static {v0, v4}, Lorg/apache/commons/compress/archivers/zip/y;->f([BI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/E;->setSize(J)V

    goto :goto_0
.end method

.method private P()V
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->c(Lorg/apache/commons/compress/archivers/zip/M;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    :goto_0
    move v2, v1

    :cond_0
    :goto_1
    if-nez v2, :cond_4

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/b;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v5

    rsub-int v6, v1, 0x200

    invoke-virtual {v4, v5, v1, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Truncated ZIP file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0xc

    goto :goto_0

    :cond_2
    add-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    add-int/2addr v1, v4

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3, v1, v4, v0}, Lorg/apache/commons/compress/archivers/zip/b;->a(Ljava/io/ByteArrayOutputStream;III)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v3, v1, v4, v0}, Lorg/apache/commons/compress/archivers/zip/b;->b(Ljava/io/ByteArrayOutputStream;III)I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bj:Ljava/io/ByteArrayInputStream;

    return-void
.end method

.method private a(Lorg/apache/commons/compress/archivers/zip/l;Lorg/apache/commons/compress/archivers/zip/l;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/s;->j:Lorg/apache/commons/compress/archivers/zip/O;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/E;->d(Lorg/apache/commons/compress/archivers/zip/O;)Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/s;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lorg/apache/commons/compress/archivers/zip/M;->b(Lorg/apache/commons/compress/archivers/zip/M;Z)Z

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/M;->b(Lorg/apache/commons/compress/archivers/zip/M;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/M;->c(Lorg/apache/commons/compress/archivers/zip/M;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/l;->fc:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {p2, v1}, Lorg/apache/commons/compress/archivers/zip/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/l;->fc:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/archivers/zip/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/s;->bW()Lorg/apache/commons/compress/archivers/zip/y;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/y;->cu()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/E;->setCompressedSize(J)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/s;->bV()Lorg/apache/commons/compress/archivers/zip/y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/y;->cu()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/E;->setSize(J)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/l;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/E;->setCompressedSize(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/l;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/E;->setSize(J)V

    goto :goto_1
.end method

.method private a(Ljava/io/ByteArrayOutputStream;III)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    move v3, v4

    move v0, v4

    move v1, v4

    :goto_0
    if-nez v1, :cond_5

    add-int/lit8 v5, p3, -0x4

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v5

    aget-byte v5, v5, v3

    sget-object v6, Lorg/apache/commons/compress/archivers/zip/b;->bn:[B

    aget-byte v6, v6, v4

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    aget-byte v5, v5, v6

    sget-object v6, Lorg/apache/commons/compress/archivers/zip/b;->bn:[B

    aget-byte v6, v6, v2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v5

    add-int/lit8 v6, v3, 0x2

    aget-byte v5, v5, v6

    sget-object v6, Lorg/apache/commons/compress/archivers/zip/b;->bn:[B

    aget-byte v6, v6, v7

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v5

    add-int/lit8 v6, v3, 0x3

    aget-byte v5, v5, v6

    sget-object v6, Lorg/apache/commons/compress/archivers/zip/b;->bn:[B

    aget-byte v6, v6, v8

    if-eq v5, v6, :cond_1

    :cond_0
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v5

    aget-byte v5, v5, v3

    sget-object v6, Lorg/apache/commons/compress/archivers/zip/b;->bo:[B

    aget-byte v6, v6, v7

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v5

    add-int/lit8 v6, v3, 0x3

    aget-byte v5, v5, v6

    sget-object v6, Lorg/apache/commons/compress/archivers/zip/b;->bo:[B

    aget-byte v6, v6, v8

    if-ne v5, v6, :cond_4

    :cond_1
    add-int v0, p2, p3

    sub-int/2addr v0, v3

    sub-int/2addr v0, p4

    move v1, v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v5

    add-int v6, p2, p3

    sub-int/2addr v6, v0

    invoke-direct {p0, v5, v6, v0}, Lorg/apache/commons/compress/archivers/zip/b;->e([BII)V

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v5

    invoke-virtual {p1, v5, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/b;->O()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v5

    add-int/lit8 v6, v3, 0x2

    aget-byte v5, v5, v6

    sget-object v6, Lorg/apache/commons/compress/archivers/zip/b;->bp:[B

    aget-byte v6, v6, v7

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v5

    add-int/lit8 v6, v3, 0x3

    aget-byte v5, v5, v6

    sget-object v6, Lorg/apache/commons/compress/archivers/zip/b;->bp:[B

    aget-byte v6, v6, v8

    if-ne v5, v6, :cond_2

    add-int v0, p2, p3

    sub-int/2addr v0, v3

    move v1, v2

    goto :goto_1

    :cond_5
    return v1
.end method

.method private a(Lorg/apache/commons/compress/archivers/zip/E;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bk:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cN()Lorg/apache/commons/compress/archivers/zip/v;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/v;->cd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

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

.method public static a([BI)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/H;->pg:[B

    array-length v1, v1

    if-ge p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/H;->pg:[B

    invoke-static {p0, v1}, Lorg/apache/commons/compress/archivers/zip/b;->a([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/H;->pj:[B

    invoke-static {p0, v1}, Lorg/apache/commons/compress/archivers/zip/b;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a([B[B)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private b(Ljava/io/ByteArrayOutputStream;III)I
    .locals 5

    const/4 v4, 0x0

    add-int v0, p2, p3

    sub-int/2addr v0, p4

    add-int/lit8 v0, v0, -0x3

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v1

    invoke-virtual {p1, v1, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v2

    add-int/lit8 v3, p4, 0x3

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p4, 0x3

    :goto_0
    return v0

    :cond_0
    add-int v0, p2, p3

    goto :goto_0
.end method

.method private c([BII)I
    .locals 7

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/M;->b(Lorg/apache/commons/compress/archivers/zip/M;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bj:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/b;->P()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bj:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p3

    :goto_0
    return p3

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/M;->d(Lorg/apache/commons/compress/archivers/zip/M;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-ltz v3, :cond_2

    move p3, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/G;->b(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/G;->c(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v4

    if-lt v3, v4, :cond_4

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;I)I

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/b;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/G;->b(Lorg/apache/commons/compress/archivers/zip/G;I)I

    move-result v3

    if-ne v3, v0, :cond_3

    move p3, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/G;->c(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/b;->z(I)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/G;->c(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;J)J

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/G;->c(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v0

    if-le p3, v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/G;->c(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v0

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/G;->b(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v3

    sub-int p3, v0, v3

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->d(Lorg/apache/commons/compress/archivers/zip/M;)J

    move-result-wide v3

    sub-long v3, v1, v3

    int-to-long v5, p3

    cmp-long v0, v3, v5

    if-gez v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->d(Lorg/apache/commons/compress/archivers/zip/M;)J

    move-result-wide v3

    sub-long v0, v1, v3

    long-to-int p3, v0

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/G;->b(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v0, p3}, Lorg/apache/commons/compress/archivers/zip/G;->c(Lorg/apache/commons/compress/archivers/zip/G;I)I

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    int-to-long v1, p3

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/M;->b(Lorg/apache/commons/compress/archivers/zip/M;J)J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    goto/16 :goto_0
.end method

.method private closeEntry()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "The stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->e(Lorg/apache/commons/compress/archivers/zip/M;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->b(Lorg/apache/commons/compress/archivers/zip/M;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/b;->M()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bj:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->b(Lorg/apache/commons/compress/archivers/zip/M;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/b;->O()V

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/G;->d(Lorg/apache/commons/compress/archivers/zip/G;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/b;->bj:Ljava/io/ByteArrayInputStream;

    goto :goto_0

    :cond_4
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/b;->skip(J)J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/b;->N()J

    move-result-wide v0

    :goto_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/M;->e(Lorg/apache/commons/compress/archivers/zip/M;)J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-int v0, v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/G;->c(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/commons/compress/archivers/zip/b;->e([BII)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->d(Lorg/apache/commons/compress/archivers/zip/M;)J

    move-result-wide v0

    goto :goto_2
.end method

.method private d([BII)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/b;->fill()V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/G;->c(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/G;->c(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;J)J

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/zip/ZipException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/G;->c(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v2

    if-ne v2, v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Truncated ZIP file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    move v0, v1

    goto :goto_0
.end method

.method private e([BII)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->unread([BII)V

    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/b;->q(J)V

    return-void
.end method

.method private fill()V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "The stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/G;->b(Lorg/apache/commons/compress/archivers/zip/G;I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/G;->c(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/b;->z(I)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->inf:Ljava/util/zip/Inflater;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/G;->a(Lorg/apache/commons/compress/archivers/zip/G;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bg:Lorg/apache/commons/compress/archivers/zip/G;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/G;->c(Lorg/apache/commons/compress/archivers/zip/G;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    :cond_1
    return-void
.end method

.method private readFully([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->in:Ljava/io/InputStream;

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/b;->z(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public L()Lorg/apache/commons/compress/archivers/zip/E;
    .locals 9

    const/16 v8, 0x1a

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->closed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bi:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/b;->closeEntry()V

    :cond_2
    const/16 v0, 0x1e

    new-array v4, v0, [B

    :try_start_0
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/zip/b;->readFully([B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/l;

    invoke-direct {v0, v4}, Lorg/apache/commons/compress/archivers/zip/l;-><init>([B)V

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/l;->eZ:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bi:Z

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/l;->fa:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/M;

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/M;-><init>(Lorg/apache/commons/compress/archivers/zip/q;)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v4, v0}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v0

    const/4 v1, 0x6

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v3

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v3, v0}, Lorg/apache/commons/compress/archivers/zip/E;->X(I)V

    invoke-static {v4, v1}, Lorg/apache/commons/compress/archivers/zip/v;->e([BI)Lorg/apache/commons/compress/archivers/zip/v;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/v;->cc()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lS:Lorg/apache/commons/compress/archivers/zip/e;

    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/v;->cd()Z

    move-result v6

    invoke-static {v3, v6}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;Z)Z

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/archivers/zip/E;->a(Lorg/apache/commons/compress/archivers/zip/v;)V

    const/16 v1, 0x8

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v3

    invoke-static {v4, v1}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/archivers/zip/E;->setMethod(I)V

    const/16 v1, 0xa

    invoke-static {v4, v1}, Lorg/apache/commons/compress/archivers/zip/l;->c([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/x;->t(J)J

    move-result-wide v6

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lorg/apache/commons/compress/archivers/zip/E;->setTime(J)V

    const/16 v1, 0xe

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/M;->b(Lorg/apache/commons/compress/archivers/zip/M;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v3

    invoke-static {v4, v1}, Lorg/apache/commons/compress/archivers/zip/l;->c([BI)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/zip/E;->setCrc(J)V

    const/16 v3, 0x12

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/l;

    invoke-direct {v1, v4, v3}, Lorg/apache/commons/compress/archivers/zip/l;-><init>([BI)V

    const/16 v6, 0x16

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/l;

    invoke-direct {v3, v4, v6}, Lorg/apache/commons/compress/archivers/zip/l;-><init>([BI)V

    :goto_2
    invoke-static {v4, v8}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v6

    const/16 v7, 0x1c

    invoke-static {v4, v7}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v4

    new-array v6, v6, [B

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/archivers/zip/b;->readFully([B)V

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v7

    invoke-interface {v0, v6}, Lorg/apache/commons/compress/archivers/zip/e;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v6}, Lorg/apache/commons/compress/archivers/zip/E;->c(Ljava/lang/String;[B)V

    new-array v0, v4, [B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/b;->readFully([B)V

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/commons/compress/archivers/zip/E;->setExtra([B)V

    if-nez v5, :cond_4

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bf:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-static {v0, v6, v2}, Lorg/apache/commons/compress/archivers/zip/x;->a(Lorg/apache/commons/compress/archivers/zip/E;[B[B)V

    :cond_4
    invoke-direct {p0, v3, v1}, Lorg/apache/commons/compress/archivers/zip/b;->a(Lorg/apache/commons/compress/archivers/zip/l;Lorg/apache/commons/compress/archivers/zip/l;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->be:Lorg/apache/commons/compress/archivers/zip/e;

    goto/16 :goto_1

    :cond_6
    move-object v1, v2

    move-object v3, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/commons/compress/archivers/c;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/apache/commons/compress/archivers/zip/E;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/E;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/x;->d(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/b;->a(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->closed:Z

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    :cond_0
    return-void
.end method

.method public q()Lorg/apache/commons/compress/archivers/c;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/b;->L()Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 3

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "The stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    array-length v0, p1

    if-gt p2, v0, :cond_5

    if-ltz p3, :cond_5

    if-ltz p2, :cond_5

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/x;->g(Lorg/apache/commons/compress/archivers/zip/E;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/b;->a(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/i;->em:Lorg/apache/commons/compress/archivers/zip/i;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/i;Lorg/apache/commons/compress/archivers/zip/E;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->bh:Lorg/apache/commons/compress/archivers/zip/M;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/M;->a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/b;->c([BII)I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/b;->d([BII)I

    move-result v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .locals 8

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_3

    const/16 v0, 0x400

    new-array v4, v0, [B

    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_2

    sub-long v0, p1, v2

    const/4 v5, 0x0

    array-length v6, v4

    int-to-long v6, v6

    cmp-long v6, v6, v0

    if-lez v6, :cond_0

    :goto_1
    long-to-int v0, v0

    invoke-virtual {p0, v4, v5, v0}, Lorg/apache/commons/compress/archivers/zip/b;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-wide v0, v2

    :goto_2
    return-wide v0

    :cond_0
    array-length v0, v4

    int-to-long v0, v0

    goto :goto_1

    :cond_1
    int-to-long v0, v0

    add-long/2addr v2, v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
