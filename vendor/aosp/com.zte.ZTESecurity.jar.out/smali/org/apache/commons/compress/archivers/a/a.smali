.class public Lorg/apache/commons/compress/archivers/a/a;
.super Lorg/apache/commons/compress/archivers/d;

# interfaces
.implements Lorg/apache/commons/compress/archivers/a/d;


# instance fields
.field private a:Lorg/apache/commons/compress/archivers/a/b;

.field private b:Z

.field private final c:S

.field private closed:Z

.field private crc:J

.field private final d:Ljava/util/HashMap;

.field private e:J

.field private final f:I

.field private g:J

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/a/a;-><init>(Ljava/io/OutputStream;S)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;S)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/a/a;-><init>(Ljava/io/OutputStream;SI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;SI)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/a;->closed:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->d:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->crc:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/a/a;->out:Ljava/io/OutputStream;

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iput-short p2, p0, Lorg/apache/commons/compress/archivers/a/a;->c:S

    iput p3, p0, Lorg/apache/commons/compress/archivers/a/a;->f:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(I)V
    .locals 2

    if-lez p1, :cond_0

    new-array v0, p1, [B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/a/a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/a/a;->z(I)V

    :cond_0
    return-void
.end method

.method private a(JII)V
    .locals 7

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x10

    if-ne p4, v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt v0, p3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int v0, p3, v0

    int-to-long v3, v0

    move v0, v1

    :goto_1
    int-to-long v5, v0

    cmp-long v5, v5, v3

    if-gez v5, :cond_2

    const-string v5, "0"

    invoke-virtual {v2, v1, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    if-ne p4, v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lorg/apache/commons/compress/a/d;->y(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/a/a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/a/a;->z(I)V

    return-void

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a(JIZ)V
    .locals 2

    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/a/e;->b(JIZ)[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/a/a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/a/a;->z(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lorg/apache/commons/compress/a/d;->y(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/a/a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/a/a;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/a/a;->z(I)V

    return-void
.end method

.method private a(Lorg/apache/commons/compress/archivers/a/b;)V
    .locals 4

    const/4 v2, 0x6

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getFormat()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->out:Ljava/io/OutputStream;

    const-string v1, "070701"

    invoke-static {v1}, Lorg/apache/commons/compress/a/d;->y(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/a/a;->z(I)V

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/a/a;->b(Lorg/apache/commons/compress/archivers/a/b;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->out:Ljava/io/OutputStream;

    const-string v1, "070702"

    invoke-static {v1}, Lorg/apache/commons/compress/a/d;->y(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/a/a;->z(I)V

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/a/a;->b(Lorg/apache/commons/compress/archivers/a/b;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->out:Ljava/io/OutputStream;

    const-string v1, "070707"

    invoke-static {v1}, Lorg/apache/commons/compress/a/d;->y(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/a/a;->z(I)V

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/a/a;->c(Lorg/apache/commons/compress/archivers/a/b;)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    const-wide/16 v1, 0x71c7

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/apache/commons/compress/archivers/a/a;->a(JIZ)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/a/a;->a(Lorg/apache/commons/compress/archivers/a/b;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private a(Lorg/apache/commons/compress/archivers/a/b;Z)V
    .locals 8

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->ba()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->aS()J

    move-result-wide v0

    const-string v4, "TRAILER!!!"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    const/4 v4, 0x2

    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/a/a;->a(JIZ)V

    const/4 v0, 0x2

    invoke-direct {p0, v2, v3, v0, p2}, Lorg/apache/commons/compress/archivers/a/a;->a(JIZ)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->bb()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/a/a;->a(JIZ)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->bh()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/a/a;->a(JIZ)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->aV()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/a/a;->a(JIZ)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->bc()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/a/a;->a(JIZ)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->bd()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/a/a;->a(JIZ)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getTime()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/a/a;->a(JIZ)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/a/a;->a(JIZ)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getSize()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/a/a;->a(JIZ)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->aY()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/a/a;->a(I)V

    return-void

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    const-wide/32 v2, 0xffff

    and-long/2addr v2, v0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    const/16 v4, 0x10

    shr-long/2addr v0, v4

    const-wide/32 v4, 0xffff

    and-long/2addr v0, v4

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    const-wide/32 v6, 0x10000

    mul-long/2addr v6, v0

    add-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    goto/16 :goto_0
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/a;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private b(Lorg/apache/commons/compress/archivers/a/b;)V
    .locals 14

    const-wide/16 v12, 0x1

    const-wide/16 v10, -0x1

    const-wide/16 v0, 0x0

    const/16 v9, 0x10

    const/16 v8, 0x8

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->ba()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->aU()J

    move-result-wide v2

    const-string v6, "TRAILER!!!"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-wide v2, v0

    :goto_0
    invoke-direct {p0, v2, v3, v8, v9}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->bb()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v8, v9}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->bh()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v8, v9}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->aV()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v8, v9}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->bc()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v8, v9}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v8, v9}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getSize()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v8, v9}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->aT()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v8, v9}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-direct {p0, v0, v1, v8, v9}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->be()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v8, v9}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->bf()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v8, v9}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v8, v9}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->aR()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v8, v9}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->aY()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/a/a;->a(I)V

    return-void

    :cond_0
    cmp-long v6, v4, v0

    if-nez v6, :cond_1

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    and-long v2, v0, v10

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    add-long v4, v0, v12

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    and-long/2addr v0, v10

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    const-wide v6, 0x100000000L

    mul-long/2addr v6, v2

    add-long/2addr v6, v4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v0, v12

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    move-wide v0, v2

    move-wide v2, v4

    goto/16 :goto_0
.end method

.method private c(Lorg/apache/commons/compress/archivers/a/b;)V
    .locals 13

    const-wide/16 v11, 0x1

    const/16 v10, 0xb

    const-wide/16 v0, 0x0

    const/4 v9, 0x6

    const/16 v8, 0x8

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->ba()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->aS()J

    move-result-wide v2

    const-string v6, "TRAILER!!!"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-wide v2, v0

    :goto_0
    invoke-direct {p0, v0, v1, v9, v8}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-direct {p0, v2, v3, v9, v8}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->bb()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v9, v8}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->bh()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v9, v8}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->aV()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v9, v8}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->bc()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v9, v8}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->bd()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v9, v8}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v10, v8}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v9, v8}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v10, v8}, Lorg/apache/commons/compress/archivers/a/a;->a(JII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/a/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    cmp-long v6, v4, v0

    if-nez v6, :cond_1

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    const-wide/32 v2, 0x3ffff

    and-long/2addr v2, v0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    add-long v4, v0, v11

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    const/16 v4, 0x12

    shr-long/2addr v0, v4

    const-wide/32 v4, 0x3ffff

    and-long/2addr v0, v4

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    const-wide/32 v6, 0x40000

    mul-long/2addr v6, v2

    add-long/2addr v6, v4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v0, v11

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->g:J

    move-wide v0, v2

    move-wide v2, v4

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/c;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/a;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/a/b;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/a/b;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lorg/apache/commons/compress/archivers/c;)V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/a;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/a/b;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/a;->b()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/a/a;->c()V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/a/b;->setTime(J)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getFormat()S

    move-result v0

    iget-short v1, p0, Lorg/apache/commons/compress/archivers/a/a;->c:S

    if-eq v0, v1, :cond_3

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not match existing format: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v2, p0, Lorg/apache/commons/compress/archivers/a/a;->c:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/a/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/a/a;->a(Lorg/apache/commons/compress/archivers/a/b;)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->e:J

    return-void
