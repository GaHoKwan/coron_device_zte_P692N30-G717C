.class public Lorg/apache/commons/compress/archivers/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/a/d;
.implements Lorg/apache/commons/compress/archivers/c;


# instance fields
.field private final gY:S

.field private final gZ:I

.field private final ha:I

.field private hb:J

.field private hc:J

.field private hd:J

.field private he:J

.field private hf:J

.field private hg:J

.field private hh:J

.field private hi:J

.field private hj:J

.field private hk:J

.field private hl:J

.field private hm:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/archivers/a/b;-><init>(SLjava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/a/b;-><init>(SLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/a/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/compress/archivers/a/b;->setSize(J)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 4

    const/16 v3, 0x6e

    const/4 v2, 0x4

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hb:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hc:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hd:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->he:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hf:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hg:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hh:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hi:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hj:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hk:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hl:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hm:J

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown header type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iput v3, p0, Lorg/apache/commons/compress/archivers/a/b;->gZ:I

    iput v2, p0, Lorg/apache/commons/compress/archivers/a/b;->ha:I

    :goto_0
    iput-short p1, p0, Lorg/apache/commons/compress/archivers/a/b;->gY:S

    return-void

    :pswitch_2
    iput v3, p0, Lorg/apache/commons/compress/archivers/a/b;->gZ:I

    iput v2, p0, Lorg/apache/commons/compress/archivers/a/b;->ha:I

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x4c

    iput v0, p0, Lorg/apache/commons/compress/archivers/a/b;->gZ:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/a/b;->ha:I

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x1a

    iput v0, p0, Lorg/apache/commons/compress/archivers/a/b;->gZ:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/archivers/a/b;->ha:I

    goto :goto_0

    nop

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

.method public constructor <init>(SLjava/io/File;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    invoke-direct {p0, p1, p3, v0, v1}, Lorg/apache/commons/compress/archivers/a/b;-><init>(SLjava/lang/String;J)V

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x4000

    or-long/2addr v0, v2

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/a/b;->j(J)V

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/a/b;->setTime(J)V

    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/32 v0, 0x8000

    or-long/2addr v0, v2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot determine type of file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/a/b;-><init>(S)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/a/b;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/a/b;-><init>(SLjava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/compress/archivers/a/b;->setSize(J)V

    return-void
.end method

.method private aP()V
    .locals 1

    iget-short v0, p0, Lorg/apache/commons/compress/archivers/a/b;->gY:S

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private aQ()V
    .locals 1

    iget-short v0, p0, Lorg/apache/commons/compress/archivers/a/b;->gY:S

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public aR()J
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aP()V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hb:J

    return-wide v0
.end method

.method public aS()J
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aQ()V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hg:J

    return-wide v0
.end method

.method public aT()J
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aP()V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hf:J

    return-wide v0
.end method

.method public aU()J
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aP()V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hg:J

    return-wide v0
.end method

.method public aV()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hd:J

    return-wide v0
.end method

.method public aW()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/a/b;->gZ:I

    return v0
.end method

.method public aX()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/a/b;->ha:I

    return v0
.end method

.method public aY()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/commons/compress/archivers/a/b;->ha:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/a/b;->gZ:I

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/a/b;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/commons/compress/archivers/a/b;->ha:I

    rem-int/2addr v1, v2

    if-lez v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/archivers/a/b;->ha:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public aZ()I
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/commons/compress/archivers/a/b;->ha:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/a/b;->hc:J

    iget v3, p0, Lorg/apache/commons/compress/archivers/a/b;->ha:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    if-lez v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/archivers/a/b;->ha:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public ba()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->he:J

    return-wide v0
.end method

.method public bb()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hh:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "TRAILER!!!"

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/a/b;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x8000

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hh:J

    goto :goto_0
.end method

.method public bc()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/a/b;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    int-to-long v0, v0

    :goto_1
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hj:J

    goto :goto_1
.end method

.method public bd()J
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aQ()V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hl:J

    return-wide v0
.end method

.method public be()J
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aP()V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hk:J

    return-wide v0
.end method

.method public bf()J
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aP()V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hl:J

    return-wide v0
.end method

.method public bg()Ljava/util/Date;
    .locals 5

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/a/b;->getTime()J

    move-result-wide v3

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public bh()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hm:J

    return-wide v0
.end method

.method public bi()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hh:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x6000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bj()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hh:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x2000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bk()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hh:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/32 v2, 0x9000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bl()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hh:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bm()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hh:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bn()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hh:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/32 v2, 0xc000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bo()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hh:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/32 v2, 0xa000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aP()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->hb:J

    return-void
.end method

.method public e(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aQ()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->hg:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/apache/commons/compress/archivers/a/b;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/a/b;->name:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/a/b;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/a/b;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/compress/archivers/a/b;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aP()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->hf:J

    return-void
.end method

.method public g(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aP()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->hg:J

    return-void
.end method

.method public getFormat()S
    .locals 1

    iget-short v0, p0, Lorg/apache/commons/compress/archivers/a/b;->gY:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/b;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hc:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hi:J

    return-wide v0
.end method

.method public h(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->hd:J

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/b;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/a/b;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->he:J

    return-void
.end method

.method public isDirectory()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/a/b;->hh:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(J)V
    .locals 5

    const-wide/32 v0, 0xf000

    and-long/2addr v0, p1

    long-to-int v2, v0

    sparse-switch v2, :sswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown mode. Full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Masked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->hh:J

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_0
        0x6000 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x9000 -> :sswitch_0
        0xa000 -> :sswitch_0
        0xc000 -> :sswitch_0
    .end sparse-switch
.end method

.method public k(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->hj:J

    return-void
.end method

.method public l(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aQ()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->hl:J

    return-void
.end method

.method public m(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aP()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->hk:J

    return-void
.end method

.method public n(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/a/b;->aP()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->hl:J

    return-void
.end method

.method public o(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->hm:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/a/b;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid entry size <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->hc:J

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/a/b;->hi:J

    return-void
.end method
