.class public Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/c;


# instance fields
.field private X:I

.field private gid:I

.field private hi:J

.field private mode:I

.field private nF:Lorg/apache/commons/compress/archivers/dump/e;

.field private name:Ljava/lang/String;

.field private offset:J

.field private rL:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field private rM:Ljava/util/Set;

.field private rN:J

.field private rO:Lorg/apache/commons/compress/archivers/dump/a;

.field private rP:Ljava/lang/String;

.field private rQ:Ljava/lang/String;

.field private rR:I

.field private rS:J

.field private rT:I

.field private rU:Z

.field private size:J

.field private uid:I

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hv:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rL:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rM:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->nF:Lorg/apache/commons/compress/archivers/dump/e;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/a;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/a;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hv:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rL:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rM:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->nF:Lorg/apache/commons/compress/archivers/dump/e;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/a;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/a;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setName(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rP:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hv:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rL:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rM:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->nF:Lorg/apache/commons/compress/archivers/dump/e;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/a;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/a;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    invoke-virtual {p0, p4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->a(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setName(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rP:Ljava/lang/String;

    iput p3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->X:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->offset:J

    return-void
.end method

.method static C([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
    .locals 11

    const/16 v10, 0x200

    const-wide/16 v8, 0x3e8

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;-><init>()V

    iget-object v3, v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    invoke-static {p0, v1}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->w(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/apache/commons/compress/archivers/dump/a;->a(Lorg/apache/commons/compress/archivers/dump/a;Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    const/16 v0, 0xc

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    invoke-static {v3, v0}, Lorg/apache/commons/compress/archivers/dump/a;->a(Lorg/apache/commons/compress/archivers/dump/a;I)I

    const/16 v0, 0x14

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    invoke-static {v3, v0}, Lorg/apache/commons/compress/archivers/dump/a;->b(Lorg/apache/commons/compress/archivers/dump/a;I)I

    move-result v0

    iput v0, v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->X:I

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->k([BI)I

    move-result v0

    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->E(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->a(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setMode(I)V

    const/16 v0, 0x22

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->k([BI)I

    move-result v0

    iput v0, v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rR:I

    const/16 v0, 0x28

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->i([BI)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setSize(J)V

    const/16 v0, 0x30

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v4, v8

    const/16 v0, 0x34

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v4, v6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->g(Ljava/util/Date;)V

    const/16 v0, 0x38

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v4, v8

    const/16 v0, 0x3c

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v4, v6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f(Ljava/util/Date;)V

    const/16 v0, 0x40

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v4, v8

    const/16 v0, 0x44

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rS:J

    const/16 v0, 0x8c

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    iput v0, v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rT:I

    const/16 v0, 0x90

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setUserId(I)V

    const/16 v0, 0x94

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->b(I)V

    const/16 v0, 0xa0

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    invoke-static {v3, v0}, Lorg/apache/commons/compress/archivers/dump/a;->c(Lorg/apache/commons/compress/archivers/dump/a;I)I

    invoke-static {v3, v1}, Lorg/apache/commons/compress/archivers/dump/a;->d(Lorg/apache/commons/compress/archivers/dump/a;I)I

    move v0, v1

    :goto_0
    if-ge v0, v10, :cond_1

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/dump/a;->a(Lorg/apache/commons/compress/archivers/dump/a;)I

    move-result v4

    if-ge v0, v4, :cond_1

    add-int/lit16 v4, v0, 0xa4

    aget-byte v4, p0, v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/dump/a;->b(Lorg/apache/commons/compress/archivers/dump/a;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa4

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/dump/a;->c(Lorg/apache/commons/compress/archivers/dump/a;)[B

    move-result-object v4

    invoke-static {p0, v0, v4, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/dump/a;->getVolume()I

    move-result v0

    iput v0, v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->volume:I

    return-object v2
.end method


# virtual methods
.method protected U(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rP:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rL:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    return-void
.end method

.method public ae(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rR:I

    return-void
.end method

.method public af(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rT:I

    return-void
.end method

.method public ag(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/dump/a;->g(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ap()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->offset:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->gid:I

    return-void
.end method

.method public bg()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->hi:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public bn()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rL:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->ho:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rQ:Ljava/lang/String;

    return-object v0
.end method

.method public dB()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rL:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->ht:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dC()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rL:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hr:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dD()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rL:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hu:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dE()Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rL:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    return-object v0
.end method

.method public dF()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rM:Ljava/util/Set;

    return-object v0
.end method

.method dG()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->size:J

    return-wide v0
.end method

.method public dH()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rN:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public du()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rR:I

    return v0
.end method

.method public dv()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rS:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public dw()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rU:Z

    return v0
.end method

.method public dx()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/a;->t()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public dy()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/a;->getCount()I

    move-result v0

    return v0
.end method

.method public dz()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/a;->v()I

    move-result v0

    return v0
.end method

.method public e(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rS:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

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
    check-cast p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    if-nez v2, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->X:I

    iget v3, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->X:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->nF:Lorg/apache/commons/compress/archivers/dump/e;

    if-nez v2, :cond_7

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->nF:Lorg/apache/commons/compress/archivers/dump/e;

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->nF:Lorg/apache/commons/compress/archivers/dump/e;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->nF:Lorg/apache/commons/compress/archivers/dump/e;

    iget-object v3, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->nF:Lorg/apache/commons/compress/archivers/dump/e;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/dump/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public f(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->hi:J

    return-void
.end method

.method public g(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rN:J

    return-void
.end method

.method public getGeneration()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rT:I

    return v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->gid:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rP:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->size:J

    goto :goto_0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->uid:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->volume:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->X:I

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rL:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hs:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFile()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rL:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hq:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rU:Z

    return-void
.end method

.method public setMode(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xfff

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->mode:I

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->p(I)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rM:Ljava/util/Set;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rQ:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "./"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->size:J

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->uid:I

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->volume:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/a;->u()I

    move-result v0

    return v0
.end method

.method update([B)V
    .locals 4

    const/16 v3, 0x200

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    const/16 v2, 0x10

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/dump/a;->a(Lorg/apache/commons/compress/archivers/dump/a;I)I

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    const/16 v2, 0xa0

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/dump/a;->c(Lorg/apache/commons/compress/archivers/dump/a;I)I

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/dump/a;->d(Lorg/apache/commons/compress/archivers/dump/a;I)I

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/dump/a;->a(Lorg/apache/commons/compress/archivers/dump/a;)I

    move-result v2

    if-ge v0, v2, :cond_1

    add-int/lit16 v2, v0, 0xa4

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/dump/a;->b(Lorg/apache/commons/compress/archivers/dump/a;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa4

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->rO:Lorg/apache/commons/compress/archivers/dump/a;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/dump/a;->c(Lorg/apache/commons/compress/archivers/dump/a;)[B

    move-result-object v2

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public w(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->offset:J

    return-void
.end method
