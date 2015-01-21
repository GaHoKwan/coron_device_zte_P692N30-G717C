.class public Lorg/apache/commons/compress/archivers/zip/k;
.super Ljava/lang/Object;


# static fields
.field private static final eA:I = 0x2

.field private static final eB:I = 0x3

.field private static final eG:I = 0x2a

#the value of this static final field might be set in the static constructor
.field private static final eH:J = 0x0L

.field private static final eI:I = 0x16

.field private static final eJ:I = 0x10015

.field private static final eK:I = 0x10

.field private static final eL:I = 0x14

.field private static final eM:I = 0x8

.field private static final eN:I = 0x30

.field private static final eO:J = 0x1aL

.field private static final ev:I = 0x1fd

.field static final ew:I = 0xf

.field static final ex:I = 0x8

.field private static final ey:I = 0x0

.field private static final ez:I = 0x1


# instance fields
.field private final be:Lorg/apache/commons/compress/archivers/zip/e;

.field private final bf:Z

.field private closed:Z

.field private final eC:Ljava/util/Map;

.field private final eD:Ljava/util/Map;

.field private final eE:Ljava/lang/String;

.field private final eF:Ljava/io/RandomAccessFile;

.field private final eP:Ljava/util/Comparator;

.field private final encoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/H;->pi:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/l;->e([B)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/compress/archivers/zip/k;->eH:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "UTF8"

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/k;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/k;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 2

    const/16 v1, 0x1fd

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eC:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eD:Ljava/util/Map;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/L;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/L;-><init>(Lorg/apache/commons/compress/archivers/zip/k;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eP:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eE:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/k;->encoding:Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/B;->I(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->be:Lorg/apache/commons/compress/archivers/zip/e;

    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/k;->bf:Z

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/k;->az()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/k;->c(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->closed:Z

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF8"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/k;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/compress/archivers/zip/k;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lorg/apache/commons/compress/archivers/zip/E;Lorg/apache/commons/compress/archivers/zip/d;I)V
    .locals 9

    const-wide v7, 0xffffffffL

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/s;->j:Lorg/apache/commons/compress/archivers/zip/O;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/E;->d(Lorg/apache/commons/compress/archivers/zip/O;)Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/s;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v4

    cmp-long v1, v4, v7

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-nez v4, :cond_4

    move v4, v2

    :goto_1
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/d;->b(Lorg/apache/commons/compress/archivers/zip/d;)J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    move v5, v2

    :goto_2
    const v6, 0xffff

    if-ne p3, v6, :cond_6

    :goto_3
    invoke-virtual {v0, v1, v4, v5, v2}, Lorg/apache/commons/compress/archivers/zip/s;->a(ZZZZ)V

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/s;->bV()Lorg/apache/commons/compress/archivers/zip/y;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/y;->cu()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/E;->setSize(J)V

    :cond_0
    :goto_4
    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/s;->bW()Lorg/apache/commons/compress/archivers/zip/y;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/y;->cu()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/compress/archivers/zip/E;->setCompressedSize(J)V

    :cond_1
    :goto_5
    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/s;->bX()Lorg/apache/commons/compress/archivers/zip/y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/y;->cu()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/d;->a(Lorg/apache/commons/compress/archivers/zip/d;J)J

    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_1

    :cond_5
    move v5, v3

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_0

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lorg/apache/commons/compress/archivers/zip/y;-><init>(J)V

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/s;->a(Lorg/apache/commons/compress/archivers/zip/y;)V

    goto :goto_4

    :cond_8
    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/y;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/s;->b(Lorg/apache/commons/compress/archivers/zip/y;)V

    goto :goto_5
.end method

.method public static a(Lorg/apache/commons/compress/archivers/zip/k;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/k;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(JJ[B)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, p3

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    :goto_0
    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_1
    return v2

    :cond_2
    aget-byte v7, p5, v2

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v6

    aget-byte v7, p5, v3

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v6

    const/4 v7, 0x2

    aget-byte v7, p5, v7

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v6

    const/4 v7, 0x3

    aget-byte v7, p5, v7

    if-ne v6, v7, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    goto :goto_0
.end method

.method private aA()V
    .locals 6

    const-wide/16 v1, 0x2a

    const-wide/32 v3, 0x10029

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/H;->pl:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/k;->a(JJ[B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/k;->aC()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/k;->aB()V

    goto :goto_0
.end method

.method private aB()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/zip/k;->y(I)V

    new-array v0, v4, [B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/y;->t([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    aget-byte v1, v0, v5

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/H;->pk:[B

    aget-byte v2, v2, v5

    if-ne v1, v2, :cond_0

    aget-byte v1, v0, v6

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/H;->pk:[B

    aget-byte v2, v2, v6

    if-ne v1, v2, :cond_0

    aget-byte v1, v0, v7

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/H;->pk:[B

    aget-byte v2, v2, v7

    if-ne v1, v2, :cond_0

    aget-byte v0, v0, v8

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/H;->pk:[B

    aget-byte v1, v1, v8

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive\'s ZIP64 end of central directory locator is corrupt."

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/k;->y(I)V

    new-array v0, v4, [B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/y;->t([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method private aC()V
    .locals 6

    const-wide/16 v1, 0x16

    const-wide/32 v3, 0x10015

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/H;->pj:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/k;->a(JJ[B)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive is not a ZIP archive"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/k;->y(I)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/l;->e([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method private aD()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x4

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-byte v3, v2, v0

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/H;->pg:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private az()Ljava/util/Map;
    .locals 6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/k;->aA()V

    const/4 v0, 0x4

    new-array v3, v0, [B

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/l;->e([B)J

    move-result-wide v0

    sget-wide v4, Lorg/apache/commons/compress/archivers/zip/k;->eH:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/k;->aD()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "central directory is empty, can\'t expand corrupt archive."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    sget-wide v4, Lorg/apache/commons/compress/archivers/zip/k;->eH:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/k;->b(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/l;->e([B)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method static synthetic b(Lorg/apache/commons/compress/archivers/zip/k;)Ljava/io/RandomAccessFile;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method private b(Ljava/util/Map;)V
    .locals 13

    const/4 v12, 0x0

    const/16 v0, 0x2a

    new-array v1, v0, [B

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v0, 0x0

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/E;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/zip/E;-><init>()V

    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/zip/E;->X(I)V

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/zip/v;->e([BI)Lorg/apache/commons/compress/archivers/zip/v;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/v;->cc()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lS:Lorg/apache/commons/compress/archivers/zip/e;

    :goto_0
    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/E;->a(Lorg/apache/commons/compress/archivers/zip/v;)V

    const/4 v3, 0x6

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/E;->setMethod(I)V

    const/16 v3, 0x8

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/zip/l;->c([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/x;->t(J)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/apache/commons/compress/archivers/zip/E;->setTime(J)V

    const/16 v3, 0xc

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/zip/l;->c([BI)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/apache/commons/compress/archivers/zip/E;->setCrc(J)V

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/zip/l;->c([BI)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/apache/commons/compress/archivers/zip/E;->setCompressedSize(J)V

    const/16 v3, 0x14

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/zip/l;->c([BI)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/apache/commons/compress/archivers/zip/E;->setSize(J)V

    const/16 v3, 0x18

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v3

    const/16 v5, 0x1a

    invoke-static {v1, v5}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v5

    const/16 v6, 0x1c

    invoke-static {v1, v6}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v6

    const/16 v7, 0x1e

    invoke-static {v1, v7}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v7

    const/16 v8, 0x20

    invoke-static {v1, v8}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v8

    invoke-virtual {v2, v8}, Lorg/apache/commons/compress/archivers/zip/E;->V(I)V

    const/16 v8, 0x22

    invoke-static {v1, v8}, Lorg/apache/commons/compress/archivers/zip/l;->c([BI)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/apache/commons/compress/archivers/zip/E;->u(J)V

    const/16 v8, 0x26

    new-array v3, v3, [B

    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-interface {v0, v3}, Lorg/apache/commons/compress/archivers/zip/e;->b([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v3}, Lorg/apache/commons/compress/archivers/zip/E;->c(Ljava/lang/String;[B)V

    new-instance v9, Lorg/apache/commons/compress/archivers/zip/d;

    invoke-direct {v9, v12}, Lorg/apache/commons/compress/archivers/zip/d;-><init>(Lorg/apache/commons/compress/archivers/zip/K;)V

    invoke-static {v1, v8}, Lorg/apache/commons/compress/archivers/zip/l;->c([BI)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lorg/apache/commons/compress/archivers/zip/d;->a(Lorg/apache/commons/compress/archivers/zip/d;J)J

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eC:Ljava/util/Map;

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eD:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [B

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/archivers/zip/E;->y([B)V

    invoke-direct {p0, v2, v9, v7}, Lorg/apache/commons/compress/archivers/zip/k;->a(Lorg/apache/commons/compress/archivers/zip/E;Lorg/apache/commons/compress/archivers/zip/d;I)V

    new-array v1, v6, [B

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/zip/e;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/zip/E;->setComment(Ljava/lang/String;)V

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->bf:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/j;

    invoke-direct {v0, v3, v1, v12}, Lorg/apache/commons/compress/archivers/zip/j;-><init>([B[BLorg/apache/commons/compress/archivers/zip/K;)V

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->be:Lorg/apache/commons/compress/archivers/zip/e;

    goto/16 :goto_0
.end method

.method static synthetic c(Lorg/apache/commons/compress/archivers/zip/k;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eC:Ljava/util/Map;

    return-object v0
.end method

.method private c(Ljava/util/Map;)V
    .locals 13

    const-wide/16 v11, 0x1a

    const-wide/16 v9, 0x2

    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eC:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eC:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/E;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/d;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/d;->b(Lorg/apache/commons/compress/archivers/zip/d;)J

    move-result-wide v5

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    add-long v7, v5, v11

    invoke-virtual {v2, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x2

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/O;->D([B)I

    move-result v3

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/O;->D([B)I

    move-result v7

    move v2, v3

    :goto_1
    if-lez v2, :cond_1

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v8

    if-gtz v8, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to skip file name in local file header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sub-int/2addr v2, v8

    goto :goto_1

    :cond_1
    new-array v2, v7, [B

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/zip/E;->setExtra([B)V

    add-long/2addr v5, v11

    add-long/2addr v5, v9

    add-long/2addr v5, v9

    int-to-long v2, v3

    add-long/2addr v2, v5

    int-to-long v5, v7

    add-long/2addr v2, v5

    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/archivers/zip/d;->b(Lorg/apache/commons/compress/archivers/zip/d;J)J

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/j;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/j;->a(Lorg/apache/commons/compress/archivers/zip/j;)[B

    move-result-object v5

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/j;->b(Lorg/apache/commons/compress/archivers/zip/j;)[B

    move-result-object v2

    invoke-static {v1, v5, v2}, Lorg/apache/commons/compress/archivers/zip/x;->a(Lorg/apache/commons/compress/archivers/zip/E;[B[B)V

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/k;->eD:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/k;->eD:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/k;->eC:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private y(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v1

    if-gtz v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public ax()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public ay()Ljava/util/Enumeration;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/zip/E;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/E;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/k;->eP:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/apache/commons/compress/archivers/zip/E;)Z
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/x;->d(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v0

    return v0
.end method

.method public c(Lorg/apache/commons/compress/archivers/zip/E;)Ljava/io/InputStream;
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eC:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/x;->g(Lorg/apache/commons/compress/archivers/zip/E;)V

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/d;->a(Lorg/apache/commons/compress/archivers/zip/d;)J

    move-result-wide v2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/c;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/c;-><init>(Lorg/apache/commons/compress/archivers/zip/k;JJ)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found unsupported compression method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/c;->S()V

    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/K;

    invoke-direct {v1, p0, v0, v2, v2}, Lorg/apache/commons/compress/archivers/zip/K;-><init>(Lorg/apache/commons/compress/archivers/zip/k;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V

    move-object v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->closed:Z

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eF:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->closed:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up unclosed ZipFile for archive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/k;->eE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/k;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/E;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->eD:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/E;

    return-object v0
.end method
