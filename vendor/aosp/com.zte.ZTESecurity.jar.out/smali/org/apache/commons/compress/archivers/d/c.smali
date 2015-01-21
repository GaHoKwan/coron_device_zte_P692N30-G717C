.class public Lorg/apache/commons/compress/archivers/d/c;
.super Lorg/apache/commons/compress/archivers/d;


# static fields
.field public static final lq:I = 0x0

.field public static final pt:I = 0x1


# instance fields
.field private b:Z

.field private lD:I

.field private lF:Z

.field private final out:Ljava/io/OutputStream;

.field private pu:Lorg/apache/commons/compress/archivers/d/a;

.field private t:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/d;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/d/c;->t:J

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/d/c;->lF:Z

    iput v2, p0, Lorg/apache/commons/compress/archivers/d/c;->lD:I

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/d/c;->b:Z

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/d/c;->out:Ljava/io/OutputStream;

    return-void
.end method

.method private S(Ljava/lang/String;)J
    .locals 2

    const-string v0, "ascii"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/d/c;->write([B)V

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private a(JJC)J
    .locals 5

    sub-long v1, p3, p1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    int-to-long v3, v0

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    invoke-virtual {p0, p5}, Lorg/apache/commons/compress/archivers/d/c;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide p3
.end method

.method private a(Lorg/apache/commons/compress/archivers/d/a;)J
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x6

    const/4 v0, 0x1

    const/4 v7, 0x0

    const/16 v5, 0x20

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/d/a;->getName()Ljava/lang/String;

    move-result-object v8

    iget v3, p0, Lorg/apache/commons/compress/archivers/d/c;->lD:I

    if-nez v3, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filename too long, > 16 chars: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v3, p0, Lorg/apache/commons/compress/archivers/d/c;->lD:I

    if-ne v0, v3, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-gt v3, v4, :cond_1

    const-string v3, " "

    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#1/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/d/c;->S(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    move v6, v0

    :goto_0
    const-wide/16 v3, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/d/c;->a(JJC)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/d/a;->getLastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-le v3, v4, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "modified too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0, v8}, Lorg/apache/commons/compress/archivers/d/c;->S(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    move v6, v7

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/d/c;->S(Ljava/lang/String;)J

    move-result-wide v2

    add-long v1, v0, v2

    const-wide/16 v3, 0x1c

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/d/c;->a(JJC)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/d/a;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "userid too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/d/c;->S(Ljava/lang/String;)J

    move-result-wide v2

    add-long v1, v0, v2

    const-wide/16 v3, 0x22

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/d/c;->a(JJC)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/d/a;->getGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "groupid too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/d/c;->S(Ljava/lang/String;)J

    move-result-wide v2

    add-long v1, v0, v2

    const-wide/16 v3, 0x28

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/d/c;->a(JJC)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/d/a;->getMode()I

    move-result v3

    invoke-static {v3, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v10, :cond_6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "filemode too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/d/c;->S(Ljava/lang/String;)J

    move-result-wide v2

    add-long v1, v0, v2

    const-wide/16 v3, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/d/c;->a(JJC)J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/d/a;->getLength()J

    move-result-wide v2

    if-eqz v6, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    :cond_7
    int-to-long v9, v7

    add-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v1, "size too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/d/c;->S(Ljava/lang/String;)J

    move-result-wide v2

    add-long v1, v0, v2

    const-wide/16 v3, 0x3a

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/d/c;->a(JJC)J

    move-result-wide v0

    const-string v2, "`\n"

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/d/c;->S(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    if-eqz v6, :cond_9

    invoke-direct {p0, v8}, Lorg/apache/commons/compress/archivers/d/c;->S(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_9
    return-wide v0
.end method

.method private dn()J
    .locals 2

    const-string v0, "!<arch>\n"

    invoke-static {v0}, Lorg/apache/commons/compress/a/d;->y(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/d/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public Q(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/d/c;->lD:I

    return-void
.end method

.method public a(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/c;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/c;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/d/a;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/d/a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lorg/apache/commons/compress/archivers/c;)V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/c;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/d/a;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/c;->pu:Lorg/apache/commons/compress/archivers/d/a;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/d/c;->dn()J

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/d/c;->pu:Lorg/apache/commons/compress/archivers/d/a;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/d/c;->a(Lorg/apache/commons/compress/archivers/d/a;)J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/d/c;->t:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/c;->lF:Z

    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/c;->pu:Lorg/apache/commons/compress/archivers/d/a;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/d/a;->getLength()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/d/c;->t:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length does not match entry ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/d/c;->pu:Lorg/apache/commons/compress/archivers/d/a;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/d/a;->getLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/d/c;->t:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/c;->lF:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/d/c;->c()V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/c;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/c;->pu:Lorg/apache/commons/compress/archivers/d/a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/c;->lF:Z

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No current entry to close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/d/c;->t:J

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/c;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/c;->lF:Z

    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/c;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/d/c;->finish()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/d/c;->pu:Lorg/apache/commons/compress/archivers/d/a;

    return-void
.end method

.method public finish()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/c;->lF:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive contains unclosed entries."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/c;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/c;->b:Z

    return-void
.end method

.method public write([BII)V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/d/c;->z(I)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/d/c;->t:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/d/c;->t:J

    return-void
.end method