.end method

.method public c()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/a;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/a;->b()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Trying to close non-existent entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/a/b;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/a/a;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid entry size (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/a/b;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/a/a;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/a/b;->aZ()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/a/a;->a(I)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/a/b;->getFormat()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->crc:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/a/b;->aR()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "CRC Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/a/a;->crc:J

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/a/a;->e:J

    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/a/a;->finish()V

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/a;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/a;->closed:Z

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 4

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/a;->b()V

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/a;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive contains unclosed entries."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/a/b;

    iget-short v1, p0, Lorg/apache/commons/compress/archivers/a/a;->c:S

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/a/b;-><init>(S)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    const-string v1, "TRAILER!!!"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/a/b;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/a/b;->k(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/a/a;->a(Lorg/apache/commons/compress/archivers/a/b;)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/a/a;->c()V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/a/a;->getBytesWritten()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/a/a;->f:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/apache/commons/compress/archivers/a/a;->f:I

    sub-int v0, v1, v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/a/a;->a(I)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/a/a;->b:Z

    return-void
.end method

.method public write([BII)V
    .locals 5

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/a;->b()V

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "no current CPIO entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->e:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/a/b;->getSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "attempt to write past end of STORED entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->e:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/a;->e:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/a;->a:Lorg/apache/commons/compress/archivers/a/b;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/a/b;->getFormat()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_5

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/a/a;->crc:J

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/a/a;->crc:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/a/a;->z(I)V

    goto :goto_0
.end method
