.class public Lorg/apache/commons/compress/archivers/dump/e;
.super Ljava/lang/Object;


# instance fields
.field private flags:I

.field private hostname:Ljava/lang/String;

.field private kH:J

.field private kI:J

.field private kJ:Ljava/lang/String;

.field private kK:Ljava/lang/String;

.field private kL:I

.field private kM:I

.field private label:Ljava/lang/String;

.field private level:I

.field private volume:I


# direct methods
.method constructor <init>([B)V
    .locals 6

    const-wide/16 v4, 0x3e8

    const/16 v3, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->kH:J

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->kI:J

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->volume:I

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x2a4

    const/16 v2, 0x10

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->label:Ljava/lang/String;

    const/16 v0, 0x2b4

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->level:I

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x2b8

    invoke-direct {v0, p1, v1, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->kJ:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x2f8

    invoke-direct {v0, p1, v1, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->kK:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x338

    invoke-direct {v0, p1, v1, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->hostname:Ljava/lang/String;

    const/16 v0, 0x378

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->flags:I

    const/16 v0, 0x37c

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->kL:I

    const/16 v0, 0x380

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->kM:I

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/e;->label:Ljava/lang/String;

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/e;->kJ:Ljava/lang/String;

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/e;->kK:Ljava/lang/String;

    return-void
.end method

.method public N(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/e;->kL:I

    return-void
.end method

.method public O(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/e;->kM:I

    return-void
.end method

.method public b(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->kH:J

    return-void
.end method

.method public c(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->kI:J

    return-void
.end method

.method public ch()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/e;->kH:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public ci()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/e;->kI:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public cj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->kJ:Ljava/lang/String;

    return-object v0
.end method

.method public ck()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->kK:Ljava/lang/String;

    return-object v0
.end method

.method public cl()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->kL:I

    return v0
.end method

.method public cm()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->kM:I

    return v0
.end method

.method public cn()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/e;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public co()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cp()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->flags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cq()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->flags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cr()Z
    .locals 2

    const v1, 0x8000

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/apache/commons/compress/archivers/dump/e;

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/e;->kH:J

    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/dump/e;->kH:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/e;->getHostname()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/e;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/e;->getHostname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/e;->ck()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/e;->ck()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/e;->ck()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->flags:I

    return v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->level:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->volume:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    const/16 v0, 0x11

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/e;->label:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    int-to-long v0, v0

    const-wide/16 v2, 0x1f

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/e;->kH:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/e;->hostname:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x11

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/e;->kK:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/e;->kK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x11

    :cond_2
    return v0
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/e;->flags:I

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/e;->hostname:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/e;->level:I

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/e;->volume:I

    return-void
.end method
