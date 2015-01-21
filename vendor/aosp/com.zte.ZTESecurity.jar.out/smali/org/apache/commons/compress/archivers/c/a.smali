.class public Lorg/apache/commons/compress/archivers/c/a;
.super Lorg/apache/commons/compress/archivers/b;


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final q:I = 0x100


# instance fields
.field private r:Z

.field private s:J

.field private t:J

.field private u:[B

.field protected final v:Lorg/apache/commons/compress/archivers/c/c;

.field private w:Lorg/apache/commons/compress/archivers/c/f;

.field private final x:Lorg/apache/commons/compress/archivers/zip/e;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/c/a;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/c/a;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/c/a;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/b;-><init>()V

    new-instance v0, Lorg/apache/commons/compress/archivers/c/c;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/c/c;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->v:Lorg/apache/commons/compress/archivers/c/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->u:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/a;->r:Z

    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/B;->I(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->x:Lorg/apache/commons/compress/archivers/zip/e;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/compress/archivers/c/a;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/c/a;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 7

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "path"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/c/f;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "linkpath"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/c/f;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "gid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/c/f;->b(I)V

    goto :goto_0

    :cond_3
    const-string v3, "gname"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/c/f;->u(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "uid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/c/f;->setUserId(I)V

    goto :goto_0

    :cond_5
    const-string v3, "uname"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/c/f;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v3, "size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/compress/archivers/c/f;->setSize(J)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "mtime"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/compress/archivers/c/f;->p(J)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "SCHILY.devminor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/c/f;->G(I)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "SCHILY.devmajor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/c/f;->F(I)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public static a([BI)Z
    .locals 6

    const/16 v5, 0x101

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/16 v3, 0x107

    const/4 v2, 0x2

    const/16 v1, 0x109

    if-ge p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "ustar\u0000"

    invoke-static {v1, p0, v5, v4}, Lorg/apache/commons/compress/a/d;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "00"

    invoke-static {v1, p0, v3, v2}, Lorg/apache/commons/compress/a/d;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const-string v1, "ustar "

    invoke-static {v1, p0, v5, v4}, Lorg/apache/commons/compress/a/d;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " \u0000"

    invoke-static {v1, p0, v3, v2}, Lorg/apache/commons/compress/a/d;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0\u0000"

    invoke-static {v1, p0, v3, v2}, Lorg/apache/commons/compress/a/d;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const-string v1, "ustar\u0000"

    invoke-static {v1, p0, v5, v4}, Lorg/apache/commons/compress/a/d;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u0000\u0000"

    invoke-static {v1, p0, v3, v2}, Lorg/apache/commons/compress/a/d;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()[B
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/c/a;->r:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->v:Lorg/apache/commons/compress/archivers/c/c;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/c/c;->aj()[B

    move-result-object v1

    if-nez v1, :cond_3

    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/c/a;->r:Z

    :cond_2
    :goto_1
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/c/a;->r:Z

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/c/a;->v:Lorg/apache/commons/compress/archivers/c/c;

    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/archivers/c/c;->c([B)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/c/a;->r:Z

    goto :goto_1
.end method

.method private o()V
    .locals 1

    invoke-virtual {p0, p0}, Lorg/apache/commons/compress/archivers/c/a;->a(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/a;->q()Lorg/apache/commons/compress/archivers/c;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/c/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/c/f;->aw()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/a;->n()[B

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/c/a;->r:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Lorg/apache/commons/compress/archivers/c/d;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/c/d;-><init>([B)V

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/c/d;->aw()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 10

    const/4 v1, 0x0

    const/4 v9, -0x1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v9, :cond_4

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x20

    if-ne v3, v5, :cond_3

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v9, :cond_4

    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0x3d

    if-ne v3, v6, :cond_2

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sub-int v6, v2, v0

    new-array v6, v6, [B

    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    sub-int v8, v2, v0

    if-eq v7, v8, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read Paxheader. Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes, read "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v7, Ljava/lang/String;

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    const-string v2, "UTF-8"

    invoke-direct {v7, v6, v1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    :goto_2
    if-ne v0, v9, :cond_0

    return-object v4

    :cond_2
    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_3
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method protected final a(Lorg/apache/commons/compress/archivers/c/f;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    return-void
.end method

.method public available()I
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/c/a;->s:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/c/a;->t:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/c/a;->s:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/c/a;->t:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/c/a;->r:Z

    return-void
.end method

.method public b(Lorg/apache/commons/compress/archivers/c;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/apache/commons/compress/archivers/c/f;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/c/f;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->by()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->v:Lorg/apache/commons/compress/archivers/c/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/c/c;->close()V

    return-void
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->v:Lorg/apache/commons/compress/archivers/c/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/c/c;->l()I

    move-result v0

    return v0
.end method

.method public m()Lorg/apache/commons/compress/archivers/c/f;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/c/a;->r:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    if-eqz v1, :cond_4

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/c/a;->s:J

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/c/a;->t:J

    sub-long/2addr v1, v3

    :goto_1
    cmp-long v3, v1, v6

    if-lez v3, :cond_3

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/archivers/c/a;->skip(J)J

    move-result-wide v3

    cmp-long v5, v3, v6

    if-gtz v5, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to skip current tar entry"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sub-long/2addr v1, v3

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->u:[B

    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/a;->n()[B

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/c/a;->r:Z

    if-eqz v2, :cond_5

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    goto :goto_0

    :cond_5
    :try_start_0
    new-instance v2, Lorg/apache/commons/compress/archivers/c/f;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/c/a;->x:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/compress/archivers/c/f;-><init>([BLorg/apache/commons/compress/archivers/zip/e;)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/c/a;->t:J

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/c/f;->getSize()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/c/a;->s:J

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/c/f;->bz()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x100

    new-array v2, v2, [B

    :goto_2
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/c/a;->read([B)I

    move-result v3

    if-ltz v3, :cond_6

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error detected parsing the header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/a;->q()Lorg/apache/commons/compress/archivers/c;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/c/f;->setName(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/c/f;->bA()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/a;->o()V

    :cond_9
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/c/f;->by()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/a;->p()V

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/c/f;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c/a;->s:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    goto/16 :goto_0
.end method

.method public q()Lorg/apache/commons/compress/archivers/c;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/a;->m()Lorg/apache/commons/compress/archivers/c/f;

    move-result-object v0

    return-object v0
.end method

.method protected final r()Lorg/apache/commons/compress/archivers/c/f;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->w:Lorg/apache/commons/compress/archivers/c/f;

    return-object v0
.end method

.method public read([BII)I
    .locals 6

    const/4 v3, 0x0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/c/a;->t:J

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/c/a;->s:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    int-to-long v0, p3

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/c/a;->t:J

    add-long/2addr v0, v4

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/c/a;->s:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/c/a;->s:J

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/c/a;->t:J

    sub-long/2addr v0, v4

    long-to-int p3, v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->u:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->u:[B

    array-length v0, v0

    if-le p3, v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->u:[B

    array-length v0, v0

    :goto_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->u:[B

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->u:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->u:[B

    :goto_2
    add-int v2, v3, v0

    sub-int v1, p3, v0

    add-int/2addr p2, v0

    :goto_3
    if-lez v1, :cond_6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/a;->v:Lorg/apache/commons/compress/archivers/c/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/c/c;->aj()[B

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected EOF with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes unread. Occured at byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/a;->getBytesRead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, p3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/a;->u:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v2, v1, [B

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/c/a;->u:[B

    invoke-static {v4, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/c/a;->u:[B

    goto :goto_2

    :cond_4
    array-length v0, v4

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/c/a;->z(I)V

    array-length v0, v4

    if-le v0, v1, :cond_5

    invoke-static {v4, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v5, v0, v1

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/apache/commons/compress/archivers/c/a;->u:[B

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/c/a;->u:[B

    sub-int/2addr v0, v1

    invoke-static {v4, v1, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_4
    add-int/2addr v2, v0

    sub-int/2addr v1, v0

    add-int/2addr p2, v0

    goto :goto_3

    :cond_5
    invoke-static {v4, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_6
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/c/a;->t:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c/a;->t:J

    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v2, v3

    move v1, p3

    goto :goto_3
.end method

.method public declared-synchronized reset()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected final s()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/a;->r:Z

    return v0
.end method

.method public skip(J)J
    .locals 5

    const/16 v0, 0x2000

    new-array v4, v0, [B

    move-wide v2, p1

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    array-length v0, v4

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    array-length v0, v4

    int-to-long v0, v0

    :goto_1
    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1, v0}, Lorg/apache/commons/compress/archivers/c/a;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    sub-long v0, p1, v2

    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_1

    :cond_2
    int-to-long v0, v0

    sub-long/2addr v2, v0

    goto :goto_0
.end method
