.class public Lcom/zte/privacy/Q;
.super Ljava/io/ByteArrayInputStream;

# interfaces
.implements Lcom/zte/privacy/o;


# instance fields
.field private db:Z

.field private dc:Ljava/util/Stack;


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/Q;->dc:Ljava/util/Stack;

    iput-boolean p4, p0, Lcom/zte/privacy/Q;->db:Z

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/Q;->dc:Ljava/util/Stack;

    iput-boolean p2, p0, Lcom/zte/privacy/Q;->db:Z

    return-void
.end method

.method public static i([BII)Lcom/zte/privacy/Q;
    .locals 2

    new-instance v0, Lcom/zte/privacy/Q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/zte/privacy/Q;-><init>([BIIZ)V

    return-object v0
.end method

.method public static j([BII)Lcom/zte/privacy/Q;
    .locals 2

    new-instance v0, Lcom/zte/privacy/Q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/zte/privacy/Q;-><init>([BIIZ)V

    return-object v0
.end method

.method public static k([B)Lcom/zte/privacy/Q;
    .locals 2

    new-instance v0, Lcom/zte/privacy/Q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/Q;-><init>([BZ)V

    return-object v0
.end method

.method public static l([B)Lcom/zte/privacy/Q;
    .locals 2

    new-instance v0, Lcom/zte/privacy/Q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/Q;-><init>([BZ)V

    return-object v0
.end method


# virtual methods
.method public Q()V
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/Q;->dc:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    return-void
.end method

.method public W()I
    .locals 1

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public X()I
    .locals 1

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->ab()I

    move-result v0

    return v0
.end method

.method public Y()J
    .locals 10

    const-wide/16 v8, 0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v2

    :cond_0
    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v5

    and-int/lit8 v6, v5, 0x7f

    int-to-long v6, v6

    shl-long/2addr v6, v4

    or-long/2addr v0, v6

    add-int/lit8 v4, v4, 0x7

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_0

    add-int/lit8 v5, v4, -0x1

    shl-long v5, v8, v5

    and-long/2addr v5, v0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    shl-long v2, v8, v4

    sub-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public Z()I
    .locals 1

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->ad()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public aa()I
    .locals 2

    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    return v0
.end method

.method public ab()I
    .locals 2

    iget-boolean v0, p0, Lcom/zte/privacy/Q;->db:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public ac()J
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v0

    :goto_0
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, v1

    int-to-long v4, v0

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, v1

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public ad()I
    .locals 2

    iget-boolean v0, p0, Lcom/zte/privacy/Q;->db:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->aa()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->mark:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public h(I)V
    .locals 1

    iget v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    add-int/2addr v0, p1

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    return-void
.end method

.method public push()V
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/Q;->dc:Ljava/util/Stack;

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public r(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/privacy/Q;->push()V

    invoke-virtual {p0, p1}, Lcom/zte/privacy/Q;->h(I)V

    return-void
.end method

.method public s(I)[B
    .locals 2

    new-array v0, p1, [B

    :try_start_0
    invoke-super {p0, v0}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public skip(I)V
    .locals 2

    int-to-long v0, p1

    invoke-super {p0, v0, v1}, Ljava/io/ByteArrayInputStream;->skip(J)J

    return-void
.end method
